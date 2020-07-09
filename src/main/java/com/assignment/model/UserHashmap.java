package com.assignment.model;

import java.util.ArrayList;
import java.util.HashMap;

public class UserHashmap {
    private String username;
    private String password;
    private String email;
    private String fullName;
    private String address;
    private String phone;

    public User getUserInstance(){
        return new User(username, password, email, fullName, address, phone);
    }

    public UserHashmap(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public UserHashmap() {
    }

    public UserHashmap(String username, String password, String email, String fullName, String address, String phone) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
    }

    public HashMap<String, ArrayList<String>> getErrors() {
        HashMap<String, ArrayList<String>> errors = new HashMap<>();
        if (username == null || username.isEmpty()) {
            ArrayList<String> usernameErrors = new ArrayList<>();
            if (errors.containsKey("username")) {
                usernameErrors = errors.get("username");
            }
            usernameErrors.add("Username is required !");
            errors.put("username", usernameErrors);
        } else if (username.length() < 2) {
            ArrayList<String> usernameErrors = new ArrayList<>();
            if (errors.containsKey("username")) {
                usernameErrors = errors.get("username");
            }
            usernameErrors.add("Username must be 5 character !");
            errors.put("username", usernameErrors);
        }
        if (password == null || password.isEmpty()) {
            ArrayList<String> pwdErrors = new ArrayList<>();
            if (errors.containsKey("password")){
                pwdErrors = errors.get("password");
            }
            pwdErrors.add("Password is required !");
            errors.put("password", pwdErrors);
        }
        if (email == null || email.isEmpty()){
            ArrayList<String> emailErrors = new ArrayList<>();
            if (errors.containsKey("email")){
                emailErrors = errors.get("email");
            }
            emailErrors.add("Email is required !");
            errors.put("email", emailErrors);
        } else if (!email.contains("@")){
            ArrayList<String> emailErrors = new ArrayList<>();
            if (errors.containsKey("email")){
                emailErrors = errors.get("email");
            }
            emailErrors.add("Email is not format !");
            errors.put("email", emailErrors);
        }

        if (fullName == null || fullName.isEmpty()){
            ArrayList<String> fullNameErr = new ArrayList<>();
            if (errors.containsKey("fullName")){
                fullNameErr = errors.get("fullName");
            }
            fullNameErr.add("FullName is required !");
            errors.put("fullName", fullNameErr);
        }

        if (address == null || address.isEmpty()){
            ArrayList<String> AddressErr = new ArrayList<>();
            if (errors.containsKey("address")){
                AddressErr = errors.get("address");
            }
            AddressErr.add("Address is required !");
            errors.put("address", AddressErr);
        }

        if (phone == null || phone.isEmpty()){
            ArrayList<String> phoneErr = new ArrayList<>();
            if (errors.containsKey("phone")){
                phoneErr = errors.get("phone");
            }
            phoneErr.add("Phone is required !");
            errors.put("phone", phoneErr);
        }
        return errors;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
