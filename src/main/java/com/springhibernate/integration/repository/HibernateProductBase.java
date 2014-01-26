package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.Product;
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
public class HibernateProductBase implements ProductBase {
    private SessionFactory sessionFactory;

    @Autowired
    public HibernateProductBase(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public Product getProduct(Long id) {
        return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
    }

    @Override
    @Transactional
    public Product findProductByName(String name) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Product where name = :name ");
        query.setParameter("name", name);
        return (Product) query.uniqueResult();
    }

    @Override
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Product> getProducts() {
        return sessionFactory.getCurrentSession().createQuery("from Product u").list();
    }

    @Override
    @SuppressWarnings("unchecked")
    @Transactional
    public List<Product> getProductsByCategory(Long categoryID) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Product where category.id = :categoryId ");
        query.setParameter("categoryId", categoryID);
        return query.list();
    }

    @Override
    @Transactional
    public void addProduct(Product Product) {
//        sessionFactory.getCurrentSession().save(Product);
        sessionFactory.getCurrentSession().saveOrUpdate(Product);
    }

    @Override
    @Transactional
    public void deleteProduct(Long id) {
        sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().get(Product.class, id));
    }

}
