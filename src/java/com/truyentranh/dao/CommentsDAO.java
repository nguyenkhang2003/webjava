/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Comments;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author canh
 */
public class CommentsDAO {
    //CREATE
    public static void createOne(int comicId, int userID,String message ) throws SQLException{
        try {
            String sql = "insert into comments (COMICID, USERID, COMMENT) values (?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicId);
            ps.setInt(2,userID);
            ps.setString(3,message);
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    //UPDATE
    public static void update(Comments comment) throws SQLException{
        try {
            String sql = "update COMMENTS set comicId = ?, userId = ?, comment = ?, created = ?, where Id = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comment.getComicId());
            ps.setInt(2,comment.getUserId());
            ps.setString(3,comment.getComment());
            ps.setString(4,comment.getCreated().toString());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //READ
    public static List<Comments> find(int comicId  ) throws SQLException{
        List<Comments> comments = new ArrayList<>();
        
        String sql = "select * from COMMENTS inner join users \n" +
                        "on COMMENTS.userid=users.id\n" +
                        "where COMMENTS.COMICID = ? \n" +
                        "order by COMMENTS.created Desc";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            Comments comment = new Comments();
            comment.setId(rs.getInt("Id"));
            comment.setComicId(rs.getInt("comicId"));
            comment.setUserId(rs.getInt("userId"));
            comment.setComment(rs.getString("comment"));
            comment.setCreated(rs.getDate("created"));
            comment.setFullName(rs.getString("fullName"));
            comments.add(comment);
        }
        if(comments.isEmpty())
            return null;
        return comments;
    }
    public static int countComments(int comicId)throws SQLException{
        int count_comments;
        
        String sql = "select count(comment) from comments where comicid= ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        count_comments = rs.getInt(sql);
        return 1;
    }
    
    public static List<Comments> getAll() {
        try {
            List<Comments> comments = new ArrayList<>();
            String sql = "select * from comments order by created desc";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Comments comment = new Comments();
                comment.setId(rs.getInt("Id"));
                comment.setComicId(rs.getInt("comicId"));
                comment.setUserId(rs.getInt("userId"));
                comment.setComment(rs.getString("comment"));
                comment.setCreated(rs.getDate("created"));
                comments.add(comment);
            }
            return comments;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public static void delete(/*int id*/int comicid, int userid) {
        try {
            String sql = "delete from COMMENTS where COMICID = ? and USERID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicid);
            ps.setInt(2,userid);
            ps.execute();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
    public static void deleteInComic(int comicid) {
        try {
            String sql = "delete from COMMENTS where COMICID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicid);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
    
    public static void main(String[] args) throws SQLException {}

}
