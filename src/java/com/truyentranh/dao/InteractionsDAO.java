/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Interactions;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author canh
 */
public class InteractionsDAO {
    //CREATE
    public void createOne(Interactions interaction) throws SQLException{
        try {
            String sql = "insert into INTERACTIONS (COMICID, USERID, FAVOR, DISFAVOR, FOLLOW) "
                + "VALUES(?,?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,interaction.getComicId());
            ps.setInt(2,interaction.getUserId());
            ps.setInt(3,interaction.getDisfavor());
            ps.setInt(4,interaction.getFavor());
            ps.setInt(5,interaction.getFollow());

            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //READ
    public Interactions find(int comicid) throws SQLException{
        Interactions interaction = new Interactions();
        
        String sql = "select * from INTERACTIONS where COMICID = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicid);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            interaction.setComicId(rs.getInt("comicId"));
            interaction.setUserId(rs.getInt("userId"));
            interaction.setDisfavor(rs.getInt("disfavor"));
            interaction.setFavor(rs.getInt("favor"));
            interaction.setFollow(rs.getInt("follow"));
        }
        return interaction;
    }
    
    public List<Interactions> getAll() {
        try {
            List<Interactions> interactions = new ArrayList<>();
            String sql = "select * from histories";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Interactions interaction = new Interactions();
                interaction.setComicId(rs.getInt("comicId"));
                interaction.setUserId(rs.getInt("userId"));
                interaction.setDisfavor(rs.getInt("disfavor"));
                interaction.setFavor(rs.getInt("favor"));
                interaction.setFollow(rs.getInt("follow"));
                interactions.add(interaction);
            }
            return interactions;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public void delete(/*int id*/int comicid, int userid) {
        try {
            String sql = "delete from INTERACTIONS where COMICID = ? and USERID = ?";//Code lạ phải nghiên cứu
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
    public void deleteInteractionInComic(int comicid) {
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
        //UPDATE
    public void update(Interactions interaction) throws SQLException{
        try {
            String sql = "update TAGS set tag = ? where COMICID =?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,interaction.getComicId());
            ps.setInt(2,interaction.getUserId());
            ps.setInt(3,interaction.getDisfavor());
            ps.setInt(4,interaction.getFavor());
            ps.setInt(5,interaction.getFollow());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    public static void main(String[] args) throws SQLException {}

}
