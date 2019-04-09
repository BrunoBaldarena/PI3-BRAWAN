package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.model.Produto;
import br.senac.pi3.brawan.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Guto
 */
public class ProdutoDAO {
    
    public void inserir(Produto produto) {
         Connection connection = ConnectionFactory.getConnection();
        
        try {
            
            String SQL = "INSERT INTO PRODUTO (nome, quantidade, categoria, marca, tamanho, vl_unitario, descricao) VALUES "
                    + "(?,?,?,?,?,?,?)";
            
            PreparedStatement ps = connection.prepareStatement(SQL);
            
            ps.setString(1, produto.getNomeProduto());
            ps.setInt(2, produto.getQuantidade());
            ps.setString(3, produto.getCategoria());
            ps.setString(4, produto.getMarca());
            ps.setString(5, produto.getTamanho());
            ps.setString(6, produto.getValorUnitario());
            ps.setString(7,produto.getDescricao());

            ps.execute();
            JOptionPane.showMessageDialog(null, "Produto cadastrado com sucesso!");
            ps.close();
            connection.close();
                                  
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    
}
