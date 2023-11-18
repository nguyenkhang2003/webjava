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
public class Comics {
    private int id;
    private String title;
    private String description;
    private String thumbnail;
    private String author;
    private String status;
    private int views;

    public Comics() {
    }

    public Comics(String title, String description, String thumbnail, String author, String status) {
        this.title = title;
        this.description = description;
        this.thumbnail = thumbnail;
        this.author = author;
        this.status = status;
        this.views = 0;
    }
    public Comics(String title, String description, String thumbnail) {
        this.title = title;
        this.description = description;
        this.thumbnail = thumbnail;
        this.views = 0;
    }
    public Comics withAuthor(String author){
        this.author = author;
        return this;
    }
    public Comics withStatus(String status){
        this.status = status;
        return this;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }
    
    
    
}
