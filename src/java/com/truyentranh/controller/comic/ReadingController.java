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
@WebServlet(urlPatterns = {"/reading"})
public class ReadingController extends HttpServlet {

    UsersDAO userDAO = new UsersDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
//        int page = request.getParameter("page") == null 
//                || (request.getParameter("page") != null && !isNumeric(Integer.parseInt(request.getParameter("page")))) ? 
//                1 : Integer.parseInt(request.getParameter("page"));
        int id = 1;
        int chapter=1;
        int page=1;
        if(request.getParameter("id") != null && NumberUtils.isNumber((request.getParameter("id"))))
        {
            id = Integer.parseInt(request.getParameter("id"));
        }
        if(request.getParameter("chapter") != null && NumberUtils.isNumber((request.getParameter("chapter"))))
        {
            chapter = Integer.parseInt(request.getParameter("chapter"));
        }  
        if(request.getParameter("page") != null && NumberUtils.isNumber((request.getParameter("page"))))
        {
            page = Integer.parseInt(request.getParameter("page"));
        }         
        
            
            System.out.println(id);    
            System.out.println(chapter); 
            Comics comics = ComicsDAO.find(id);
            comics.setViews(comics.getViews() + 1);
            ComicsDAO.update(comics);
            
            List<Tags> tags = TagsDAO.find(id);
            List<Chapters> chapters = ChaptersDAO.getChapterContents(id,chapter);
            List<TagDescriptions> tagDescriptions = new ArrayList<>();
            List<String> tagNames = new ArrayList<>();
            List<Integer> getChapterCount = ChaptersDAO.getChapterCount(id);
            List<Comments> Comment = CommentsDAO.find(id);
  
            
            if(Comment != null)
            {
                if(Comment.size() > 10)
                    Comment = Comment.subList((page -1)*10,page*10);
                request.setAttribute("Comment",Comment);
            }
            else
            {
                request.setAttribute("errNullComment", "Truyện này hiện chưa có bình luận nào");
            }
            for(int i = 0; i < tags.size(); i++)
            {
                tagDescriptions.add(TagDescriptionDAO.find(tags.get(i).getTag()));
            }
            System.out.println(tagNames);
            
            request.setAttribute("comics", comics);
            request.setAttribute("tags", tagDescriptions);
            request.setAttribute("chapters", chapters);
            request.setAttribute("chapter",chapter);
            request.setAttribute("getChapterCount",getChapterCount);
            request.setAttribute("Comment",Comment);            
            request.getRequestDispatcher("guest/reading.jsp").forward(request, response);

        
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
            Logger.getLogger(ReadingController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ReadingController.class.getName()).log(Level.SEVERE, null, ex);
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
