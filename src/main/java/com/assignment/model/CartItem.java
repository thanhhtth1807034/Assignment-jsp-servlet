package com.assignment.model;

public class CartItem {

    private int fruitId;
    private String fruitName;
    private String image;
    private  int quantity;
    public double price;


    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


    public CartItem(Fruit fruit, int quantity) {
        this.image=fruit.getThumbnail();
        this.fruitId = fruit.getId();
        this.fruitName = fruit.getName();
        this.quantity = 1;
        this.price = fruit.getPrice();
    }
    public CartItem() {
    }



    public int getFruitId() {
        return fruitId;
    }

    public void setFruitId(int fruitId) {
        this.fruitId = fruitId;
    }

    public String getFruitName() {
        return fruitName;
    }

    public void setFruitName(String fruitName) {
        this.fruitName = fruitName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    public void addQuantity(int quantity) {
        this.quantity += quantity;
    }
}
