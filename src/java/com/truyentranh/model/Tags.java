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
public class Tags {
    private int comicId;
    private String tag;

    public Tags() {
    }

    public Tags(int comicId, String tag) {
        this.comicId = comicId;
        this.tag = tag;
    }

    public int getComicId() {
        return comicId;
    }

    public void setComicId(int comicId) {
        this.comicId = comicId;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }
    
    
}
