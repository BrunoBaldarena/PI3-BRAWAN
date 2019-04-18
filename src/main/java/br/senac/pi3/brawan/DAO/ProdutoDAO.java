package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.model.Produto;
import br.senac.pi3.brawan.utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Guto
 */
public class ProdutoDAO {

    Connection connection = ConnectionUtils.getConnection();

    public void inserir(Produto produto) {

        try {

            String SQL = "INSERT INTO PRODUTO (nome, quantidade, categoria, "
                    + "marca, tamanho, vl_unitario, descricao) VALUES "
                    + "(?,?,?,?,?,?,?)";

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setString(1, produto.getNome());
            ps.setInt(2, produto.getQuantidade());
            ps.setString(3, produto.getCategoria());
            ps.setString(4, produto.getMarca());
            ps.setString(5, produto.getTamanho());
            ps.setString(6, produto.getValorUnitario());
            ps.setString(7, produto.getDescricao());

            ps.execute();
            JOptionPane.showMessageDialog(null, "Produto cadastrado com sucesso!");
            ps.close();
            connection.close();

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    public ArrayList<Produto> listarTudo() {
        String SQL = "SELECT * FROM PRODUTO";
        ArrayList<Produto> lista = new ArrayList<Produto>();
        try {

            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(SQL);

            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("ID"));
                produto.setNome(rs.getString("NOME"));
                produto.setQuantidade(rs.getInt("QUANTIDADE"));
                produto.setCategoria(rs.getString("CATEGORIA"));
                produto.setMarca(rs.getString("MARCA"));
                produto.setTamanho(rs.getString("TAMANHO"));
                produto.setValorUnitario(rs.getString("VL_UNITARIO"));

                lista.add(produto);

            }

            st.close();
            connection.close();
            rs.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return lista;

    }

   
    public ArrayList<Produto> listarID(int id) {
        String SQL = "SELECT * FROM PRODUTO WHERE ID = " + id;
        ArrayList<Produto> lista = new ArrayList<Produto>();
        try {

            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(SQL);

            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("ID"));
                produto.setNome(rs.getString("NOME"));
                produto.setQuantidade(rs.getInt("QUANTIDADE"));
                produto.setCategoria(rs.getString("CATEGORIA"));
                produto.setMarca(rs.getString("MARCA"));
                produto.setTamanho(rs.getString("TAMANHO"));
                produto.setValorUnitario(rs.getString("VL_UNITARIO"));
                lista.add(produto);
            }

            st.close();
            connection.close();
            rs.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return lista;
    }

}
