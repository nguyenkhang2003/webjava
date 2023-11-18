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
@WebServlet(urlPatterns = {"/detail"})
public class DetailController extends HttpServlet {

    UsersDAO userDAO = new UsersDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
//        int page = request.getParameter("page") == null 
//                || (request.getParameter("page") != null && !isNumeric(Integer.parseInt(request.getParameter("page")))) ? 
//                1 : Integer.parseInt(request.getParameter("page"));
        int id;
        int page=1;
        String description;
        if(request.getParameter("id") != null && NumberUtils.isNumber((request.getParameter("id"))))
        {
            id = Integer.parseInt(request.getParameter("id"));
            if(request.getParameter("page") != null&& NumberUtils.isNumber((request.getParameter("page"))))
                   page= Integer.parseInt(request.getParameter("page"));
            Comics comics = ComicsDAO.find(id);
            List<Tags> tags = TagsDAO.find(id);
            List<Chapters> chapters = ChaptersDAO.getChapter(id);
            List<Chapters> lastIMG = ChaptersDAO.getLastIMG(id);
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
            System.out.println(id);
            System.out.println(page);           
            for(int i = 0; i < tags.size(); i++)
            {
                tagDescriptions.add(TagDescriptionDAO.find(tags.get(i).getTag()));
            }
            System.out.println(tagNames);
            
            
            
            List<Chapters> firstListChapters = null;
            
            List<Chapters> lastListChapters = null;
            if(chapters != null)
            {
                List<Chapters> cloneChapters = new ArrayList<>(chapters);
            for(int i = 0; i < cloneChapters.size() - 1; i++)
                for(int j = i+1; j < cloneChapters.size(); j++)
                    if(cloneChapters.get(i).getChapter()==cloneChapters.get(j).getChapter())
                        cloneChapters.remove(j);
            for(int i = 0; i < cloneChapters.size() - 1; i++)
                for(int j = i+1; j < cloneChapters.size(); j++)
                    if(cloneChapters.get(i).getChapter()== cloneChapters.get(j).getChapter())
                        cloneChapters.remove(j);
            for(int i = 0; i < cloneChapters.size() - 1; i++)
                for(int j = i+1; j < cloneChapters.size(); j++)
                    if(cloneChapters.get(i).getChapter()== cloneChapters.get(j).getChapter())
                        cloneChapters.remove(j);
                if(cloneChapters.size() > 10)
                {
                    System.out.println("dfgdfgdgdfgdfgdfg");
                    firstListChapters = cloneChapters.subList(0, 10);
                    lastListChapters = cloneChapters.subList(10, cloneChapters.size());
                }
                else
                {
                    
                    firstListChapters = cloneChapters.subList(0, cloneChapters.size());
                    
                }
                if(lastListChapters != null)
                    request.setAttribute("lastListChapter", lastListChapters);
                request.setAttribute("firstListChapter", firstListChapters);
                request.setAttribute("updateTime", firstListChapters.get(firstListChapters.size()-1).getCreated().toString());
                List<Comics> listTop10=ComicsDAO.getTop10();
        request.setAttribute("listTop10",listTop10);
            }
            else
            {
                request.setAttribute("errNullChapter", "Truyện này hiện chưa có chương nào");
            }                      
            List<Comics> listTop10=ComicsDAO.getTop10();
            request.setAttribute("listTop10",listTop10);
            request.setAttribute("comics", comics);
            request.setAttribute("tags", tagDescriptions);                                                
            request.setAttribute("getChapterCount",getChapterCount);
            

            request.setAttribute("lastIMG",lastIMG);
            request.getRequestDispatcher("guest/detail.jsp").forward(request, response);
        }
        else
            response.sendRedirect(request.getServletContext().getContextPath());
                  
        
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
            Logger.getLogger(DetailController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DetailController.class.getName()).log(Level.SEVERE, null, ex);
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
