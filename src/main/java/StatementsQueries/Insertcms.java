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

import DbConnection.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import Models.Noticia;
import Models.mediacms;

public class Insertcms {
    
     public static int Ins_cms(Noticia data,mediacms media) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_I_cms(?,?,?,?,?,?,?,?,?,?,?,?,?);");
            statement.setString(1, data.getTitulo());
            statement.setString(2, data.getDescripcion());
            statement.setInt(3, data.getIduser());
            statement.setString(4, data.getCategoria());
            statement.setString(5, data.getText());
            statement.setString(6, media.getV1());
           statement.setString(7, media.getV2());
           statement.setString(8, media.getV3());
           statement.setString(9, media.getV4());
           statement.setString(10, media.getV5());
           statement.setString(11, media.getV6());
           statement.setString(12, media.getV7());
           statement.setString(13, media.getV8());
            
            
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
