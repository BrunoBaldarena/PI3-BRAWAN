package br.senac.pi3.brawan.model;

/**
 *
 * @author Guto
 */
public class Funcionario extends Pessoa{
    
    private int id; 
    private String cargo;
    private String login; 
    private String senha;
    private int idEmpresa;
    private String empresa;

    public String getLogin() {
        return login;
    }

    public void setLogin(String usuario) {
        this.login = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
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

}