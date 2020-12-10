/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StatementsQueries;

import DbConnection.DbConnection;
import Models.Noticia;
import static StatementsQueries.SQ_NEWS.getfirstimage;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luis
 */
public class SQ_NotiDepo {
    
         public static List<Noticia> getnews() {
         List<Noticia> news = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_NotiDeportes_News();");
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               int id = data.getInt(1);
               String tit = data.getString(2);
               String cat = data.getString(3);
               String text = data.getString(4);
               String desc = data.getString(5);
               int iduser = data.getInt(6);
               String fecha = data.getString(7);
               String imagen = getfirstimage(id);
               news.add(new Noticia(id,tit,cat,desc,text,iduser,fecha,imagen));
             }
                return news;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage() + "HAY UN ERROR");
        } finally
        {
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(SQ_Registro.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            
        }
        return news;
    }
    
         
          public static List<Noticia> getnews2() {
         List<Noticia> news = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_NotiEsports_News();");
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               int id = data.getInt(1);
               String tit = data.getString(2);
               String cat = data.getString(3);
               String text = data.getString(4);
               String desc = data.getString(5);
               int iduser = data.getInt(6);
               String fecha = data.getString(7);
               String imagen = getfirstimage(id);
               news.add(new Noticia(id,tit,cat,desc,text,iduser,fecha,imagen));
             }
                return news;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage() + "HAY UN ERROR");
        } finally
        {
           if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(SQ_Registro.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            
        }
        return news;
    }
         
         
         
}
