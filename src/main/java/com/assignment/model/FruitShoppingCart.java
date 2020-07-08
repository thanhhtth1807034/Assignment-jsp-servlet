package com.assignment.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FruitShoppingCart {
    private HashMap<Integer, CartItem> items;
    private double totalPrice;

    public FruitShoppingCart() {
        this.items = new HashMap<Integer, CartItem>();
        this.totalPrice = 0;
    }

    public List<CartItem> getItems() {
        if (items == null) {
            items = new HashMap<Integer, CartItem>();
        }
        return new ArrayList<CartItem>(items.values());
    }

    public void setItems(HashMap<Integer, CartItem> items) {
        this.items = items;
    }

    public void removeProduct(Integer productId) {
        if (items == null) {
            return;
        }
        if (items.containsKey(productId)) {
            items.remove(productId);
        }
    }

    public void addProduct(Fruit fruit, int quantity) {
        if (items == null) {
            items = new HashMap<Integer, CartItem>();
        }
        CartItem item = new CartItem(fruit, quantity);
        if (items.containsKey(fruit.getId())) {
            CartItem existItem = items.get(fruit.getId());
            item.addQuantity(existItem.getQuantity());
        }
        items.put(fruit.getId(), item);
    }
    public void updateProduct(Fruit fruit, int quantity) {
        if (items == null) {
            items = new HashMap<Integer, CartItem>();
        }
        CartItem item = new CartItem(fruit, quantity);
        if (items.containsKey(fruit.getId())) {
            item.setQuantity(quantity);
        }
        items.put(fruit.getId(), item);
    }

    public String tt() {
        this.totalPrice = 0;
        for (CartItem item :
                items.values()) {
            this.totalPrice += item.getPrice() * item.getQuantity();
        }
        return String.valueOf(this.totalPrice);
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }



}
