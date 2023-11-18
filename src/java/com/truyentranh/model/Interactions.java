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
public class Interactions {
    private int comicId;
    private int userId;
    private int favor;
    private int disfavor;
    private int follow;

    public Interactions() {
    }

    public int getComicId() {
        return comicId;
    }

    public void setComicId(int comicId) {
        this.comicId = comicId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getFavor() {
        return favor;
    }

    public void setFavor(int favor) {
        this.favor = favor;
    }

    public int getDisfavor() {
        return disfavor;
    }

    public void setDisfavor(int disfavor) {
        this.disfavor = disfavor;
    }

    public int getFollow() {
        return follow;
    }

    public void setFollow(int follow) {
        this.follow = follow;
    }
    
    
}
