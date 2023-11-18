/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.user;

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
@WebServlet(urlPatterns = {"/change-password"})
public class ChangePassword extends HttpServlet {

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
        if(session.getAttribute("Authentication") == null)
        {
            response.sendRedirect(request.getServletContext().getContextPath());
        }
        else
        {
            request.getRequestDispatcher("guest/change-password.jsp").forward(request, response);
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
        
        HttpSession session = request.getSession();
        Users user = (Users)session.getAttribute("Authentication");
        
        String password = request.getParameter("password");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        
        String err;
        if(user.getPassword().equals(password))
        {
            if(newPassword.equals(confirmPassword))
                try {
                    UsersDAO.updatePassword(user, newPassword);
                    response.sendRedirect("logout");
            } catch (SQLException ex) {
                Logger.getLogger(ChangePassword.class.getName()).log(Level.SEVERE, null, ex);
            }
            else
            {
                err = "Mật khẩu xác nhận không chính xác";
                request.setAttribute("err", err);
                request.getRequestDispatcher("guest/change-password.jsp").forward(request, response);
            }
        }
        else
        {
            err = "Mật khẩu không chính xác";
            request.setAttribute("err", err);
            request.getRequestDispatcher("guest/change-password.jsp").forward(request, response);
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
