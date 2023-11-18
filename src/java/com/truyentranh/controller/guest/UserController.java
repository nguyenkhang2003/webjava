/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.guest;

import com.truyentranh.dao.UsersDAO;
import com.truyentranh.model.Users;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {})
public class UserController extends HttpServlet {

    UsersDAO userDAO = new UsersDAO();
    
    protected void createOne(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //String fullname = new String(request.getParameter("fullname").getBytes("ISO-8859-1"), "UTF-8");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        Users user = new Users(fullname,email,phone,username,password);
        
        userDAO.createOne(user);
    }
    protected void updateOne(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        //String fullname = new String(request.getParameter("fullname").getBytes("ISO-8859-1"), "UTF-8");
//        String fullname = request.getParameter("fullname");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//        
//        Users user = new Users(fullname,email,phone,username,password);
//        
//        userDAO.createOne(user);
    }
    protected void deleteOne(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException{
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        //int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        System.out.println(username);
        userDAO.delete(username);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String servletContext = new File(request.getServletContext().getContextPath()).toString();
        String servletPath = new File(request.getServletPath()).toString();
        //String pathInfo = new File(request.getPathInfo()).toString();
        
        System.out.println(servletPath);
        
        switch(servletPath){
            case "\\UsersCreate": 
                createOne(request,response);
                break;
            case "\\UsersDelete": 
                deleteOne(request,response);
                break;
            case "\\UsersUpdate":
                updateOne(request,response);
                break;

                
            default: break;
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
