package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.model.Produto;
import br.senac.pi3.brawan.utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Guto
 */
public class ProdutoDAO {

    Connection connection = ConnectionUtils.getConnection();

    public void inserir(Produto produto) {

        try {

            String SQL = "INSERT INTO PRODUTO (nome, quantidade, categoria, "
                    + "marca, tamanho, vl_unitario, descricao, tg_status) VALUES "
                    + "(?,?,?,?,?,?,?,0)";

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setString(1, produto.getNome());
            ps.setInt(2, produto.getQuantidade());
            ps.setString(3, produto.getCategoria());
            ps.setString(4, produto.getMarca());
            ps.setString(5, produto.getTamanho());
            ps.setString(6, produto.getValorUnitario());
            ps.setString(7, produto.getDescricao());

            ps.execute();
            ps.close();
            connection.close();

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    public ArrayList<Produto> listarTudo() {
        String SQL = "SELECT * FROM PRODUTO WHERE TG_STATUS = 0";
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
        String SQL = "SELECT * FROM PRODUTO WHERE ID = " + id +" AND TG_STATUS=0";
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
                produto.setDescricao(rs.getString("DESCRICAO"));

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
    
    public void inativar(Produto produto)
            throws SQLException, Exception {
        try {
            String sql = "UPDATE PRODUTO SET TG_STATUS =1 WHERE ID = ?";

            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, produto.getId());

            pst.execute();
            pst.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
    public void editar(Produto produto) {

        try {

            String SQL = "UPDATE PRODUTO NOME=?, QUANTIDADE=?, CATEGORIA=?,MARCA=?,"
                    + " TAMANHO=?, VL_UNITARIO=?, DESCRICAO=? WHERE ID=?"; 

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setString(1, produto.getNome());
            ps.setInt(2, produto.getQuantidade());
            ps.setString(3, produto.getCategoria());
            ps.setString(4, produto.getMarca());
            ps.setString(5, produto.getTamanho());
            ps.setString(6, produto.getValorUnitario());
            ps.setString(7, produto.getDescricao());
            ps.setInt(8, produto.getId());

            ps.execute();
            ps.close();
            connection.close();

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

}
