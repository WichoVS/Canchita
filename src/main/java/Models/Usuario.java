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
public class Usuario {
    private String correo ;
    private String nickname;
    private String avatar; // path de la imagen
    private String contra;
    private String nombre;
    private String apellido;
    private String nacimiento;
    private boolean admin;
    private boolean anonimo;
    private boolean moderador;
    private boolean creador;
    private boolean editor;
    
    public Usuario(String correo,String nickname,String contra, String avatar){
        this.correo = correo;
        this.nickname = nickname;
        this.avatar = avatar;
        this.contra = contra;
        
    }

    public String getCorreo() {
        return correo;
    }

    public String getNickname() {
        return nickname;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getContra() {
        return contra;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getNacimiento() {
        return nacimiento;
    }

    public boolean isAdmin() {
        return admin;
    }

    public boolean isAnonimo() {
        return anonimo;
    }

    public boolean isModerador() {
        return moderador;
    }

    public boolean isCreador() {
        return creador;
    }

    public boolean isEditor() {
        return editor;
    }
    
    
}
