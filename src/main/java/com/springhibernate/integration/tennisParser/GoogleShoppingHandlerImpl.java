package com.springhibernate.integration.tennisParser;

import com.springhibernate.integration.model.PriceComparison;
import com.springhibernate.integration.model.Product;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 8/17/11
 * Time: 8:06 PM
 */
@Service
public class GoogleShoppingHandlerImpl implements GoogleShoppingHandler {
    public void init(Product product) {
        Document doc = null;
        try {
            doc = Jsoup.connect("https://www.googleapis.com/shopping/search/v1/public/products?country=US&q=" + product.getName().replace(' ', '+') +
                    "&key=AIzaSyCWBo90sx-A4Y4aZZhWfJSf1m2df88rsUI&alt=atom").timeout(12000).ignoreContentType(true).get();
            Elements products = doc.getElementsByTag("s:product");
            product.getPriceComparisons().clear();
            for (Element link : products) {
                if (!link.getElementsByTag("s:name").first().html().toLowerCase().contains("ebay")) {
                    PriceComparison priceComparison = new PriceComparison();
                    priceComparison.setPrice(Double.parseDouble(link.getElementsByTag("s:price").first().html().replace("$", "")));
                    priceComparison.setReseller(link.getElementsByTag("s:name").first().html());
                    priceComparison.setProduct(product);
                    priceComparison.setUrl(link.getElementsByTag("s:link").first().html());

                    product.getPriceComparisons().add(priceComparison);
                }
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
