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
import java.util.ArrayList;
import java.util.List;
import Models.Imagenes;
import Models.Videos;


import java.sql.ResultSet;


public class SQ_NEWS {
    
     public static List<Noticia> getnews(boolean validado) {
         List<Noticia> news = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_getnews_cms(?);");
            statement.setBoolean(1, validado);
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
     
     
     public static String getfirstimage(int id) {
         Connection con = null;
         String ruta = "";
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_new_oneimage(?);");
            statement.setInt(1, id);
             ResultSet data = statement.executeQuery();
             while (data.next()) {
                ruta = data.getString(1);
             }
                return ruta;
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
        return ruta;
    }
     
     
     
      public static Noticia getnew(boolean validado,int idnoticia) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_getnew(?,?);");
            statement.setBoolean(1, validado);
            statement.setInt(2, idnoticia);
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
               return new Noticia(id,tit,cat,desc,text,iduser,fecha,imagen);
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
     
     
       public static List<Imagenes> getimagenes(int idnoticia) {
           List<Imagenes> lista = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_getimagenes(?);");
            statement.setInt(1, idnoticia);
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               String ruta = data.getString(1);
                lista.add(new Imagenes(ruta));
             }
              return lista; 
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
        return lista;
    }
       
        public static List<Videos> getvideos(int idnoticia) {
           List<Videos> lista = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_getvideos(?);");
            statement.setInt(1, idnoticia);
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               String ruta = data.getString(1);
                lista.add(new Videos(ruta));
             }
              return lista; 
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
        return lista;
    }
     
        
           public static int ValidarNews(int idnoticia) {
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_ValidarNoticia(?);");
            statement.setInt(1, idnoticia);
         
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
           
           
           
           
           public static List<Noticia> getnews_marcador(int iduser) {
         List<Noticia> news = new ArrayList<>();
         Connection con = null;
        try {
            
            con = DbConnection.getConnection();
            
            CallableStatement statement = con.prepareCall("CALL SP_News_Marcador(?);");
            statement.setInt(1, iduser);
             ResultSet data = statement.executeQuery();
             while (data.next()) {
               int id = data.getInt(1);
               String tit = data.getString(2);
               String cat = data.getString(3);
               String text = data.getString(4);
               String desc = data.getString(5);
               int idu = data.getInt(6);
               String fecha = data.getString(7);
               String imagen = getfirstimage(id);
               news.add(new Noticia(id,tit,cat,desc,text,idu,fecha,imagen));
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
