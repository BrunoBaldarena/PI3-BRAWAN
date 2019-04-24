/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.pi3.brawan.teste;

import br.senac.pi3.brawan.DAO.ClienteDAO;
import br.senac.pi3.brawan.model.Pessoa;
import br.senac.pi3.brawan.utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Guto
 */
public class teste {

    public static void main(String[] args) {
        
            // conectando
            
            /*
            try {
            Connection con = new ConnectionFactory().getConnection();
            
            
// cria um preparedStatement
            String SQL = "INSERT INTO CLIENTE (nome, rg, cpf, bairro, cidade, cep, telefone, email,sexo,endereco,uf) VALUES "
                    + "(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(SQL);

// preenche os valores

            ps.setString(1, "TESTE");
            ps.setString(2, "5454224");
            ps.setString(3, "1324354");
            ps.setString(4, "TESTE");
            ps.setString(5, "TESTE");
            ps.setString(6, "TESTE");
            ps.setString(7, "TESTE");
            ps.setString(8, "TESTE@TESTE.COM");
            ps.setString(9, "M");
            ps.setString(10, "TESTE");
            ps.setString(11, "SP");
// executa
            ps.execute();
            ps.close();
            System.out.println("Gravado!");
            con.close();
        
        
        } catch (SQLException ex) {
            Logger.getLogger(teste.class.getName()).log(Level.SEVERE, null, ex);
        }

*/
            
            
        Pessoa cliente = new Pessoa();
            
        cliente.setNome("TESTE");
        cliente.setRg("TESTE");
        cliente.setCpf("2345");
        cliente.setSexo("M");
        cliente.setTelefone("TESTE");
        cliente.setEmail("TESTE@TESTE.COM");
        cliente.setEndereco("TESTE");
        cliente.setBairro("TESTE");
        cliente.setCidade("TESTE");
        cliente.setUf("SP");
        cliente.setCep("3456789");
        
        ClienteDAO dao = new ClienteDAO();
        dao.inserir(cliente);

        System.out.println("GRAVADO");
    }



}
