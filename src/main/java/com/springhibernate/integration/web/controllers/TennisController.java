package com.springhibernate.integration.web.controllers;

import com.springhibernate.integration.model.Product;
import com.springhibernate.integration.repository.ProductBase;
import com.springhibernate.integration.tennisParser.MenuReader;
import com.springhibernate.integration.tennisParser.RacquetDetailReader;
import com.springhibernate.integration.tennisParser.RacquetReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
    private RacquetDetailReader racquetDetail;
    private RacquetReader racquetReader;
    private MenuReader menuReader;

    @Autowired
    public TennisController(ProductBase productsRepository, RacquetDetailReader racquetDetail, RacquetReader racquetReader, MenuReader menuReader) {
        this.productsRepository = productsRepository;
        this.racquetDetail = racquetDetail;
        this.racquetReader = racquetReader;
        this.menuReader = menuReader;
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

    @RequestMapping(value = "viewProduct/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser(@PathVariable Long id) {
        ModelAndView modelAndView = new ModelAndView("allProducts");
        modelAndView.addObject("products", productsRepository.getProductsByCategory(id));
        return modelAndView;
    }

}
