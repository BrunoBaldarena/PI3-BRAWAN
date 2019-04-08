/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.util.ConnectionFactory;
import br.senac.pi3.brawan.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import br.senac.pi3.brawan.entidade.EntidadeCliente;

/**
 *
 * @author Guto
 */
public class ClienteDAO implements EntidadeCliente {

    Connection connection;
    
    public ClienteDAO(){
        connection = ConnectionFactory.getConnection();
    }
    
    @Override
    public void inserir(Cliente cliente) {
        try {
            String SQL = "INSERT INTO CLIENTE (nome, rg, cpf, nacionalidade, bairro, cidade, cep, telefone, email) VALUES "
                    + "(?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = connection.prepareStatement(SQL);
            
            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getRg());
            ps.setString(3, cliente.getCpf());
            ps.setString(4, cliente.getNacionalidade());
            ps.setString(5, cliente.getBairro());
            ps.setString(6, cliente.getCidade());
            ps.setString(7, cliente.getCep());
            ps.setString(8, cliente.getTelefone());
            ps.setString(9, cliente.getEmail());
            
            ps.executeQuery();
            
            ps.close();
            connection.close();
                                  
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void remove(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cliente> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Cliente buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Editar(Cliente cliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
