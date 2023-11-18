/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.home;

import com.truyentranh.dao.ComicsDAO;
import com.truyentranh.dao.TagDescriptionDAO;
import com.truyentranh.dao.UsersDAO;
import com.truyentranh.model.Comics;
import com.truyentranh.model.TagDescriptions;
import com.truyentranh.model.Users;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.math.NumberUtils;


/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {""})
public class HomeController extends HttpServlet {

    UsersDAO userDAO = new UsersDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        

        int page = 1;
        if(request.getParameter("page") != null && NumberUtils.isNumber((request.getParameter("page"))))
        {
            page = Integer.parseInt(request.getParameter("page"));
        }
        
        
        List<Comics> comics = ComicsDAO.getAll();
        
        Collections.reverse(comics);
        comics = comics.subList((page - 1) * 20, page * 20);
        
        List<Comics> top10NewComics = ComicsDAO.getAll();
        Collections.reverse(top10NewComics);
        top10NewComics = top10NewComics.subList(0, 10);
        
        List<Comics> listTop10=ComicsDAO.getTop10();
        
        
        List<TagDescriptions> tagDescriptions = TagDescriptionDAO.getAll();
        
        request.setAttribute("tagDescriptions",tagDescriptions);
        
        request.setAttribute("comics", comics);
        request.setAttribute("top10NewComics", top10NewComics);
        request.setAttribute("listTop10",listTop10);
        
        
        request.getRequestDispatcher("guest/index.jsp").forward(request, response);
        
        
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
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
