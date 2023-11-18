/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.model;

import java.sql.Date;

/**
 *
 * @author hp
 */
public class Chapters {
    private int comicId;
    private int chapter;
    private int imgId;
    private String chapterContentURL;
    private Date created;
    public Chapters() {
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Chapters(int comicId, int chapter, int imgId, String chapterContentURL) {
        this.comicId = comicId;
        this.chapter = chapter;
        this.imgId = imgId;
        this.chapterContentURL = chapterContentURL;
    }

    public int getComicId() {
        return comicId;
    }

    public void setComicId(int comicId) {
        this.comicId = comicId;
    }

    public int getChapter() {
        return chapter;
    }

    public void setChapter(int chapter) {
        this.chapter = chapter;
    }

    public int getImgId() {
        return imgId;
    }

    public void setImgId(int imgId) {
        this.imgId = imgId;
    }

    public String getChapterContentURL() {
        return chapterContentURL;
    }

    public void setChapterContentURL(String chapterContentURL) {
        this.chapterContentURL = chapterContentURL;
    }
    
    
}
