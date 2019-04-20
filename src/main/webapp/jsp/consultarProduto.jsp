<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Cliente</title>
    </head>
    <body>
        <form action="./ConsultarProdutoID" method="get">
            <h1>Consultar Produto</h1><br>
            <label>Cod. Produto</label>
            <input type="text" name="Codbusca">
            <button type="submit">Pesquisar</button>
        </form>

        <table border="1">
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Qtd</th>
                <th>Categoria</th>
                <th>Marca</th>
                <th>Tamanho</th>
                <th>Valor</th>
            </tr>

            <c:forEach items="${produto}" var="pro">
                <tr>
                    <td><c:out value="${pro.getId()}"/></td>
                    <td><c:out value="${pro.getNome()}"/></td>
                    <td><c:out value="${pro.getQuantidade()}"/></td>
                    <td><c:out value="${pro.getCategoria()}"/></td>
                    <td><c:out value="${pro.getMarca()}"/></td>
                    <td><c:out value="${pro.getTamanho()}"/></td>
                    <td><c:out value="${pro.getValorUnitario()}"/></td>
                </tr>
            </c:forEach>


        </table>
        <a href="jsp/home.jsp"><input type="button" value="Voltar"></a>
    </body>

</html>