package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.Image;
import com.springhibernate.integration.model.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */

@Repository
@Transactional
public class HibernateImageBase implements ImageBase {
  private SessionFactory sessionFactory;

  @Autowired
  public HibernateImageBase(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  @Transactional
  public Image getImage(Long id) {
    return (Image) sessionFactory.getCurrentSession().get(Image.class, id);
  }

  @Override
  @SuppressWarnings("unchecked")
  @Transactional
  public List<Image> getImages() {
    return sessionFactory.getCurrentSession().createQuery("from Image u").list();
  }

  @Override
  @Transactional
  public void addImage(Image image) {
    sessionFactory.getCurrentSession().save(image);
  }

  @Override
  @Transactional
  public void deleteImage(Long id) {
    sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().get(Image.class, id));
  }
}
