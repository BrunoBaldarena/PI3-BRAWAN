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
       
            <h1>Editar Cliente</h1>

            <c:forEach items="${cliente}" var="cli">
                
                
                <table>
                   <tbody>
                        <tr>
                            <td>Código:</td>
                            <td><input type="text" name="id" value="${cli.getId()}" size="1" readonly="readonly"></td>
                        </tr>
                    
                   
                        <tr>
                            <td>Nome</td>
                            <td><input type="text" name="nomeCliente" value="${cli.getNome()}"></td>
                        </tr>
                        <tr>
                            <td>CPF</td>
                            <td><input type="text" name="cpfCliente" value="${cli.getCpf()}"> </td>
                        </tr>
                        <tr>
                            <td>Telefone</td>
                            <td><input type="text" name="telefoneCliente" value="${cli.getTelefone()}"> </td>
                        </tr>
                        <tr>
                            <td>E-mail</td>
                            <td><input type="text" name="emailCliente" value="${cli.getEmail()}"> </td>
                        </tr>
                        <tr>
                            <td>RG</td>
                            <td><input type="text" name="rgCliente" value="${cli.getRg()}"></td>
                        </tr>
                        <tr>
                            <td>Sexo</td>
                            <td><input type="text" name="sexoCliente" value="${cli.getSexo()}"></td>
                        </tr>
                        
                        <tr>
                            <td>Endereco</td>
                            <td><input type="text" name="enderecoCliente" value="${cli.getEndereco()}"></td>
                        </tr>
                        
                        <tr>
                            <td>Bairro</td>
                            <td><input type="text" name="bairroCliente" value="${cli.getBairro()}"></td>
                        </tr>
                        
                        <tr>
                            <td>Cidade</td>
                            <td><input type="text" name="cidadeCliente" value="${cli.getCidade()}"></td>
                        </tr>
                        
                        <tr>
                            <td>UF</td>
                            <td><input type="text" name="idEstadoCliente" value="${cli.getUf()}"></td>
                        </tr>
                        
                        <tr>
                            <td>CEP</td>
                            <td><input type="text" name="cepCliente" value="${cli.getCep()}"></td>
                        </tr>
                        
                    </tbody>
                </table>
                
            </c:forEach>
                
            <input type="submit" value="Salvar">
        </form>
    </body>
</html>
