/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Tags;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author canh
 */
public class TagsDAO {
    //CREATE
    public static void createOne(Tags tag) throws SQLException{
        try {
            String sql = "insert into TAGS (COMICID, TAG) "
                + "VALUES(?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,tag.getComicId());
            ps.setString(2,tag.getTag());

            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //READ
    public static List<Tags> find(int comicid) throws SQLException{
        List<Tags> tags = new ArrayList<>();
        
        String sql = "select * from TAGS where COMICID = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicid);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
                Tags tag = new Tags();
                tag.setComicId(rs.getInt("comicId"));
                tag.setTag(rs.getString("tag"));
                tags.add(tag);
        }
        return tags;
    }
    
    public static List<Tags> getAll() {
        try {
            List<Tags> tags = new ArrayList<>();
            String sql = "select * from TAGS";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Tags tag = new Tags();
                tag.setComicId(rs.getInt("comicId"));
                tag.setTag(rs.getString("tag"));
                tags.add(tag);
            }
            return tags;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public static void delete(int comicId) {
        try {
            String sql = "delete from TAGS where COMICID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicId);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    //UPDATE
    public static void update(Tags tag) throws SQLException{
        try {
            String sql = "update TAGS set tag = ? where COMICID =?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,tag.getComicId());
            ps.setString(2,tag.getTag());

            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void main(String[] args) throws SQLException {}

}
