package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.Category;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */
public interface CategoryBase {
  public Category findCategoryByName(String name);
  public Category getCategory(Long id);
  public List<Category> getCategories();
  public void addCategory(Category Category);
  public void deleteCategory(Long id);
}
