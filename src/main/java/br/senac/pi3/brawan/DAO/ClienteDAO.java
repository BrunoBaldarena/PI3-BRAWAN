package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.utils.ConnectionUtils;
import br.senac.pi3.brawan.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ClienteDAO {

    Connection connection = ConnectionUtils.getConnection();

  
    public void inserir(Cliente cliente) {
      
        try {
            
            String SQL = "INSERT INTO CLIENTE (nome, rg, cpf, sexo, telefone,"
                    + " email, endereco, bairro, cidade, uf, cep) VALUES "
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

    
    public ArrayList<Cliente> listarTudo() {
        String SQL = "SELECT * FROM CLIENTE";
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        try{
            
           Statement st = connection.createStatement();
           ResultSet rs = st.executeQuery(SQL);
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("ID"));
                cliente.setNome(rs.getString("NOME"));
                cliente.setCpf(rs.getString("CPF"));
                cliente.setTelefone(rs.getString("TELEFONE"));
                cliente.setEmail(rs.getString("EMAIL"));
                lista.add(cliente);                
            }
            st.close();
            connection.close();
            rs.close();
            
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
       return lista;
    }
    
     public ArrayList<Cliente> listarID(int id) {
        String SQL = "SELECT * FROM CLIENTE WHERE ID = "+ id;
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        try{
           Statement st = connection.createStatement();
           ResultSet rs = st.executeQuery(SQL);
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("ID"));
                cliente.setNome(rs.getString("NOME"));
                cliente.setCpf(rs.getString("CPF"));
                cliente.setTelefone(rs.getString("TELEFONE"));
                cliente.setEmail(rs.getString("EMAIL"));
                lista.add(cliente);               
            }
      
            st.close();
            connection.close();
            rs.close();
            
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
       return lista;
       
       
    }

    public void Editar(Cliente cliente) {
        
        try {

            String SQL = "UPDATE CLIENTE SET NOME=?, CPF=?, TELEFONE=?, EMAIL=? WHERE ID=?";

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setString(1, cliente.getNome());
           //ps.setString(2, cliente.getRg());
            ps.setString(2, cliente.getCpf());
            //ps.setString(4, cliente.getSexo());
            ps.setString(3, cliente.getTelefone());
            ps.setString(4, cliente.getEmail());
            //ps.setString(7, cliente.getEndereco());
            //ps.setString(8, cliente.getBairro());
            //ps.setString(9, cliente.getCidade());
            //ps.setString(10, cliente.getUf());
            //ps.setString(11, cliente.getCep());
            ps.setInt(5, (int) cliente.getId());

            ps.execute();
            ps.close();
            connection.close();

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    
}
