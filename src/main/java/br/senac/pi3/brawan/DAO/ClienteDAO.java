package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.util.ConnectionFactory;
import br.senac.pi3.brawan.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Guto
 */
public class ClienteDAO {

    Connection connection = ConnectionFactory.getConnection();

  
    public void inserir(Cliente cliente) {
        try {
            
            String SQL = "INSERT INTO CLIENTE (nome, rg, cpf, sexo, telefone, email, endereco, bairro, cidade, uf, cep) VALUES "
                    + "(?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = connection.prepareStatement(SQL);
            
            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getRg());
            ps.setString(3, cliente.getCpf());
            ps.setString(4, cliente.getSexo());
            ps.setString(5, cliente.getTelefone());
            ps.setString(6, cliente.getEmail());
            ps.setString(7,cliente.getEndereco());
            ps.setString(8, cliente.getBairro());
            ps.setString(9, cliente.getCidade());
            ps.setString(10,cliente.getUf());
            ps.setString(11, cliente.getCep());

   
            ps.execute();
            ps.close();
            connection.close();
                                  
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }


    public void remove(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Cliente> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Cliente buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void Editar(Cliente cliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
