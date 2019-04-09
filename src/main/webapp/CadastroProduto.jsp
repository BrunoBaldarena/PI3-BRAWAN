<%-- 
    Document   : CadatroProduto
    Created on : 09/04/2019, 10:20:11
    Author     : Guto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Produto</title>
    </head>
    <body>
        <form action="ProdutoServlet" method="post">
            <table>
                <tr>
                    <td><label>Nome do produto</label></td>
                    <td><input type="text" name="nomeProduto"></td>
                </tr>

                <tr>
                    <td><label>Quantidade</label></td>
                    <td><input type="text" name="quantidadeProduto"></td>
                </tr>

                <tr>
                    <td><label>Categoria:</label></td>
                    <td>  <select name="categoriaProduto" id="categoriaProduto">
                            <option  value="Categoria">Categoria</option>
                            <option  value="Categoria2">Categoria2</option>
                        </select></td>              
                </tr>

                <tr>
                    <td><label>Marca:</<label></td>
                    <td> <select name="marcaProduto" id="marcaProduto">
                            <option  value="Marca">Marca</option>
                            <option  value="Marca2">Marca2</option>
                        </select></td>   

                        <td><label>Tamanho:</label>
                        <select name="tamanhoProduto" id="tamanhoProduto">
                            <option  value="Tamanho">Tamanho</option>
                            <option  value="Tamanho2">Tamanho2</option>
                        </select></td>   
                </tr>

                <tr>
                    <td><label>Valor Unitario</label></td>
                    <td><input type="text" name="valorProduto"></td>
                </tr>

                <br><br>

                <tr>
                    <td><label>Descrição:</label></td>
                </tr>

                <tr>  
                    <td> <textarea name="comentarioProduto" rows="5" cols="33" placeholder="Digite aqui o seu comentário.."></textarea>
                    </td>
                </tr>

                <tr>
                    <td><input type="submit" value="Salvar">
                        <input type="reset" value="Cancelar"></td>
                </tr>



            </table>
        </form>

    </body>
</html>
