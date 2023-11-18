/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Users;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author hp
 */
public class UsersDAO {
    //CREATE
    public static void createOne(Users user) throws SQLException{
        try {
            String sql = "insert into USERS (FULLNAME, EMAIL, PHONE, USERNAME, PASSWORD) "
                + "VALUES(?,?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1,user.getFullname());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPhone());
            ps.setString(4,user.getUsername());
            ps.setString(5,user.getPassword());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    //UPDATE
    public static void updateInfo(Users user) throws SQLException{
        try {
            String sql = "update USERS set FULLNAME = ?, EMAIL = ?, PHONE = ? where USERNAME = ? AND PASSWORD = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1,user.getFullname());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPhone());
            ps.setString(4,user.getUsername());
            ps.setString(5,user.getPassword());
            
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    public static void updatePassword(Users user, String newPassword) throws SQLException{
        try {
            String sql = "update USERS set PASSWORD = ? where USERNAME = ? and PASSWORD = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1,newPassword);
            ps.setString(2,user.getUsername());
            ps.setString(3,user.getPassword());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    //READ
    public static Users find(String username, String password) throws SQLException{
        Users user = new Users();
        String sql = "select * from USERS where USERNAME = ? and PASSWORD = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setString(1,username);
        ps.setString(2,password);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole_user(rs.getInt("ROLE_USER"));
                return user;
            }
        return null;
    }
    public static Boolean find(String username) throws SQLException{
        
        String sql = "select * from USERS where USERNAME = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setString(1,username);
        
        return ps.executeQuery().next() ? true : false;
    }
    public static String getPasswordByEmail(String email) throws SQLException{
        
        String sql = "select * from USERS where EMAIL = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setString(1,email);
        
        
        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
            return rs.getString("PASSWORD");
        }
        return null;
    }
    public static List<Users> getAll() {
        try {
            List<Users> users = new ArrayList<>();
            String sql = "select * from users";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Users user = new Users();
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public static void delete(/*int id*/String username) {
        try {
            String sql = "delete from USERS where USERNAME = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1, username);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    public static void main(String[] args) throws SQLException {}

}
