<%@page import="br.senac.pi3.brawan.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.senac.pi3.brawan.model.Cliente" %>
<%@page import="br.senac.pi3.brawan.DAO.ClienteDAO" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Cliente</title>
    </head>
    <body>
        <form action="consultarCliente.jsp" method="post">
            <table>
                <tr>
                    <td><label>Cod. Cliente</label></td>
                    <td><input type="text" name ="codBusca"></td>
                    <td><button type="submit">Pesquisar</button></td>
                </tr>
            </table>
        </form>
        <%

            out.print("<table border=1 cellspacing=0 cellpadding=2 bordercolor=666633>");
            out.print("<tr>");
            out.print("<th>Código</th><th>Nome</th><th>CPF</th><th>Telefone</th><th>E-mail</th>");

            ClienteDAO dao = new ClienteDAO();
            if (request.getParameter("codBusca") == "" || request.getParameter("codBusca") == null) {

                ArrayList<Cliente> lista = dao.listarTudo();
                for (int num = 0; num < lista.size(); num++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(num).getId() + "</td>");
                    out.print("<td>" + lista.get(num).getNome() + "</td>");
                    out.print("<td>" + lista.get(num).getCpf() + "</td>");
                    out.print("<td>" + lista.get(num).getTelefone() + "</td>");
                    out.print("<td>" + lista.get(num).getEmail() + "</td>");
                    out.print("</tr>");
                }
            } else {
                ArrayList<Cliente> lista = dao.listarID(Integer.parseInt(request.getParameter("codBusca")));
                for (int num = 0; num < lista.size(); num++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(num).getId() + "</td>");
                    out.print("<td>" + lista.get(num).getNome() + "</td>");
                    out.print("<td>" + lista.get(num).getCpf() + "</td>");
                    out.print("<td>" + lista.get(num).getTelefone() + "</td>");
                    out.print("<td>" + lista.get(num).getEmail() + "</td>");
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