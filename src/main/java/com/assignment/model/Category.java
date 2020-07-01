package com.assignment.model;

import javax.persistence.*;
import java.util.List;

@Entity
//@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

//    @Column(name = "name")
    private String name;

//    @OneToMany(mappedBy = "category")
//    private List<Fruit> fruits;

    public Category( String name) {
        this.name = name;
    }

    public Category() {
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
}
