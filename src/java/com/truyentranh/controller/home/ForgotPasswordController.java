/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.home;

import com.truyentranh.dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/forgot-password"})
public class ForgotPasswordController extends HttpServlet {
        final String FROM = "tuongphat208@gmail.com";
        final String PASSWORD = "ThuNguyet1506";
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
        
        request.getRequestDispatcher("guest/forgot-password.jsp").forward(request, response);
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
        
        String to = request.getParameter("email");
        String host = "localhost";
        
        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.starttls.enable", "true");
        properties.setProperty("mail.smtp.host", "smtp.gmail.com");
        properties.setProperty("mail.smtp.port", "587");
        
        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication(){
            return new PasswordAuthentication(FROM, PASSWORD);
            }
        });
        response.setContentType("text/html");
        //PrintWriter out = response.getWriter();
        
        try{
        
        MimeMessage message = new MimeMessage(session);
        
        message.setFrom(new InternetAddress(FROM));
         
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        
        message.setSubject("Mật khẩu của bạn - Từ PHATTRUYEN", "utf-8");

        String oldPassword = UsersDAO.getPasswordByEmail(to);
        
        if(oldPassword != null)
        {
            String content = "Đây là mật khẩu của bạn: " + oldPassword;
            message.setText(content,"utf-8","html");
            message.setReplyTo(message.getFrom());

            // Send message
            Transport.send(message);
            request.getRequestDispatcher("guest/login.jsp").forward(request, response);
        }
        else
        {
            String err = "Email của bạn không tồn tại";
            request.setAttribute("err", err);
            request.getRequestDispatcher("guest/forgot-password.jsp").forward(request, response);
        }
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }     catch (SQLException ex) {
                Logger.getLogger(ForgotPasswordController.class.getName()).log(Level.SEVERE, null, ex);
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
