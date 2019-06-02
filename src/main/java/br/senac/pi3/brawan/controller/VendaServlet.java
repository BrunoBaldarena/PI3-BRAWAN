package br.senac.pi3.brawan.controller;

import br.senac.pi3.brawan.DAO.VendasDAO;
import br.senac.pi3.brawan.model.ItemVenda;
import br.senac.pi3.brawan.model.Produto;
import br.senac.pi3.brawan.model.Venda;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet(name = "VendaServlet", urlPatterns = {"/venda01", "/VendaExcluir", "/venda02"})
public class VendaServlet extends HttpServlet {

    private ArrayList<ItemVenda> lista = new ArrayList<>();
    private  ArrayList<Produto> pro = new ArrayList<>();

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String pagina = request.getRequestURI();

        try {
            if (pagina.endsWith("VendaExcluir")) {
                excluirItem(request, response);
            }else if (pagina.endsWith("venda02")) {
                venda02(request, response);
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
            if (pagina.endsWith("venda01")) {
                vendas(request, response);
            } 
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage());
        }
    }

    protected void vendas(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        VendasDAO venda = new VendasDAO();
        ItemVenda item = new ItemVenda();
        Produto produto = new Produto();

        float valor = 0;

        String cod = request.getParameter("CodProduto");
        int quantidade = Integer.parseInt(request.getParameter("Quantidade"));

        pro = venda.listarCod(cod);

        for (Produto list : pro) {

            valor = Float.parseFloat(list.getValorUnitario());

        }

        float valorTotalItem = quantidade * valor;

        item.setQuantidade(quantidade);
        item.setValorTotalItem(valorTotalItem);
        lista.add(item);

        HttpSession session = request.getSession(true);

        session.setAttribute("lista", lista);
        session.setAttribute("produto", pro);

        RequestDispatcher rd = request.getRequestDispatcher("./jsp/vendas/carrinho.jsp");
        rd.forward(request, response);

    }

    protected void excluirItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        lista.clear();
        pro.clear();
        response.sendRedirect("./jsp/vendas/carrinho.jsp");

    }

    protected void venda02(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        VendasDAO dao = new VendasDAO();
        Venda venda = new Venda();
        int quantidadeTotal = 0; 
        float valorTotal = 0;
        
         for (Produto list : pro) {
             for (ItemVenda item : lista) {
                 dao.inserirItemVenda(list.getId(), item.getValorTotalItem());
                 quantidadeTotal = quantidadeTotal + item.getQuantidade(); 
                 float valor = item.getQuantidade() * Float.parseFloat(list.getValorUnitario());
                 valorTotal = valorTotal + valor; 
             }

        }
         
         venda.setQuantidade(quantidadeTotal);
         venda.setValorTotal(valorTotal);
         dao.finalizarVenda(venda);
        
        lista.clear();
        pro.clear();
       
       RequestDispatcher rd = request.getRequestDispatcher("./jsp/vendas/carrinho.jsp");
        rd.forward(request, response);
    }

}
