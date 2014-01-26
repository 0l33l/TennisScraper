package com.springhibernate.integration.model;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * @author Nabeel Ali Memon
 */
@Entity
@Table(name = "pricecomparison")
public class PriceComparison implements Comparable {
    @Id
    @Column(name = "PRICECOMPARISONID")
    @GenericGenerator(name="generator", strategy="increment")
    @GeneratedValue(generator="generator")
    private Long id;

    @Column(name = "URL")
    private String url;

    @ManyToOne( targetEntity=Product.class )
    @JoinColumn(name="PRODUCTID")
    private Product product;

    @Column(name = "RESELLER")
    private String reseller;

    @Column(name = "PRICE")
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

    @Override
    public int compareTo(Object o) {
        PriceComparison priceComparison = (PriceComparison) o;
        return this.price.compareTo(priceComparison.price);
    }
}
