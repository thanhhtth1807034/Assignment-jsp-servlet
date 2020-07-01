package com.assignment.model;

import javax.persistence.*;

@Entity
//@Table(name = "fruit")
public class Fruit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
//    @Column(name = "name")
    private String name;

//    @Column(name = "description")
    private String description;

//    @Column(name = "price")
    private double price;

//    @Column(name = "unit")
    private String unit;

//    @Column(name = "origin")
    private String origin;

//    @Column(name = "thumbnail")
    private String thumbnail;

//    @Column(name = "categoryId")
    private Integer categoryId;

//    @ManyToOne(fetch = FetchType.EAGER)
//    @JoinColumn(name = "categoryId", updatable = false, insertable = false)
//    private Category category;

    public Fruit(String name, String description, double price, String unit, String origin, String thumbnail, int categoryId) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.unit = unit;
        this.origin = origin;
        this.thumbnail = thumbnail;
        this.categoryId = categoryId;
    }

//    public Category getCategory() {
//        return category;
//    }



//    public void setCategory(Category category) {
//        this.category = category;
//    }

    public Fruit() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
}

