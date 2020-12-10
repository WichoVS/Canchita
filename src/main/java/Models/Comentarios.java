/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.logging.Logger;

/**
 *
 * @author angel
 */
public class Comentarios {

    public int getId() {
        return id;
    }

    public String getNickname() {
        return nickname;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getTexto() {
        return texto;
    }

    public String getFecha() {
        return fecha;
    }

    public Comentarios(int id, String nickname, String avatar, String texto, String fecha) {
        this.id = id;
        this.nickname = nickname;
        this.avatar = avatar;
        this.texto = texto;
        this.fecha = fecha;
    }

   

  
    
    private  int id;
    private  String nickname;
    private  String avatar;
    private  String texto;
    private  String fecha;

    
}
