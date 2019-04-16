package br.senac.pi3.brawan.controller;

import br.senac.pi3.brawan.DAO.ProdutoDAO;
import br.senac.pi3.brawan.model.Produto;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Guto
 */

@WebServlet(name = "ProdutoServlet", urlPatterns = {"/CadastrarProduto", "/ConsultarProduto"})
public class ProdutoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String pagina = request.getRequestURI();
        
         try {
            if (pagina.endsWith("ConsultarProduto")) {
                produtoConsultar(request, response);
            }
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage());
        }

    }
    
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String pagina = request.getRequestURI();

        try {
            if (pagina.endsWith("CadastrarProduto")) {
                produtoSalvar(request, response);
            }
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage());
        }

    }

    protected void produtoSalvar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nomeProduto");
        String quantidade = request.getParameter("quantidadeProduto");
        String categoria = request.getParameter("categoriaProduto");
        String marca = request.getParameter("marcaProduto");
        String tamanho = request.getParameter("tamanhoProduto");
        String valorUnitario = request.getParameter("valorProduto");
        String descricao = request.getParameter("comentarioProduto");

        Produto produto = new Produto();

        produto.setNome(nome);
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
    
   protected void produtoConsultar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       ProdutoDAO dao = new ProdutoDAO();
       ArrayList<Produto> pro = dao.listarTudo(); 
       
       RequestDispatcher rd = request.getRequestDispatcher("./jsp/consultarProduto.jsp");
        request.setAttribute("produto", pro);
        rd.forward(request, response);
         
         
       
   }
   
}
