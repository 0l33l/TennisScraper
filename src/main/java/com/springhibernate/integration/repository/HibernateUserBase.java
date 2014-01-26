package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */

@Repository
@Transactional
public class HibernateUserBase implements UserBase {
  private SessionFactory sessionFactory;

  @Autowired
  public HibernateUserBase(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  @Transactional
  public User getUser(Long id) {
    return (User) sessionFactory.getCurrentSession().get(User.class, id);
  }

  @Override
  @SuppressWarnings("unchecked")
  @Transactional
  public List<User> getUsers() {
    return sessionFactory.getCurrentSession().createQuery("from User u").list();
  }

  @Override
  @Transactional
  public void addUser(User user) {
    sessionFactory.getCurrentSession().save(user);
  }

  @Override
  @Transactional
  public void deleteUser(Long id) {
    sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().get(User.class, id));
  }
}
