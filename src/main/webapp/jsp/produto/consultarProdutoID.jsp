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

                <h1>Consultar Produto</h1><br>
                
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                            <th>Quantidade</th>
                            <th>Categoria</th>
                            <th>Marca</th>
                            <th>Tamanho</th>
                            <th>Valor</th>
                            <th>Descrição</th>
                            <th></th>


                        </tr>
                    </thead>
                    <tbody>


                        <c:forEach items="${produto}" var="pro">
                            <tr>
                                <td><c:out value="${pro.getCodigo()}"/></td>
                                <td><c:out value="${pro.getNome()}"/></td>
                                <td><c:out value="${pro.getQuantidade()}"/></td>
                                <td><c:out value="${pro.getCategoria()}"/></td>
                                <td><c:out value="${pro.getMarca()}"/></td>
                                <td><c:out value="${pro.getTamanho()}"/></td>
                                <td><c:out value="${pro.getValorUnitario()}"/></td>
                                <td><c:out value="${pro.getDescricao()}"/></td>
                                <td class="text-right">

                                    <a href="${pageContext.request.contextPath}/ProdutoEditar01?cod=<c:out value='${pro.getCodigo()}'/>"><input type="button" class="btn btn-success" value="Editar"></a>
                                    <a href="${pageContext.request.contextPath}/ProdutoInativar?cod=<c:out value='${pro.getCodigo()}'/>"><input type="button" class="btn btn-danger" value="Excluir"></a>

                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
                <a href="${pageContext.request.contextPath}/ConsultarProduto"><input type="button" class="btn btn-outline-dark btn-lg" value="Voltar"></a>
            </div>
        </div>
    </body>
</html>