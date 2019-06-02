<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8"> 

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


        <script type="text/javascript" src="js/jquery.mask.min.js"/></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


</head>
<body>
    <div class="container" id="row">

        <form  action="${pageContext.request.contextPath}/venda01" method="post">
            <div class="col-md-5">

                <h1>Carrinho</h1>
                <label>Cod. Produto</label> 
                <input type="text" class="form-control" name="CodProduto" required>

                <label>Quantidade</label>
                <input type="text" class="form-control" name="Quantidade" required>



                <br><input type="submit" value="ADD" class="btn btn-success">
            </div>


        </form><br>


        <div class="table-responsive">
            <table class="table">
                <thead class="thead-dark">
                    <tr>

                        <th>Código</th>
                        <th>Produto</th>
                        <th>Quantidade</th>
                        <th>Valor Unitário</th>
                        <th>Valor Total</th>
                        <th></th>

                    </tr>
                </thead>
                <tbody>


                    <c:set var="total" value="" />
                    <c:forEach items="${lista}" var="lista">
                        <c:forEach items="${produto}" var="produto">
                            <tr>
                                <td><c:out value="${produto.getCodigo()}"/></td>
                                <td><c:out value="${produto.getNome()}"/></td>
                                <td><c:out value="${lista.getQuantidade()}"/></td>
                                <td>R$: <c:out value="${produto.getValorUnitario()}"/></td>
                                <td>R$: <c:out value="${lista.getValorTotalItem()}"/></td>
                                <c:set var="total" value="${total + lista.getValorTotalItem()}" />      
                                <td class="text-right">

                                    <a href="${pageContext.request.contextPath}/VendaExcluir?cod=<c:out value='${lista.getCodigoProd()}'/>"><input type="button" class="btn btn-danger" value="Excluir" ></a>
                                <!--    <a href="${pageContext.request.contextPath}/VendaExcluir?cod=<c:out value='${lista.getCodigoProd()}'/>"><button  class="btn btn-danger"><i class="fas fa-trash"></i></button></a> -->

                                </td>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </tbody>
            </table>

            <h4>VALOR TOTAL DA COMPRA: R$ <c:out value="${total}"/></h4>

            <a href="${pageContext.request.contextPath}/venda02"><input type="button" class="btn btn-success btn-lg" value="Finalizar Pedido" ></a>





        </div>
    </div>
</body>
</html>