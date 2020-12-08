/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import StatementsQueries.Insertcms;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Models.Usuario;
import javax.servlet.http.HttpSession;
import Models.Noticia;
import Models.mediacms;

/**
 *
 * @author angel
 */
@MultipartConfig(maxFileSize = 1000 * 1000 * 5, maxRequestSize = 1000 * 1000 * 25, fileSizeThreshold = 1000 * 1000)
public class cms extends HttpServlet {

   

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
        
         String titulo = request.getParameter("n_titulo");
         String descripcion = request.getParameter("n_descripcion");
         String texto = request.getParameter("n_noticia");
         String categoria = request.getParameter("n_categoria");
         HttpSession session = request.getSession();
          Usuario user = (Usuario)session.getAttribute("Usuario");
          int iduser = user.getId();
         
        String path = request.getServletContext().getRealPath("");
        Part file1 = request.getPart("image1");
        Part file2 = request.getPart("image2");
        Part file3 = request.getPart("image3");
        Part file4 = request.getPart("image4");
        Part video1 = request.getPart("video1");
        Part video2 = request.getPart("video2");
        Part video3 = request.getPart("video3");
        Part video4 = request.getPart("video4");
        String contentType1 = file1.getContentType();
        String contentType2 = file2.getContentType();
        String contentType3 = file3.getContentType();
        String contentType4 = file4.getContentType();
        String contentType5 = video1.getContentType();
        String contentType6 = video2.getContentType();
        String contentType7 = video3.getContentType();
        String contentType8 = video4.getContentType();
        
        String nameImage1 = file1.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType1);
        String nameImage2 = file2.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType2);
        String nameImage3 = file3.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType3);
        String nameImage4 = file4.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType4);
        String namevideo1 = video1.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType5);
         String namevideo2 = video2.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType6);
          String namevideo3 = video3.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType7);
           String namevideo4 = video4.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType8);
        
        String fullPath1 = path + "/" + FileUtils.RUTE_USER_IMAGE + "/" + nameImage1;
        String fullPath2 = path + "/" + FileUtils.RUTE_USER_IMAGE + "/" + nameImage2;
        String fullPath3 = path + "/" + FileUtils.RUTE_USER_IMAGE + "/" + nameImage3;
        String fullPath4 = path + "/" + FileUtils.RUTE_USER_IMAGE + "/" + nameImage4;
        String fullPath5 = path + "/" + FileUtils.RUTE_USER_VIDEO + "/" + namevideo1;
        String fullPath6 = path + "/" + FileUtils.RUTE_USER_VIDEO + "/" + namevideo2;
        String fullPath7 = path + "/" + FileUtils.RUTE_USER_VIDEO + "/" + namevideo3;
        String fullPath8 = path + "/" + FileUtils.RUTE_USER_VIDEO + "/" + namevideo4;
        String v1 = FileUtils.RUTE_USER_IMAGE + "/" + nameImage1;
        String v2 = FileUtils.RUTE_USER_IMAGE + "/" + nameImage2;
        String v3 = FileUtils.RUTE_USER_IMAGE + "/" + nameImage3;
        String v4 = FileUtils.RUTE_USER_IMAGE + "/" + nameImage4;
        String v5 = FileUtils.RUTE_USER_VIDEO + "/" + namevideo1;
        String v6 = FileUtils.RUTE_USER_VIDEO + "/" + namevideo2;
        String v7 = FileUtils.RUTE_USER_VIDEO + "/" + namevideo3;
        String v8 = FileUtils.RUTE_USER_VIDEO + "/" + namevideo4;
        file1.write(fullPath1);
        file2.write(fullPath2);
        file3.write(fullPath3);
        file4.write(fullPath4);
        video1.write(fullPath5);
        video2.write(fullPath6);
        video3.write(fullPath7);
        video4.write(fullPath8);
        Noticia data = new Noticia(titulo,categoria,descripcion,iduser,texto);
        mediacms media = new mediacms(v1,v2,v3,v4,v5,v6,v7,v8);
        Insertcms.Ins_cms(data,media);
        
         request.setAttribute("resultado", "Enviado");
        request.getRequestDispatcher("cms.jsp").forward(request, response);

        
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
