package br.senac.pi3.brawan.model;

import java.io.Serializable;
import org.mindrot.jbcrypt.BCrypt;


/**
 *
 * @author Guto
 */
public class Funcionario extends Pessoa implements Serializable {

    private int id;
    private String cargo;
    private String login;
    private int idEmpresa;
    private String empresa;
     private String senha;

    public Funcionario() {
        
        
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    /*
       public Funcionario(String senhaAberta) {
 
        setSenha(senhaAberta);
       
    }

 */

    public String getLogin() {
        return login;
    }

    public void setLogin(String usuario) {
        this.login = usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }
    
    /*
    public final void setSenha(String senhaAberta) {
        this.hashSenha = BCrypt.hashpw(senhaAberta, BCrypt.gensalt());
    }
    
   
       public String getHashSenha() {
        return hashSenha;
    }

      
    public boolean validarSenha(String senhaAberta) {
        return BCrypt.checkpw(senhaAberta, hashSenha);
    }

    */

}
