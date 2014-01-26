package com.springhibernate.integration;

import com.springhibernate.integration.model.User;
import com.springhibernate.integration.repository.UserBase;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author Nabeel Ali Memon
 */
public class App {
  public static void main(String[] args) {
    ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath*:META-INF/spring/*.xml");
    UserBase users = (UserBase) ctx.getBean("repository.users");
    User user = users.getUser(new Long(1));
    System.out.println("User's email address: " + user.getEmail());
    User user2 = new User();
    user2.setFirstName("Ummamah");
    user2.setLastName("Nabeel");
    user2.setEmail("doc.uaftab@gmail.com");
    users.addUser(user2);
  }
}
