/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.home;

import com.truyentranh.dao.ChaptersDAO;
import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.dao.UsersDAO;
import com.truyentranh.model.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession(); 
        
        //Still login then redirect home
        if(session.getAttribute("Authentication") != null)
        {
            response.sendRedirect(request.getServletContext().getContextPath());
        }
        else
        {
            request.getRequestDispatcher("guest/login.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try {
            Users user = UsersDAO.find(username, password);
            HttpSession session = request.getSession(); 
            
            if(user != null)
            {
                
                System.out.println(user.getFullname()); 
                session.setMaxInactiveInterval(600);//Session 20 seconds
                session.setAttribute("Authentication", user);
                response.sendRedirect(request.getServletContext().getContextPath());
            }
            else
            {
                String err = "Tên tài khoản hoặc mật khẩu không chính xác";
                request.setAttribute("err", err);
                request.getRequestDispatcher("guest/login.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect(request.getServletContext().getContextPath());
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
