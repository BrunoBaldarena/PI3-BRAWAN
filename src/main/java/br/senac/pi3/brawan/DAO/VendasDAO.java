package br.senac.pi3.brawan.DAO;

import br.senac.pi3.brawan.model.Produto;
import br.senac.pi3.brawan.model.Venda;
import br.senac.pi3.brawan.utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class VendasDAO {

    Connection connection = ConnectionUtils.getConnection();

    public ArrayList<Produto> listarCod(String cod) {
        String SQL = "SELECT * FROM PRODUTO WHERE CODIGO = " + cod + " AND TG_STATUS=0";
        ArrayList<Produto> lista = new ArrayList<Produto>();
        try {

            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(SQL);

            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("ID"));
                produto.setCodigo(rs.getString("CODIGO"));
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

    public void inserirItemVenda(int cod, float soma) {

        try {

            String SQL = "INSERT INTO ITEMVENDA (FK_PRODUTO, DH_INCLUSAO, SOMA) VALUES "
                    + "(?,NOW(),?)";

            PreparedStatement ps = connection.prepareStatement(SQL);

            ps.setInt(1, cod);
            ps.setFloat(2, soma);

            ps.execute();
            

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }

    }
    
     public void finalizarVenda(Venda venda) {

        try {

            String SQL = "INSERT INTO FI_VENDA (FK_CLIENTE, QUANTIDADE, DT_VENDA,VL_TOTAL,DH_INCLUSAO) VALUES "
                    + "(17,?,NOW(),?,NOW())";

            PreparedStatement ps = connection.prepareStatement(SQL);
            ps.setInt(1,venda.getQuantidade());
            ps.setFloat(2,venda.getValorTotal());
            ps.execute();
            

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }

    }

}
