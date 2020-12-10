/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Imagenes;
import Models.Noticia;
import Models.Usuario;
import Models.Videos;
import StatementsQueries.SQ_Comentario;
import StatementsQueries.SQ_NEWS;
import StatementsQueries.SQ_Usernews;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Models.Comentarios;

/**
 *
 * @author angel
 */
public class ShowNoticia extends HttpServlet {

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
         String idnoticia = request.getParameter("idnoticia");
       Noticia news = SQ_NEWS.getnew(true,Integer.parseInt(idnoticia));
       //String imagen = SQ_NEWS.getfirstimage(Integer.parseInt(idnoticia));
       List<Imagenes> imagenes = SQ_NEWS.getimagenes(Integer.parseInt(idnoticia));
       List<Videos> videos = SQ_NEWS.getvideos(Integer.parseInt(idnoticia));
       Usuario usernews = SQ_Usernews.getuser(news.getIduser());
       List<Comentarios> comentarios = SQ_Comentario.getComentarios(Integer.parseInt(idnoticia)) ;
       
        request.setAttribute("comentarios",comentarios);
       request.setAttribute("usernews",usernews);
       request.setAttribute("imagenes", imagenes);
       request.setAttribute("videos", videos);
       request.setAttribute("noticias", news);
       request.setAttribute("validado", "si");
      // request.setAttribute("mainimage", imagen);
       request.getRequestDispatcher("noticias.jsp").forward(request, response);
        
        
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
        processRequest(request, response);
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
