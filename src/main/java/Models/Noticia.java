/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Luis
 */
public class Noticia {

    public Noticia( String titulo,String categoria ,String descripcion, int iduser,String texto) {
        this.text = texto;
        this.titulo = titulo;
        this.categoria = categoria;
        this.descripcion = descripcion;
        this.check = check;
        this.iduser = iduser;
    }
    
    
    private int id;
    private String titulo;
    private String categoria;
    private String descripcion;
    private String text;

    public String getText() {
        return text;
    }
    private boolean check;
    private int iduser;
    private String fecha;

    public int getId() {
        return id;
    }
    
     public String getCategoria() {
        return categoria;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public boolean isCheck() {
        return check;
    }

    public int getIduser() {
        return iduser;
    }

    public String getFecha() {
        return fecha;
    }
    
    
}
