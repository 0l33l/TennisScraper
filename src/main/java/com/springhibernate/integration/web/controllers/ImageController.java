package com.springhibernate.integration.web.controllers;

import com.springhibernate.integration.model.Image;
import com.springhibernate.integration.model.Product;
import com.springhibernate.integration.repository.ImageBase;
import com.springhibernate.integration.repository.ProductBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */

/**
 * This annotation makes it a Spring MVC controller.
 * No need to extend any abstract controller like old Spring way
 */
@Controller
/**
 * Spring MVC 3 supports RESTful URL's out of the box.
 * Every request on 'integration' resource will be handled by this controller
 */
@RequestMapping("/image/*")
public class ImageController {
  private ImageBase imagesRepository;

  //Injecting a repository bean to talk to database
  @Autowired
  public ImageController(ImageBase imagesRepository) {
    this.imagesRepository = imagesRepository;
  }

  /**
   * List all the users and display "users.jsp" page.
   * The location and mime-type of "users.jsp" will be resolved by Spring container's "viewResolver" bean
   * that declared in "integration-mvc.xml"
   */
  @RequestMapping(value = "images", method = RequestMethod.GET)
  public ModelAndView getImages() {
    List<Image> images = imagesRepository.getImages();
    ModelAndView modelAndView = new ModelAndView("images");
    modelAndView.addObject("images", images);
    return modelAndView;
  }

  /**
   * To get a specific User by it's user-id RESTfully.
   * Notice how easily you can bind a RESTful request parameter to a controllers method parameter
   * using @PathVariable
   */
//  @RequestMapping(value = "users/{id}", method = RequestMethod.GET)
//  public ModelAndView getUser(@PathVariable Long id) {
//    User user = usersRepository.getUser(id);
//    ModelAndView modelAndView = new ModelAndView("userDetails");
//    modelAndView.addObject("user", user);
//    return modelAndView;
//  }
//
//  @RequestMapping(value = "deleteUser/{id}", method = RequestMethod.GET)
//  public ModelAndView deleteUser(@PathVariable Long id) {
//    usersRepository.deleteUser(id);
//    List<User> users = usersRepository.getUsers();
//    ModelAndView modelAndView = new ModelAndView("users");
//    modelAndView.addObject("users", users);
//    return modelAndView;
//  }
}
