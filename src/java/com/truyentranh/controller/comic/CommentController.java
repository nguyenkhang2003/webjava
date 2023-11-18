/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.comic;

import com.truyentranh.controller.home.LoginController;
import com.truyentranh.dao.ChaptersDAO;
import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.dao.CommentsDAO;
import com.truyentranh.dao.UsersDAO;
import com.truyentranh.model.Comics;
import com.truyentranh.model.Users;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.math.NumberUtils;
import com.truyentranh.dao.TagDescriptionDAO;
import com.truyentranh.dao.TagsDAO;
import com.truyentranh.model.Chapters;
import com.truyentranh.model.Comments;
import com.truyentranh.model.TagDescriptions;
import com.truyentranh.model.Tags;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/comment-user"})
public class CommentController extends HttpServlet {

    UsersDAO userDAO = new UsersDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        int id;
        String message = null; 
        int userid;
        HttpSession session = request.getSession(); 
        
        
        
        
        
        if(request.getParameter("message") != null){
            if(request.getParameter("id") != null && NumberUtils.isNumber((request.getParameter("id")))){     
                message=request.getParameter("message");            
                if(request.getParameter("Authentication")!=null){            
                    userid=Integer.parseInt(request.getParameter("Authentication"));
                    System.out.println(userid);
                    id = Integer.parseInt(request.getParameter("id"));                                                            
                    System.out.println(message);        
                    System.out.println(id);                        
                    Users user = (Users)session.getAttribute("Authentication");
                    request.setAttribute("id",id);
                    request.setAttribute("message",message);   
                    System.out.print(user.getUsername());
                    CommentsDAO.createOne(id, userid, message);
                    //request.getRequestDispatcher("guest/detail?id="+id).forward(request, response);
                    response.sendRedirect(request.getServletContext().getContextPath()+"/detail?id="+id); 
                }            
                
                
            
            
        }
            }
        
        
//        int page = request.getParameter("page") == null 
//                || (request.getParameter("page") != null && !isNumeric(Integer.parseInt(request.getParameter("page")))) ? 
//                1 : Integer.parseInt(request.getParameter("page"));
        
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
            Logger.getLogger(CommentController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(CommentController.class.getName()).log(Level.SEVERE, null, ex);
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
