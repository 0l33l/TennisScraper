package com.springhibernate.integration.repository;

import com.springhibernate.integration.model.Image;
import com.springhibernate.integration.model.User;

import java.util.List;

/**
 * @author Nabeel Ali Memon
 */
public interface ImageBase {
  public Image getImage(Long id);
  public List<Image> getImages();
  public void addImage(Image image);
  public void deleteImage(Long id);
}
