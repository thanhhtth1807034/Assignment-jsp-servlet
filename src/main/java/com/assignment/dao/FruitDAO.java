package com.assignment.dao;

import com.assignment.model.Category;
import com.assignment.model.Fruit;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class FruitDAO {
    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("persistence");
    EntityManager entityManager = entityManagerFactory.createEntityManager();

    //    FRUIT CRUD

    public void insertFruit(Fruit fruit){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(fruit);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public List<Fruit> getAllFruit(){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        List<Fruit> list = entityManager.createQuery("select c from Fruit c", Fruit.class).getResultList();
        entityManager.getTransaction().commit();
        entityManager.close();
        return list;
    }
    public List<Fruit> getAllFruitstatus(int Status){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        List<Fruit> list = entityManager.createQuery("select c from Fruit c where status="+Status, Fruit.class).getResultList();
        entityManager.getTransaction().commit();
        entityManager.close();
        return list;
    }

    public Fruit getFruitById(int id){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Fruit fruit = entityManager.find(Fruit.class, id);
        entityManager.getTransaction().commit();
        entityManager.close();
        return fruit;
    }


    public void updateFruit(Fruit fruit) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Fruit entityFruit = entityManager.find(Fruit.class, fruit.getId());
        entityFruit.setName(fruit.getName());
        entityFruit.setDescription(fruit.getDescription());
        entityFruit.setPrice(fruit.getPrice());
        entityFruit.setUnit(fruit.getUnit());
        entityFruit.setOrigin(fruit.getOrigin());
        entityFruit.setThumbnail(fruit.getThumbnail());
        entityFruit.setCategoryId(fruit.getCategoryId());
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public void deletearryFruit(int id ,int status) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Fruit entityFruit = entityManager.find(Fruit.class, id);
        entityFruit.setStatus(status);
        entityManager.getTransaction().commit();
        entityManager.close();
    }
    public void deleteoneFruit(int id ) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Fruit entityFruit = entityManager.find(Fruit.class, id);
        entityFruit.setStatus(-1);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

//    CATEGORY CRUD

    public void insertCategory(Category category){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(category);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public List<Category> getAllCategory(){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        List<Category> list = entityManager.createQuery("select c from Category c", Category.class).getResultList();
        entityManager.getTransaction().commit();
        entityManager.close();
        return list;
    }

    public Category getCategoryById(int id){
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Category category = entityManager.find(Category.class, id);
        entityManager.getTransaction().commit();
        entityManager.close();
        return category;
    }

    public void updateCategory(Category category) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Category entityCategory = entityManager.find(Category.class, category.getId());
        entityCategory.setId(category.getId());
        entityCategory.setName(category.getName());
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public void deleteCategory(int id) {
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Category entityCategory = entityManager.find(Category.class, id);
        entityManager.remove(entityCategory);
        entityManager.getTransaction().commit();
        entityManager.close();
    }
}
