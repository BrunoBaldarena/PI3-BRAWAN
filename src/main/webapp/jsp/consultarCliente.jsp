<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Cliente</title>

    </head>
    <body>
        <form action="./ConsultarClienteID" method="get">
            <h1>Consultar Cliente</h1><br>

            <label>Cod. Cliente</label>
            <input type="text" name="Codbusca">
            <button type="submit">Pesquisar</button>
        </form>

        <table border='1'>

            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>Telefone</th>
                <th>E-mail</th>
                <th>Ações</th>
                
            </tr>

            <c:forEach items="${cliente}" var="cli">
                <tr>
                    <td><c:out value="${cli.getId()}"/></td>
                    <td><c:out value="${cli.getNome()}"/></td>
                    <td><c:out value="${cli.getCpf()}"/></td>
                    <td><c:out value="${cli.getTelefone()}"/></td>
                    <td><c:out value="${cli.getEmail()}"/></td>
                    <td><a href="./ClienteEditar01?id=<c:out value='${cli.getId()}'/>"><input type="button" value="Editar"></a>
                        <a href="./ClienteInativar?id=<c:out value='${cli.getId()}'/>"><input type="button" value="Excluir"></a></td>
                        

                </tr>
            </c:forEach>

        </table>
        <a href="jsp/home.jsp"><input type="button" value="Voltar"></a>
    </body>
</html>
