/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author angel
 */
public class Redsocial {
    public int id;
    public String red;
    public String url;
    public int idusuario; 
    
    public Redsocial (String url){
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public String getRed() {
        return red;
    }

    public String getUrl() {
        return url;
    }

    public int getIdusuario() {
        return idusuario;
    }
            
}
