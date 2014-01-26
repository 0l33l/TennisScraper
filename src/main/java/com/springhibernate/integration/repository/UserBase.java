package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.User;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */
public interface UserBase {
  public User getUser(Long id);
  public List<User> getUsers();
  public void addUser(User user);
  public void deleteUser(Long id);
}
