package com.springhibernate.integration.tennisParser;

import java.math.BigDecimal;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 8/28/11
 * Time: 7:50 PM
 */
public class ProductDetail {
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getSeller() {
        return seller;
    }

    public void setSeller(String seller) {
        this.seller = seller;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    private BigDecimal price = BigDecimal.ZERO;
    private String seller;
    private String productName;
    private String productDescription;

}
