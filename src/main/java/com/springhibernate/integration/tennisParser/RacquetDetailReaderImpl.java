package com.springhibernate.integration.tennisParser;

import com.springhibernate.integration.model.Image;
import com.springhibernate.integration.model.Product;
import com.springhibernate.integration.repository.CategoryBase;
import com.springhibernate.integration.repository.ProductBase;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 8/17/11
 * Time: 8:06 PM
 * To change this template use File | Settings | File Templates.
 */
@Service
public class RacquetDetailReaderImpl implements RacquetDetailReader {
    private ProductBase productsRepository;
    private CategoryBase categoriesRepository;
    private GoogleShoppingHandler googleShoppingHandler;

    @Autowired
    public void setGoogleShoppingHandler(GoogleShoppingHandler googleShoppingHandler) {
        this.googleShoppingHandler = googleShoppingHandler;
    }

    @Autowired
    public void setProductsRepository(ProductBase productsRepository) {
        this.productsRepository = productsRepository;
    }

    @Autowired
    public void setCategoriesRepository(CategoryBase categoriesRepository) {
        this.categoriesRepository = categoriesRepository;
    }

    public Product parseRacquet(String url) {
        Product product;
        Document doc;
        try {
            doc = Jsoup.connect(url).timeout(12000).get();
        } catch (IOException e) {
            System.out.println("Unable to process URL: " + url);
            e.printStackTrace();
            return null;
        }

        try {
            Element nameNode = doc.select("#itemName").first();
            String prodName = nameNode.childNode(nameNode.childNodes().size() - 1).toString().trim();

            product = productsRepository.findProductByName(prodName);
            if (product == null) {
                product = new Product();
            }

            product.setName(prodName);


            Element priceNode = doc.select(".itemPrice").first();
            product.setPrice(new Double(priceNode.html().split(" ")[0].replaceAll("[^\\d.]","")));

            product.getImages().clear();

            // default image
            Element imagesNode = doc.select("#MainImage").first();
            Image tmpImg = new Image();
            tmpImg.setUrl(imagesNode.attr("src"));
            tmpImg.setProduct(product);
            product.getImages().add(tmpImg);

            // other images
            imagesNode = doc.select("#altImageContainer").first();
            if (imagesNode != null) {
                for (Element element : imagesNode.select("img")) {
                    tmpImg = new Image();
                    tmpImg.setProduct(product);
                    tmpImg.setUrl(element.attr("src").replaceAll("/tiny", ""));
                    if (element.attr("src").contains("tiny")) {
                        tmpImg.setUrl_thumb(element.attr("src"));
                    }
                    product.getImages().add(tmpImg);
                }
            }

            Element category = doc.getElementsByAttributeValue("itemprop", "category").first();

//            Working for categories
//            com.springhibernate.integration.model.Category tmpCategory;
//            tmpCategory = categoriesRepository.findCategoryByName(category.attr("content"));
//            if (tmpCategory == null) {
//                tmpCategory = new com.springhibernate.integration.model.Category();
//                tmpCategory.setName(category.attr("content"));
//            }

            com.springhibernate.integration.model.Category tmpCategory;
            tmpCategory = categoriesRepository.findCategoryByName(doc.getElementsByAttributeValue("itemprop", "brand").first().html());
            if (tmpCategory == null) {
                tmpCategory = new com.springhibernate.integration.model.Category();
                tmpCategory.setName(doc.getElementsByAttributeValue("itemprop", "brand").first().html());
            }

            product.setBrand(doc.getElementsByAttributeValue("itemprop", "brand").first().html());

            product.setUrl(url);

            product.setCategory(tmpCategory);

            googleShoppingHandler.init(product);

            Element specsNode = doc.select(".productSpecs").first();
            product.setSpecs(specsNode.html());
            return product;
        } catch (Exception e) {
            System.out.println("Unable to process URL: " + url);
            e.printStackTrace();
        }
        return null;
    }
}
