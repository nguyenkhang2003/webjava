/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.controller.comic;

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

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/search"})
public class ResultSearchController extends HttpServlet {

    UsersDAO userDAO = new UsersDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
//        int page = request.getParameter("page") == null 
//                || (request.getParameter("page") != null && !isNumeric(Integer.parseInt(request.getParameter("page")))) ? 
//                1 : Integer.parseInt(request.getParameter("page"));



        String q = "123";
        if(request.getParameter("q") != null){
            q=request.getParameter("q");
            System.out.println(q);
        }
        String requestComic=q;
        q=q.toUpperCase();
        System.out.println(q);        
        List<Comics> comics=ComicsDAO.getAll();
        List<Comics> resultsSearch=new ArrayList<>();
        System.out.println(comics.size());
        for(int i=0;i<comics.size();i++)
        {
           System.out.println(comics.get(i).getTitle().indexOf(q));
            if(comics.get(i).getTitle().indexOf(q)>=0){
                resultsSearch.add(comics.get(i));
                
            }
        }
        
        System.out.println(resultsSearch.toString());
        request.setAttribute("resultsSearch", resultsSearch);
        request.setAttribute("requestComic", requestComic);
        
        request.getRequestDispatcher("guest/result-search.jsp").forward(request, response);
        
                   
            
        
        
        
        
//        int id = 1;
//        Comics comic = ComicsDAO.find(1);
//        comic.setViewscomics(comic.getViews()+1);
//        
//        ComicsDAO.update(comic);
        
        
        //Mày thấy cái loèn gì đây khn :v t thấy cái loèn nào c có cái này nên t tưởng bỏ cho zui :v
        // dkmm m thấy jsp là m phải biết nó là bắn view chứ, nó có khác đéo gì m thấy bcs thì dùndnddeeer djt đâu, không lẽ m nhìn bcs m nói nó để ăn :V thế cái dòng trên làm gì :v
        
        // dkmm dòng trên là set thuộc tính cho jsp nó xài,:V
        
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
            Logger.getLogger(ResultSearchController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ResultSearchController.class.getName()).log(Level.SEVERE, null, ex);
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
