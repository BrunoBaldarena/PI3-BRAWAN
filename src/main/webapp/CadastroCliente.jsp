<%-- 
    Document   : CadastroCliente
    Created on : 07/04/2019, 16:02:06
    Author     : Guto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Cliente</title>
    </head>
    <body>
        <form action="ClienteServlet" method="post">
            <table>

                <tr>
                    <td>Nome*</td>
                    <td><input type="text" name="nome"></td>
                </tr>

                <tr>
                    <td>RG</td>
                    <td><input type="text" name="rg"></td>
                    <td>CPF*</td>
                    <td><input type="text" name="cpf"></td>
                </tr>

                <tr>
                    <td>Nacionalidade</td>
                    <td><input type="text" name="nacionalidade"></td>
                    <td>Sexo</td>
                    <td><input type="radio" name="sexo">M
                        <input type="radio" name="sexo">F
                        <input type="radio" name="sexo">Outros</td>
                </tr>

                <tr>
                    <td>Endereço</td>
                    <td><input type="text" name="endereco"></td>
                </tr>

                <tr>
                    <td>Bairro</td>
                    <td><input type="text" name="bairro"></td>
                    <td>UF</td>
                    <td>
                <select>
                    <option  selected value="uf">AC</option>
                    <option  value="uf">AL</option>
                    <option  value="uf">AM</option>
                    <option  value="uf">AP</option>
                    <option  value="uf">BA</option>
                    <option  value="uf">CE</option>
                    <option  value="uf">DF</option>
                    <option  value="uf">ES</option>
                    <option  value="uf">GO</option>
                    <option  value="uf">MA</option>
                    <option  value="uf">MG</option>
                    <option  value="uf">MS</option>
                    <option  value="uf">MT</option>
                    <option  value="uf">PA</option>
                    <option  value="uf">PB</option>
                    <option  value="uf">PE</option>
                    <option  value="uf">PI</option>
                    <option  value="uf">PR</option>
                    <option  value="uf">RJ</option>
                    <option  value="uf">RN</option>
                    <option  value="uf">RO</option>
                    <option  value="uf">RR</option>
                    <option  value="uf">RS</option>
                    <option  value="uf">SC</option>
                    <option  value="uf">SE</option>
                    <option  value="uf">SP</option>
                    <option  value="uf">TO</option>

                </select>
                    </td>
                </tr>
                
                <tr>
                    <td>Cidade</td>
                    <td><input type="text" name="cidade"></td>
                </tr>
                
                <tr>
                    <td>CEP</td>
                    <td><input type="text" name="cep"></td>
                </tr>
                
                <tr>
                    <td>Tel/Cel</td>
                    <td><input type="text" name="telefone"></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><input type="email" name="email"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Salvar">
                    <input type="reset" value="Cancelar"></td>
                </tr>




            </table>



        </form>
    </body>
</html>
