/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.model;

import java.time.LocalDateTime;

/**
 *
 * @author hp
 */
public class Histories {
    private int comicId;
    private int userId;
    private LocalDateTime created;
    private int isRead;

    public Histories() {
    }

    public Histories(int comicId, int userId, int isRead) {
        this.comicId = comicId;
        this.userId = userId;
        this.isRead = isRead;
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

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public int getIsRead() {
        return isRead;
    }

    public void setIsRead(int isRead) {
        this.isRead = isRead;
    }
    
    
}
