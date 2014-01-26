package com.springhibernate.integration.tennisParser;

import com.springhibernate.integration.model.Product;
import com.springhibernate.integration.repository.CategoryBase;
import com.springhibernate.integration.repository.ProductBase;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 8/17/11
 * Time: 8:03 PM
 * To change this template use File | Settings | File Templates.
 */
public interface RacquetDetailReader {
//    public BigDecimal getPrice();
//    public String getSpecs();
//    public String getName();
//    public HashSet<Image> getImages();
    public Product parseRacquet(String url);
}
