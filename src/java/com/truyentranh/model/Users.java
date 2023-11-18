/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.model;

/**
 *
 * @author hp
 */

public class Users {
    static final int ROLE_GUEST = 0;
    static final int ROLE_ADMIN = 1;
    static final int ROLE_SUPER = 2;
    
    private int id;
    private String fullname;
    private String email;
    private String phone;
    private String username;
    private String password;
    private int role_user;

    public Users() {
    }

    

    public Users(String fullname, String email, String phone, String username, String password, int role_user) {
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.role_user = role_user;
    }
    public Users(String fullname, String email, String phone, String username, String password) {
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.role_user = 0;
    }
    
    public int getRole_user() {
        return role_user;
    }

    public void setRole_user(int role_user) {
        this.role_user = role_user;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
    
    public Boolean isGuest(){return this.role_user == ROLE_GUEST;}
    public Boolean isAdmin(){return this.role_user == ROLE_ADMIN;}
    public Boolean isSuper(){return this.role_user == ROLE_SUPER;}
}
