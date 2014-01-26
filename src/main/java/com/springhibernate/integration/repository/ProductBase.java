package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.Product;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */
public interface ProductBase {
  public Product findProductByName(String name);
  public List<Product> getProductsByName(String name);
  public Product getProduct(Long id);
  public List<Product> getProducts();
  public void addProduct(Product Product);
  public void deleteProduct(Long id);
  public List<Product> getProductsByCategory(Long categoryID);
}
