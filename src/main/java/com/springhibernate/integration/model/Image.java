package com.springhibernate.integration.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * @author Nabeel Ali Memon
 */
@Entity
@Table(name = "image")
public class Image {
    @Id
    @Column(name = "IMAGEID")
    @GenericGenerator(name="generator", strategy="increment")
    @GeneratedValue(generator="generator")
    private Long id;

    @Column(name = "URL")
    private String url;

    @Column(name = "url_thumb")
    private String url_thumb;

    @ManyToOne( targetEntity=Product.class )
    @JoinColumn(name="PRODUCTID")
    private Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getUrl_thumb() {
        return url_thumb;
    }

    public void setUrl_thumb(String url_thumb) {
        this.url_thumb = url_thumb;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Image() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


}
