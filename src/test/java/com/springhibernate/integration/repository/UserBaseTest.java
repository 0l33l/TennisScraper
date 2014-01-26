package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.springframework.transaction.annotation.Transactional;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

/**
 * @author Nabeel Ali Memon
 */

@ContextConfiguration(locations = {"classpath:/META-INF/spring/integration-data.xml"})
public class UserBaseTest extends AbstractTransactionalTestNGSpringContextTests {
  @Autowired
  private UserBase userRepository;

  private User user;

  /**
   * Preparing test data which will be initialized only once for all @Test methods of this class
   */
  @BeforeClass
  @Parameters({"firstName", "lastName", "emailAddress"})
  public void init(String firstName, String lastName, String emailAddress) {
    user = new User();
    user.setFirstName(firstName);
    user.setLastName(lastName);
    user.setEmail(emailAddress);
  }

  /**
   * Transactional operation which will be rolled back by Spring after the test method runs
   */
  @Test
  @Transactional
  public void addAndGetUser() {
    int actualUsers = userRepository.getUsers().size();
    userRepository.addUser(user);
    int incrementedUsers = userRepository.getUsers().size();
    Assert.assertNotNull(user.getId(), "If user is persisted it must have been assigned an id");
    Assert.assertEquals(incrementedUsers, actualUsers + 1, "After adding 1 user, total users' count must increment by 1");
  }
}
