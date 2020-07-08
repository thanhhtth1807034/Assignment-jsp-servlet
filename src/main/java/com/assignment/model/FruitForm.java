package com.assignment.model;

import java.util.ArrayList;
import java.util.HashMap;

public class FruitForm {
    private String name;
    private String description;
    private String price;
    private double doublePrice;
    private String unit;
    private String origin;
    private String thumbnail;

    public Fruit getFruitInstance() {
        return new Fruit(name,description, doublePrice, unit, origin, thumbnail);
    }
    public FruitForm(String name, String description, String price, String unit, String origin, String thumbnail){
        this.name = name;
        this.description = description;
        this.price = price;
        this.unit = unit;
        this.origin = origin;
        this.thumbnail = thumbnail;
    }
    public HashMap<String, ArrayList<String>> getErrors() {
        HashMap<String, ArrayList<String>> errors = new HashMap<>();
        if (name == null || name.isEmpty()) {
            ArrayList<String> nameErrors = new ArrayList<>();
            if (errors.containsKey("name")) {
                nameErrors = errors.get("name");
            }
            nameErrors.add("Please enter name product");
            errors.put("name", nameErrors);
        }
        if (description == null || description.isEmpty()) {
            ArrayList<String> descriptionErrors = new ArrayList<>();
            if (errors.containsKey("description")) {
                descriptionErrors = errors.get("description");
            }
            descriptionErrors.add("Please enter description product");
            errors.put("description", descriptionErrors);
        }
        if (price == null || price.isEmpty()) {
            ArrayList<String> priceErrors = new ArrayList<>();
            if (errors.containsKey("price")) {
                priceErrors = errors.get("price");
            }
            priceErrors.add("Please select a price for the product");
            errors.put("price", priceErrors);
        }else if(price.length() < 0){
            ArrayList<String> priceErrors = new ArrayList<>();
            if (errors.containsKey("price")) {
                priceErrors = errors.get("price");
            }
            priceErrors.add("Please select a price for the product");
            errors.put("price", priceErrors);
        }
        try {
            doublePrice = Double.parseDouble(price);
        } catch (NumberFormatException ex) {
            ArrayList<String> priceErrors = new ArrayList<>();
            if (errors.containsKey("price")) {
                priceErrors = errors.get("price");
            }
            priceErrors.add("Price must be a number!");
            errors.put("price", priceErrors);
        }
        if (unit == null || unit.isEmpty()) {
            ArrayList<String> unitErrors = new ArrayList<>();
            if (errors.containsKey("unit")) {
                unitErrors = errors.get("unit");
            }
            unitErrors.add("Please enter unit product");
            errors.put("unit", unitErrors);
        }
        if (origin == null || origin.isEmpty()) {
            ArrayList<String> originErrors = new ArrayList<>();
            if (errors.containsKey("origin")) {
                originErrors = errors.get("origin");
            }
            originErrors.add("Please enter origin product");
            errors.put("origin", originErrors);
        }
        if (thumbnail == null || thumbnail.isEmpty()) {
            ArrayList<String> thumbnailErrors = new ArrayList<>();
            if (errors.containsKey("thumbnail")) {
                thumbnailErrors = errors.get("thumbnail");
            }
            thumbnailErrors.add("Please select the product image file");
            errors.put("thumbnail", thumbnailErrors);
        }


        return errors;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public double getDoublePrice() {
        return doublePrice;
    }

    public void setDoublePrice(double doublePrice) {
        this.doublePrice = doublePrice;
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

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
}
