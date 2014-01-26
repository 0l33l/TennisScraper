package com.springhibernate.integration.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
@RequestMapping("/")
public class BaseController {
  /**
   * List all the users and display "users.jsp" page.
   * The location and mime-type of "users.jsp" will be resolved by Spring container's "viewResolver" bean
   * that declared in "integration-mvc.xml"
   */
  @RequestMapping(value = "/", method = RequestMethod.GET)
  public ModelAndView showHome() {
    ModelAndView modelAndView = new ModelAndView("index");
    return modelAndView;
  }

}
