package com.springhibernate.integration.web.controllers;

import com.springhibernate.integration.model.User;
import com.springhibernate.integration.repository.UserBase;
import org.easymock.EasyMock;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter;
import org.testng.Assert;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Nabeel Ali Memon
 */

@Test
public class UserControllerTest {
  private MockHttpServletRequest request;
  private MockHttpServletResponse response;
  private UserController userController;
  private AnnotationMethodHandlerAdapter methodHandlerAdapter;
  private UserBase userRepositoryMock;

  /**
    * Initialize before every individual test method
    */
  @BeforeMethod
  public void init() {
    request = new MockHttpServletRequest();
    response = new MockHttpServletResponse();
    methodHandlerAdapter = new AnnotationMethodHandlerAdapter();
    userRepositoryMock = EasyMock.createStrictMock(UserBase.class);
  }

  @Test(alwaysRun = true)
  @Parameters({"getUsers"})
  public void getAllUsers(String usersPage) throws Exception {
    List<User> users = new ArrayList<User>();
    request.setRequestURI("/integration/users");
    request.setMethod("GET");
    EasyMock.expect(userRepositoryMock.getUsers()).andReturn(users);
    EasyMock.replay(userRepositoryMock);
    userController = new UserController(userRepositoryMock);
    ModelAndView modelAndView = methodHandlerAdapter.handle(request, response, userController);
    Assert.assertEquals(modelAndView.getViewName(), usersPage, "returned view name should be " + usersPage);
    EasyMock.verify(userRepositoryMock);
  }

  /**
    * Let this method run after the previous method is done. It keeps you from thread-safety
    * issues while using mock-ups.
    */
  @Test(dependsOnMethods = {"getAllUsers"}, alwaysRun = true)
  @Parameters({"getUser"})
  public void getSingleUser(String userDetailsPage) throws Exception {
    request.setRequestURI("/integration/users/{id}");
    request.setMethod("GET");
    User user = new User();
    Long userId = new Long(1);
    Map<String, String> pathVariables = new HashMap<String, String>();
    pathVariables.put("id", String.valueOf(userId));
    request.setAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE, pathVariables);
    EasyMock.expect(userRepositoryMock.getUser(userId)).andReturn(user).anyTimes();
    EasyMock.replay(userRepositoryMock);
    userController = new UserController(userRepositoryMock);
    ModelAndView modelAndView = methodHandlerAdapter.handle(request, response, userController);
    Assert.assertEquals(modelAndView.getViewName(), userDetailsPage, "returned view name should be " + userDetailsPage);
    EasyMock.verify(userRepositoryMock);
  }
}
     