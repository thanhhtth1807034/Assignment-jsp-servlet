package com.assignment.model;

public class CartItem {

    private int fruitId;
    private String fruitName;
    private  int quantity;
    public double price;
    public CartItem(Fruit fruit) {
        this.fruitId = fruit.getId();
        this.fruitName = fruit.getName();
        this.quantity = 1;
        this.price = fruit.getPrice();
    }
    public CartItem(Fruit fruit, int quantity) {
        this.fruitId = fruit.getId();
        this.fruitName = fruit.getName();
        this.quantity = 1;
        this.price = fruit.getPrice();
    }
    public CartItem() {
    }

    public CartItem(int fruitId, String fruitName, int quantity, double price) {
        this.fruitId = fruitId;
        this.fruitName = fruitName;
        this.quantity = quantity;
        this.price = price;
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
