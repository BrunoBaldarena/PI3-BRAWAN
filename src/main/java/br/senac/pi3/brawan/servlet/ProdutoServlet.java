package br.senac.pi3.brawan.servlet;

import br.senac.pi3.brawan.DAO.ProdutoDAO;
import br.senac.pi3.brawan.model.Produto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Guto
 */
@WebServlet("/CadastrarProduto")
public class ProdutoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nomeProduto = request.getParameter("nomeProduto");
        String quantidade = request.getParameter("quantidadeProduto");
        String categoria = request.getParameter("categoriaProduto");
        String marca = request.getParameter("marcaProduto");
        String tamanho = request.getParameter("tamanhoProduto");
        String valorUnitario = request.getParameter("valorProduto"); 
        String descricao = request.getParameter("comentarioProduto");

        
        Produto produto = new Produto(); 
        
        produto.setNomeProduto(nomeProduto);
        produto.setQuantidade(Integer.parseInt(quantidade));
        produto.setCategoria(categoria);
        produto.setMarca(marca);
        produto.setTamanho(tamanho);
        produto.setValorUnitario(valorUnitario);
        produto.setDescricao(descricao);
        
        ProdutoDAO dao = new ProdutoDAO(); 
        dao.inserir(produto);
        response.sendRedirect("./jsp/CadastroProduto.jsp");
        
    }

}
