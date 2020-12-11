/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StatementsQueries;

import DbConnection.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author angel
 */
public class Marcadores {
    
    
    public static int ValidarNews(int idnoticia,int iduser) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_Marcador(?,?);");
            statement.setInt(1, idnoticia);
            statement.setInt(2, iduser);
         
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
