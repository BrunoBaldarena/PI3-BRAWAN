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

      
    </head>

    <body>
        <div class="container" id="row">
            <div class="table-responsive">
                <h1>Consultar Cliente</h1>

                <br><table class="table table-hover">

                    <thead class="thead-dark">
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
                            <th></th>

                        </tr>
                    <tbody>
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
                                <td><a href="./ClienteEditar01?id=<c:out value='${cli.getId()}'/>"><input type="button" class="btn btn-success" value="Editar"></a>
                                <a href="./ClienteInativar?id=<c:out value='${cli.getId()}'/>"><input type="button" class="btn btn-danger" value="Excluir"></a></td>
                            </tr>
                        </c:forEach>

                    </tbody>

                </table>
                
              
            </div>
              <a href="./ConsultarCliente"><input type="button" class="btn btn-outline-dark btn-lg" value="Voltar"></a>
        </div>

    </body>
</html>