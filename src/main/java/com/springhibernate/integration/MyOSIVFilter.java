package com.springhibernate.integration;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.OpenSessionInViewFilter;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 1/21/12
 * Time: 3:23 PM
 */
public class MyOSIVFilter extends OpenSessionInViewFilter {
    @Override
    public void closeSession(Session session, SessionFactory sessionFactory) {
        session.flush();
        super.closeSession(session, sessionFactory);
    }
}
