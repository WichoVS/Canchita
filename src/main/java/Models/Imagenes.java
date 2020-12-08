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
public class Imagenes {
    
    private int id;
    private int idnoticia;
    private String ruta;

    public Imagenes(int id, int idnoticia, String ruta) {
        this.id = id;
        this.idnoticia = idnoticia;
        this.ruta = ruta;
    }

    public int getId() {
        return id;
    }

    public int getIdnoticia() {
        return idnoticia;
    }

    public String getRuta() {
        return ruta;
    }
    
    
    
}
