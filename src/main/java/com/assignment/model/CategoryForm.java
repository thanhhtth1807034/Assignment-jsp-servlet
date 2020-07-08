package com.assignment.model;

import javax.persistence.Column;
import java.util.ArrayList;
import java.util.HashMap;

public class CategoryForm {

    private String name;

    public CategoryForm() {
    }

    public CategoryForm(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public HashMap<String, ArrayList<String>> getErrors() {
        HashMap<String, ArrayList<String>> errors = new HashMap<>();
        if (name == null || name.isEmpty()) {
            ArrayList<String> nameErrors = new ArrayList<>();
            if (errors.containsKey("name")) {
                nameErrors = errors.get("name");

            }
            nameErrors.add("Name is require!");
            errors.put("name", nameErrors);
        } else if (name.length() < 5 || name.length() > 20) {
            ArrayList<String> nameErrors = new ArrayList<>();
            if (errors.containsKey("name")) {
                nameErrors = errors.get(name);
            }
            nameErrors.add("Name must be 5 to 20 character!");
            errors.put("name", nameErrors);
        }
        return errors;

    }
}
