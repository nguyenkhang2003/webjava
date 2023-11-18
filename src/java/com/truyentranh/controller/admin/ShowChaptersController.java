/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.admin;

import com.truyentranh.dao.ChaptersDAO;
import com.truyentranh.model.Chapters;
import com.truyentranh.model.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
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
@WebServlet(urlPatterns = {"/admin/chapters"})
public class ShowChaptersController extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession(); 
        Users user = (Users)session.getAttribute("Authentication");
        if(user == null || user.isGuest())
        {
            response.sendRedirect(request.getServletContext().getContextPath());
        }
        else
        {
            List<Chapters> chapters = ChaptersDAO.getAllChapters();
            
            for(int i = 0; i < chapters.size() - 1; i++)
                for(int j = i+1; j < chapters.size(); j++)
                    if(chapters.get(i).getChapter()== chapters.get(j).getChapter()
                            && chapters.get(i).getComicId()== chapters.get(j).getComicId())
                        chapters.remove(i);
            for(int i = 0; i < chapters.size() - 1; i++)
                for(int j = i+1; j < chapters.size(); j++)
                    if(chapters.get(i).getChapter()== chapters.get(j).getChapter()
                            && chapters.get(i).getComicId()== chapters.get(j).getComicId())
                        chapters.remove(i);
            for(int i = 0; i < chapters.size() - 1; i++)
                for(int j = i+1; j < chapters.size(); j++)
                    if(chapters.get(i).getChapter()== chapters.get(j).getChapter()
                            && chapters.get(i).getComicId()== chapters.get(j).getComicId())
                        chapters.remove(i);
            
            request.setAttribute("chapters", chapters);
            request.getRequestDispatcher("/admin/show-chapters.jsp").forward(request, response);
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
            Logger.getLogger(ShowChaptersController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ShowChaptersController.class.getName()).log(Level.SEVERE, null, ex);
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
