package com.springhibernate.integration.web.controllers;

import com.springhibernate.integration.model.Category;
import com.springhibernate.integration.model.PriceComparison;
import com.springhibernate.integration.model.Product;
import com.springhibernate.integration.repository.CategoryBase;
import com.springhibernate.integration.repository.ProductBase;
import com.springhibernate.integration.tennisParser.MenuReader;
import com.springhibernate.integration.tennisParser.RacquetDetailReader;
import com.springhibernate.integration.tennisParser.RacquetReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * This annotation makes it a Spring MVC controller.
 * No need to extend any abstract controller like old Spring way
 */
@Controller
/**
 * Spring MVC 3 supports RESTful URL's out of the box.
 * Every request on 'integration' resource will be handled by this controller
 */
@RequestMapping("/tennis/*")
public class TennisController {
    private ProductBase productsRepository;
    private CategoryBase categoryRepository;
    private RacquetDetailReader racquetDetail;
    private RacquetReader racquetReader;
    private MenuReader menuReader;

    @Autowired
    public TennisController(ProductBase productsRepository, RacquetDetailReader racquetDetail, RacquetReader racquetReader, MenuReader menuReader, CategoryBase categoryRepository) {
        this.productsRepository = productsRepository;
        this.racquetDetail = racquetDetail;
        this.racquetReader = racquetReader;
        this.menuReader = menuReader;
        this.categoryRepository = categoryRepository;
    }

    // TODO: Delete this method
    @RequestMapping(value = "tennis", method = RequestMethod.GET)
    public ModelAndView getProducts() {
        Product tmp = racquetDetail.parseRacquet("http://www.tennisexpress.com/wilson-K-Factor-[K]Blade-98-Tennis-Racquets-9049");

        productsRepository.addProduct(tmp);

        ModelAndView modelAndView = new ModelAndView("tennis");
        modelAndView.addObject("product", tmp);
        return modelAndView;
    }

    @RequestMapping(value = "viewAll", method = RequestMethod.GET)
    public ModelAndView getAllProducts() {
        ModelAndView modelAndView = new ModelAndView("allProducts");
        modelAndView.addObject("products", productsRepository.getProducts());
        return modelAndView;
    }

    @RequestMapping(value = "template", method = RequestMethod.GET)
    public ModelAndView getTemplate() {
        List<Category> categories = categoryRepository.getCategories();
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("categories", categories);

        //hardcode specials to display Avery
        modelAndView.addObject("specials", productsRepository.getProductsByCategory(new Long(1)));

        //link top ones to solinco
        modelAndView.addObject("topNav", productsRepository.getProductsByCategory(new Long(13)));

        //link featured to boris becker
        modelAndView.addObject("featured", productsRepository.getProductsByCategory(new Long(3)));
        return modelAndView;
    }

    @RequestMapping(value = "viewAllRacquets", method = RequestMethod.GET)
    public ModelAndView getAllRaquets() {
        for (String category : menuReader.getAllCategories("http://www.tennisexpress.com/category.cfm/tennis/tennis-racquets")) {
            List<String> links = racquetReader.getAllRacquets(category);

            for (String link : links) {
                Product tmp = racquetDetail.parseRacquet(link);
                productsRepository.addProduct(tmp);
            }
        }


        ModelAndView modelAndView = new ModelAndView("allProducts");
        modelAndView.addObject("products", productsRepository.getProducts());
        return modelAndView;
    }

    @RequestMapping(value = "viewCategory/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser1(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("category");
        modelAndView.addObject("products", productsRepository.getProductsByCategory(id));
        List<Category> categories = categoryRepository.getCategories();
        modelAndView.addObject("categories", categories);

        //hardcode specials to display Avery
        modelAndView.addObject("specials", productsRepository.getProductsByCategory(new Long(1)));

        return modelAndView;
    }

    @RequestMapping(value = "viewProduct/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser2(@PathVariable Long id) {
        List<Category> categories = categoryRepository.getCategories();
        ModelAndView modelAndView = new ModelAndView("item");
        modelAndView.addObject("categories", categories);

        Product product = productsRepository.getProduct(id);
        modelAndView.addObject("product", product);

        List<PriceComparison> tmpList = new ArrayList<PriceComparison>();
        tmpList.addAll(product.getPriceComparisons());
        PriceComparison parsedPrice = new PriceComparison();
        parsedPrice.setPrice(product.getPrice());
        parsedPrice.setProduct(product);
        parsedPrice.setUrl(product.getUrl());
        parsedPrice.setReseller("Tennis Express");

        Double avg = 0.0;
        for (PriceComparison priceComparison : tmpList) {
            avg += priceComparison.getPrice();
        }

        // should not be divide by zero since we added the original back in manually
        // TODO: Convert price on the product to a reference to a pricecomparison
        if (tmpList.size() > 0) {
            avg = avg / tmpList.size();
        }

        List<PriceComparison> finalPrices = new ArrayList<PriceComparison>();
        for (PriceComparison priceComparison : tmpList) {
            // +-5% from the mean
            if (priceComparison.getPrice() >= (avg * 0.96)) {
                finalPrices.add(priceComparison);
            }
        }

        finalPrices.add(parsedPrice);

        Collections.sort(finalPrices);
        Collections.sort(tmpList);


        modelAndView.addObject("originalPrices", tmpList);
        modelAndView.addObject("lowestPrices", finalPrices);

        return modelAndView;
    }

    @RequestMapping(value = "**", method = {RequestMethod.GET, RequestMethod.POST})
      public ModelAndView getSearch(@RequestParam("keyword") String keyword) {
        ModelAndView modelAndView = new ModelAndView("category");
        List<Category> categories = categoryRepository.getCategories();
        modelAndView.addObject("categories", categories);

        //hardcode specials to display Avery
        modelAndView.addObject("products", productsRepository.getProductsByName(keyword));

        //hardcode specials to display Avery
        modelAndView.addObject("specials", productsRepository.getProductsByCategory(new Long(1)));

        return modelAndView;
      }

}
