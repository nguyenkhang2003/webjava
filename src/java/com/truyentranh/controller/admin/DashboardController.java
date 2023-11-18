/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.admin;

import com.truyentranh.dao.ChaptersDAO;
import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.dao.TagDescriptionDAO;
import com.truyentranh.dao.TagsDAO;
import com.truyentranh.dao.UsersDAO;
import com.truyentranh.model.Comics;
import com.truyentranh.model.TagDescriptions;
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
@WebServlet(urlPatterns = {"/admin"})
public class DashboardController extends HttpServlet {

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
        
        Users user = (Users)session.getAttribute("Authentication");
        
        
        if(user == null || user.isGuest())
        {
            response.sendRedirect(request.getServletContext().getContextPath());
        }
        else
        {
            
            int countUsers = UsersDAO.getAll().size();
            int countTags = TagDescriptionDAO.getAll().size();
            try {
                int countComics = ComicsDAO.getAll().size();
                List<Comics> comics = ComicsDAO.getAll();
                int countChapters = 0;
                for(int i = 0; i < comics.size(); i++)
                    countChapters += ChaptersDAO.countChapterWithId(comics.get(i).getId());
                request.setAttribute("countUsers", countUsers);
                request.setAttribute("countTags", countTags);
                request.setAttribute("countComics", countComics);
                request.setAttribute("countChapters", countChapters);
                request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
                
            } catch (SQLException ex) {
                Logger.getLogger(DashboardController.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            
            
            
            
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
        processRequest(request, response);
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
