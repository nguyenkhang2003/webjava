/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.model;

/**
 *
 * @author ADMIN
 */
public class TagDescriptions {

    private String tag;
    private String tagName;
    private String descriptionTag;
    public TagDescriptions() {
    }
    public TagDescriptions(String tag,String tagName, String descriptionTag) {
        this.tag = tag;
        this.tagName=tagName;
        this.descriptionTag = descriptionTag;
        
    }    
    public String getTag(){
        return tag;
    }
    public String getDescriptionTag(){
        return descriptionTag;
    }
    public String getTagName(){
        return tagName;
    }    
    public void setTag(String tag){
        this.tag=tag;
    }
    public void setDescriptionTag(String descriptionTag){
        this.descriptionTag=descriptionTag;
    }
    public void setTagName(String tagName){
        this.tagName=tagName;
    }        

}
