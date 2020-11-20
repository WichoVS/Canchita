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
/**
 *
 * @author angel
 */
public class SQ_Registro {
    
    
     public static int insertUser(Usuario user,Redsocial red1,Redsocial red2) {
        try {
            Connection con = DbConnection.getConnection();
            
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
        } finally {
        }
        return 0;
    }
     
     
     
}
