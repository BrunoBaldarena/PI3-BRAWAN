<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Cliente</title>
    </head>
    <body>
        <h1>Consultar produto</h1>

        <table border='1'>

            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>RG</th>
                <th>CPF</th>
                <th>Sexo</th>
                <th>Telefone</th>
                <th>E-mail</th>
                <th>Endereço</th>
                <th>Bairro</th>
                <th>Cidade</th>
                <th>UF</th>
                <th>CEP</th>
            </tr>

            <c:forEach items="${cliente}" var="cli">
                <tr>
                <td><c:out value="${cli.getId()}"/></td>
                <td><c:out value="${cli.getNome()}"/></td>
                <td><c:out value="${cli.getRg()}"/></td>
                <td><c:out value="${cli.getCpf()}"/></td>
                <td><c:out value="${cli.getSexo()}"/></td>
                <td><c:out value="${cli.getTelefone()}"/></td>
                <td><c:out value="${cli.getEmail()}"/></td>
                <td><c:out value="${cli.getEndereco()}"/></td>
                <td><c:out value="${cli.getBairro()}"/></td>
                <td><c:out value="${cli.getCidade()}"/></td>
                <td><c:out value="${cli.getUf()}"/></td>
                <td><c:out value="${cli.getCep()}"/></td>
                </tr>
            </c:forEach>

        </table>
        
        <a href="./ConsultarCliente"><input type="button" value="Voltar"></a>
    </body>
</html>
