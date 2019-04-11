<%-- 
    Document   : consultarProduto
    Created on : 11/04/2019, 09:42:24
    Author     : Guto
--%>

<%@page import="br.senac.pi3.brawan.model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.senac.pi3.brawan.DAO.ProdutoDAO"%>
<%@page import="br.senac.pi3.brawan.model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Cliente</title>
    </head>
    <body>
        <form action="consultarProduto.jsp" method="post">
            <table>
                <tr>
                    <td><label>Cod. Produto</label></td>
                    <td><input type="text" name ="codBusca"></td>
                    <td><button type="submit">Pesquisar</button></td>
                </tr>
            </table>
        </form>
        <%

            out.print("<table border=1 cellspacing=0 cellpadding=2 bordercolor=666633>");
            out.print("<tr>");
            out.print("<th>Código</th><th>Nome</th><th>Qtd</th><th>Categoria</th><th>Marca</th><th>Tamanho</th><th>Valor</th>");

            ProdutoDAO dao = new ProdutoDAO();

            if (request.getParameter("codBusca") == "" || request.getParameter("codBusca") == null) {

                ArrayList<Produto> lista = dao.listarTudo();
                for (int num = 0; num < lista.size(); num++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(num).getId() + "</td>");
                    out.print("<td>" + lista.get(num).getNomeProduto() + "</td>");
                    out.print("<td>" + lista.get(num).getQuantidade() + "</td>");
                    out.print("<td>" + lista.get(num).getCategoria() + "</td>");
                    out.print("<td>" + lista.get(num).getMarca() + "</td>");
                    out.print("<td>" + lista.get(num).getTamanho() + "</td>");
                    out.print("<td>" + lista.get(num).getValorUnitario() + "</td>");
                    out.print("</tr>");
                }
            } else {

                ArrayList<Produto> lista = dao.listarID(Integer.parseInt(request.getParameter("codBusca")));
                for (int num = 0; num < lista.size(); num++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(num).getId() + "</td>");
                    out.print("<td>" + lista.get(num).getNomeProduto() + "</td>");
                    out.print("<td>" + lista.get(num).getQuantidade() + "</td>");
                    out.print("<td>" + lista.get(num).getCategoria() + "</td>");
                    out.print("<td>" + lista.get(num).getMarca() + "</td>");
                    out.print("<td>" + lista.get(num).getTamanho() + "</td>");
                    out.print("<td>" + lista.get(num).getValorUnitario() + "</td>");
                    out.print("</tr>");
                }

            }
                
                out.print("</tr>");
                out.print("</table>");
                out.print("<tr>");
                out.print("<td><a href=./home.jsp><input type=button value=Voltar></a></td>");
                out.print("</tr>");
        %>
    </body>

</html>