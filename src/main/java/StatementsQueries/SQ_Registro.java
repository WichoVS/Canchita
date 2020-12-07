/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StatementsQueries;

import Models.Usuario;
import Models.Redsocial;
import DbConnection.DbConnection;
import Controllers.Registro;
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
public class SQ_Registro {
    
    
     public static int insertUser(Usuario user,Redsocial red1,Redsocial red2) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_registro_usaurio(?,?,?,?,?,?);");
            statement.setString(1, user.getCorreo());
            statement.setString(2, user.getNickname());
            statement.setString(3, user.getContra());
            statement.setString(6, user.getAvatar());
            statement.setString(4, red1.getUrl());
            statement.setString(5, red2.getUrl());
            
            
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
     
     public static Usuario Login(String name,String contra){
    Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_Login(?,?);");
           
            statement.setString(1, name);
              statement.setString(2, contra);
            ResultSet data = statement.executeQuery();
             while (data.next()) {
                int id = data.getInt(1);
                String correo = data.getString(2);
                String username = data.getString(3);
                String avatar = data.getString(4);
                String nom = data.getString(5);
                String  apell = data.getString(6);
                String nac = data.getString(7);
                boolean admin = data.getBoolean(8);
                boolean anonimo = data.getBoolean(9);
                boolean moderador = data.getBoolean(10);
                boolean  crea = data.getBoolean(11);
                boolean editor = data.getBoolean(12);
                
                return new Usuario(id,correo,username,avatar,nom,apell,nac,admin,anonimo,moderador,crea,editor);
            }
        }
     catch (SQLException ex) {
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
        return null;
}
    
     public static String getAvatar(String id){
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_Avatar(?);");
           
            statement.setString(1, id);
            ResultSet data = statement.executeQuery();
             while (data.next()) {
                String avatar = data.getString(2);
                return avatar;
            }
        }
     catch (SQLException ex) {
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
        return null;
     }
}
