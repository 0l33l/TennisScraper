package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.Category;
import org.hibernate.Query;
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
public class HibernateCategoryBase implements CategoryBase {
    private SessionFactory sessionFactory;

    @Autowired
    public HibernateCategoryBase(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public Category getCategory(Long id) {
        return (Category) sessionFactory.getCurrentSession().get(Category.class, id);
    }

    @Override
    @Transactional
    public Category findCategoryByName(String name) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Category where name = :name ");
        query.setParameter("name", name);
        return (Category) query.uniqueResult();
    }

    @Override
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Category> getCategories() {
        return sessionFactory.getCurrentSession().createQuery("from Category u order by u.name").list();
    }

    @Override
    @Transactional
    public void addCategory(Category Category) {
        sessionFactory.getCurrentSession().save(Category);
    }

    @Override
    @Transactional
    public void deleteCategory(Long id) {
        sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().get(Category.class, id));
    }
}
