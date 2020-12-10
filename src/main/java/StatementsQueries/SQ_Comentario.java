/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StatementsQueries;

import DbConnection.DbConnection;
import Models.Comentarios;
import Models.mediacms;
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
 * @author angel
 */
public class SQ_Comentario {
    
    
    public static int Ins_Comentarios(int idnoticia,int iduser,String com) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_I_Comentario(?,?,?);");
            statement.setInt(1, idnoticia);
            statement.setInt(2, iduser);
            statement.setString(3, com);
            
            
            
            return statement.executeUpdate();
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
        return 0;
    }
    
     public static List<Comentarios> getComentarios(int idnot) {
         List<Comentarios> news = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_Comentario(?);");
            statement.setInt(1, idnot);
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               int id = data.getInt(1);
               String tit = data.getString(2);
               String cat = data.getString(3);
               String text = data.getString(4);
               String desc = data.getString(5);
               
               news.add(new Comentarios(id,tit,cat,text,desc));
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
    
    
     public static int Eli_Comentarios(int idcom) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_Delete(?);");
            statement.setInt(1, idcom);
            
            
            return statement.executeUpdate();
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
        return 0;
    }
}
