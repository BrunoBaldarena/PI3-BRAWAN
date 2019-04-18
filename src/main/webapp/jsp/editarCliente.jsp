<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
    </head>
    <body>
        <form action="./EditarCliente02" method="post">
       
            <h1>Teste</h1>

            <c:forEach items="${cliente}" var="cli">

                <input type="text" name="id" value="${cli.getId()}">
                <input type="text" name="nomeCliente" value="${cli.getNome()}"> 
                <input type="text" name="cpfCliente" value="${cli.getCpf()}"> 
                <input type="text" name="telefoneCliente" value="${cli.getTelefone()}"> 
                <input type="text" name="emailCliente" value="${cli.getEmail()}"> 

            </c:forEach>
                
            <input type="submit" value="Salvar">
        </form>
    </body>
</html>
