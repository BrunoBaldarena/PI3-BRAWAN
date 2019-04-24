<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>


        <meta charset="utf-8"> 

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    </head>

    <body>
        <div class="container" id="row">
            <div class="table-responsive">
                <form action="./ConsultarClienteID" method="get">
                    
                    <h1>Consultar Cliente</h1><br>
                    
                    <div class="col-md-3">
                        <div class="input-group">
                            <input type="text" name="Codbusca" class="form-control" placeholder="Cód. Cliente">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-outline-dark"><i class="fas fa-search"></i></button>
                            </span>
                        </div>
                    </div>
                    
                </form>

                <br><table class="table table-hover">

                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>CPF</th>
                            <th>Telefone</th>
                            <th>E-mail</th>
                            <th></th>
                            
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${cliente}" var="cli">

                            <tr>
                                <td><c:out value="${cli.getId()}"/></td>
                                <td><c:out value="${cli.getNome()}"/></td>
                                <td><c:out value="${cli.getCpf()}"/></td>
                                <td><c:out value="${cli.getTelefone()}"/></td>
                                <td><c:out value="${cli.getEmail()}"/></td>
                                <td class="text-right">
                                    <a href="./ClienteEditar01?id=<c:out value='${cli.getId()}'/>"><input type="button" class="btn btn-success" value="Editar"></a>
                                <a href="./ClienteInativar?id=<c:out value='${cli.getId()}'/>"><input type="button" class="btn btn-danger" value="Excluir"></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>

                </table>
                <a href="jsp/home.jsp"><input type="button" class="btn btn-outline-dark" value="Voltar"></a>
            </div>
        </div>

    </body>
</html>