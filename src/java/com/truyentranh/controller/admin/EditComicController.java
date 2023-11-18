/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.admin;

import com.truyentranh.common.FileAny;
import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.dao.TagDescriptionDAO;
import com.truyentranh.model.Comics;
import com.truyentranh.model.TagDescriptions;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.lang3.math.NumberUtils;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/admin/edit-comic"})
@MultipartConfig
public class EditComicController extends HttpServlet {

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
        
        
        
        int id = 0;
        if(request.getParameter("id") != null && NumberUtils.isNumber((request.getParameter("id"))))
        {
            id = Integer.parseInt(request.getParameter("id"));
        }
        if(id > 0)
        {
            try {
                Comics comic = ComicsDAO.find(id);
                List<TagDescriptions> tagDescriptions = TagDescriptionDAO.getAll();
                tagDescriptions = tagDescriptions.subList(1, tagDescriptions.size());
                request.setAttribute("tagDescriptions",tagDescriptions);
                
                request.setAttribute("comic", comic);
                request.getRequestDispatcher("/admin/update-comic.jsp").forward(request, response);
                
            } catch (SQLException ex) {
                Logger.getLogger(EditComicController.class.getName()).log(Level.SEVERE, null, ex);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        String author = request.getParameter("author");
        String status = request.getParameter("status");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        
        Part path = request.getPart("path");
        FileAny.delete(request, "assets/img/truyen"+id +"/thumbnail.jpg");
        String fileName = FileAny.upload(request, path, "assets/img/truyen"+id, "thumbnail.jpg");
        try {
            Comics comic = ComicsDAO.find(id);
            comic.setTitle(title);
            comic.setAuthor(author);
            comic.setStatus(status);
            comic.setDescription(description);
            ComicsDAO.update(comic);
            request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditComicController.class.getName()).log(Level.SEVERE, null, ex);
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
