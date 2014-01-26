package com.springhibernate.integration;

import com.springhibernate.integration.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * @author Nabeel Ali Memon
 */
public class HibernateUtils {
  private static final SessionFactory sessionFactory = buildSessionFactory();

  private static SessionFactory buildSessionFactory() {
    try {
      // Create the SessionFactory from hibernate.cfg.xml
      return new Configuration().configure().buildSessionFactory();
    }
    catch (Throwable ex) {
      // Make sure you log the exception, as it might be swallowed
      System.err.println("Initial SessionFactory creation failed." + ex);
      throw new ExceptionInInitializerError(ex);
    }
  }

  public static SessionFactory getSessionFactory() {
    return sessionFactory;
  }

  public static void main(String[] args) {
    Session session = getSessionFactory().getCurrentSession();
    session.getTransaction().begin();
    User user = (User) session.get(User.class, new Long(1));
    System.out.println("user's email id is: "+user.getEmail());
    session.getTransaction().commit();
  }
}
