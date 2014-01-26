package com.springhibernate.integration.model;

import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import static org.testng.Assert.assertEquals;

/**
 * @author Nabeel Ali Memon
 */

@Test
public class UserTest {
  @Test
  @Parameters({"firstName", "lastName", "emailAddress"})
  public void setAndGetAttrs(String firstName, String lastName, String emailAddress) {
    User user = new User();
    user.setFirstName(firstName);
    user.setLastName(lastName);
    user.setEmail(emailAddress);

    assertEquals(user.getFirstName(), firstName, "Should get first name that was set");
    assertEquals(user.getLastName(), lastName, "Should get last name that was set");
    assertEquals(user.getEmail(), emailAddress, "Should get email address that was set");
  }
}
