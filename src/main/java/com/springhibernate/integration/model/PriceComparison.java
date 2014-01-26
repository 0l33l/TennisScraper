package com.springhibernate.integration.model;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

/**
 * @author Nabeel Ali Memon
 */
public class PriceComparison {
    private Long id;
    private String url;
    private Product product;
    private String reseller;
    private Double price;

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17,5).append(url).append(product).toHashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null)
            return false;
        if (obj == this)
            return true;
        if (obj.getClass() != getClass())
            return false;

        PriceComparison rhs = (PriceComparison) obj;
        return new EqualsBuilder().
            append(url, rhs.url).
            append(product, rhs.product).
            isEquals();
    }

    public String getReseller() {
        return reseller;
    }

    public void setReseller(String reseller) {
        this.reseller = reseller;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public PriceComparison() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


}
