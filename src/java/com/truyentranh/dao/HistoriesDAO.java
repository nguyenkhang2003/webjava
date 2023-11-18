/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Histories;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author canh
 */
public class HistoriesDAO {
    //CREATE
    public static void createOne(Histories history) throws SQLException{
        try {
            String sql = "insert into HISTORIES (COMICID, USERID, ISREAD, CREATED) "
                + "VALUES(?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,history.getComicId());
            ps.setInt(2,history.getUserId());
            ps.setInt(3,history.getIsRead());
            ps.setString(4,history.getCreated().toString());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
//        UPDATE
    public static void update(Histories history) throws SQLException{
        try {
            String sql = "update HISTORIES set comicId = ?, userId = ?, isRead = ?, created = ?, where comicId = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,history.getComicId());
            ps.setInt(2,history.getUserId());
            ps.setInt(3,history.getIsRead());
            ps.setString(4,history.getCreated().toString());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //READ
    public static Histories find(int comicid) throws SQLException{
        Histories history = new Histories();
        
        String sql = "select * from HISTORIES where COMICID = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicid);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            history.setComicId(rs.getInt("comicId"));
            history.setUserId(rs.getInt("userId"));
            history.setIsRead(rs.getInt("isRead"));
            //history.setCreated(rs.getString("created"));
        }
        return history;
    }
    
    public static List<Histories> getAll() {
        try {
            List<Histories> histories = new ArrayList<>();
            String sql = "select * from histories";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Histories history = new Histories();
                history.setComicId(rs.getInt("comicId"));
                history.setUserId(rs.getInt("userId"));
                history.setIsRead(rs.getInt("isRead"));
                //history.setCreated(rs.getString("created"));
                histories.add(history);
            }
            return histories;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public static void delete(/*int id*/int comicid, int userid) {
        try {
            String sql = "delete from HISTORIES where COMICID = ? and USERID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicid);
            ps.setInt(2,userid);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
    //DELETE CMT of COMIC
    public static void deleteInComic(int comicid) {
        try {
            String sql = "delete from HISTORIES where COMICID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicid);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
//    public static void main(String[] args) throws SQLException, UnsupportedEncodingException {
//        
//        Scanner sc = new Scanner(System.in);
//        String fullname = new String(sc.nextLine().getBytes("ISO-8859-1"), "ISO-8859-1");
//        Users user = new Users(fullname,"18520414@gm.uit.edu.vn","123456789","thunguyet","123");
//        
//        UsersDAO test = new UsersDAO();
//        test.createOne(user);
        
        //System.out.print(test.find("tuongphat", "tuongphat123").getFullname());
    //}
}
