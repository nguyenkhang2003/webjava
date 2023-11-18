/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.admin;

import com.truyentranh.common.FileAny;
import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.dao.TagsDAO;
import com.truyentranh.model.Comics;
import com.truyentranh.model.Tags;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/admin/create-comic"})
@MultipartConfig
public class CreateComicController extends HttpServlet {

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
        int id = Integer.parseInt(request.getParameter("id"));
        String tags [] = request.getParameterValues("tag");
        
        
        for(String tag : tags)
        {
            
            try {
                TagsDAO.createOne(new Tags(id,tag));
            } catch (SQLException ex) {
                Logger.getLogger(UpdateTagComicController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        response.sendRedirect(request.getServletContext().getContextPath() + "/admin/comics");
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
            response.setContentType("text/html;charset=UTF-8");
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            List<Comics> comics = ComicsDAO.getAll();
            int maxID = 0;
            for(int i = 0; i < comics.size(); i++)
                if(maxID <= comics.get(i).getId())
                    maxID = comics.get(i).getId()+1;
            
            
            
            String author = request.getParameter("author");
            String status = request.getParameter("status");
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            
            System.out.println(author);
            System.out.println(status);
            System.out.println(title);
            System.out.println(description);
            
            Part path = request.getPart("path");
            FileAny.createFolder(request, "truyen"+maxID, "assets/img");
            Thread.sleep(5000);
            String fileName = FileAny.upload(request, path, "assets/img/truyen"+maxID, "thumbnail.jpg");
            String thumbnail = "\\assets\\img\\truyen" + maxID + "\\thumbnail.jpg";
            ComicsDAO.createOne(new Comics(title,description,thumbnail,author,status));
            
            
            response.sendRedirect(request.getServletContext().getContextPath() + "/admin/comics");
        } catch (SQLException ex) {
            Logger.getLogger(CreateComicController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InterruptedException ex) {
            Logger.getLogger(CreateComicController.class.getName()).log(Level.SEVERE, null, ex);
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
