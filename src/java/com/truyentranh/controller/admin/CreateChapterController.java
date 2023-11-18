/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.admin;

import com.truyentranh.common.FileAny;
import com.truyentranh.dao.ChaptersDAO;
import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.model.Chapters;
import com.truyentranh.model.Comics;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
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
@WebServlet(urlPatterns = {"/admin/create-chapter"})
@MultipartConfig
public class CreateChapterController extends HttpServlet {

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
            
            request.setCharacterEncoding("UTF-8");
            
            int comicid = Integer.parseInt(request.getParameter("comicid"));
            int chapter = Integer.parseInt(request.getParameter("chapter"));
            
            
            
            FileAny.createFolder(request, "chap"+chapter, "assets/img/truyen"+comicid);
            Thread.sleep(5000);
            
            Part path = request.getPart("path");
            
            Collection<Part> parts = request.getParts()
                .stream().filter(part -> part.getContentType() != null)
                .collect(Collectors.toList());
            
            int imgId = 1;
            for(Part part : parts) {
                String fileName = FileAny.upload(request, part, "assets/img/truyen"+comicid+"/chap"+chapter,"anh"+imgId+".jpg");
                String URL = "\\assets\\img\\truyen" + comicid + "\\chap" + chapter + "\\anh" + imgId + ".jpg";
                Chapters oneChapter = new Chapters(comicid,chapter,imgId,URL);
                ChaptersDAO.createOne(oneChapter);
                imgId++;
            }
            response.sendRedirect(request.getServletContext().getContextPath() + "/admin/chapters");
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
