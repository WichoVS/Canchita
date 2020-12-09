/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StatementsQueries;

/**
 *
 * @author angel
 */

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

public class SQ_Usernews {
   
     public static Usuario getuser(int iduser) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_getUsuario(?);");
            statement.setInt(1, iduser);
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               String nickname = data.getString(1);
               String nombre = data.getString(2);
               String apellido = data.getString(3);
               String avatar = data.getString(4);
               
                return new Usuario(nickname,avatar,nombre,apellido,true);
             }
              
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
        return null;
    }
     
    
    
}
