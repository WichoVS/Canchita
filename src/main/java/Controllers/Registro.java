/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Usuario;
import Models.Redsocial;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import StatementsQueries.SQ_Registro;
import java.io.File;
import javax.servlet.http.Part;

/**
 *
 * @author angel
 */
@WebServlet(name = "Registro", urlPatterns = {"/Registro"})
@MultipartConfig(maxFileSize = 1000 * 1000 * 5, maxRequestSize = 1000 * 1000 * 25, fileSizeThreshold = 1000 * 1000)
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


  
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
        
         String correo = request.getParameter("input-correo-r");
          String name = request.getParameter("input-usuario-r");
           String contra = request.getParameter("input-password-r");
           String face = request.getParameter("rs-facebook");
           String twit = request.getParameter("rs-twitter");
           
          String path = request.getServletContext().getRealPath("");
        File fileSaveDir = new File(path + FileUtils.RUTE_USER_IMAGE);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        Part file = request.getPart("image");
        String contentType = file.getContentType();
        String nameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + "/" + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
        file.write(fullPath);
           
           
           Usuario user = new Usuario(correo,name,contra,FileUtils.RUTE_USER_IMAGE + "/" + nameImage);
           Redsocial red1 = new Redsocial(face);
           Redsocial red2 = new Redsocial(twit);
           
         int caso = SQ_Registro.insertUser(user,red1,red2);
         
         PrintWriter out = response.getWriter();
         response.setContentType("text/html;charset=UTF-8");
         if( caso == 0){
             out.print("Problema al registrar");
       // request.setAttribute("registro", "Problema al registrar");
       // request.getRequestDispatcher("Registro.jsp").forward(request, response);
         }
         else{
             out.print("Registro Exitoso");
        // request.setAttribute("registro", "Registro exitioso");
       // request.getRequestDispatcher("Registro.jsp").forward(request, response); 
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
