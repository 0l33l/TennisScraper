package com.springhibernate.integration.model;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @Column(name = "PRODUCTID")
    @GenericGenerator(name="generator", strategy="increment")
    @GeneratedValue(generator="generator")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private Double price;

    @Column(name = "specs")
    private String specs;

    @Column(name = "brand")
    private String brand;

    @Column(name = "URL")
    private String url;

    @ManyToOne( cascade = CascadeType.ALL, targetEntity=Category.class )
    @JoinColumn(name="CATEGORYID")
    private Category category;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private Set<Image> images = new HashSet<Image>();

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
    private Set<PriceComparison> priceComparisons = new HashSet<PriceComparison>();

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 13).append(name).append(price).toHashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null)
            return false;
        if (obj == this)
            return true;
        if (obj.getClass() != getClass())
            return false;

        Product rhs = (Product) obj;
        return new EqualsBuilder().
                append(name, rhs.name).
                append(price, rhs.price).
                isEquals();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Set<PriceComparison> getPriceComparisons() {
        return priceComparisons;
    }

    public void setPriceComparisons(Set<PriceComparison> priceComparisons) {
        this.priceComparisons = priceComparisons;
    }

    public Set<Image> getImages() {
        return images;
    }

    public void setImages(Set<Image> images) {
        this.images = images;
    }

    public Product() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecs() {
        return specs;
    }

    public void setSpecs(String specs) {
        this.specs = specs;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
