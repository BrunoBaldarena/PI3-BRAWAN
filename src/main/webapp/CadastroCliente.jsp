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
                    <td><input type="text" name="nomeCliente"></td>
                </tr>

                <tr>
                    <td>RG</td>
                    <td><input type="text" name="rgCliente"></td>
                </tr>

                <tr>
                    <td>CPF*</td>
                    <td><input type="text" name="cpfCliente"></td>
                      <td></td>
                    <td>Sexo:
                    
                        <input type="radio" name="sexoCliente" value="Masculino" checked>Masculino
                        <input type="radio" name="sexoCliente" value="Feminino">Feminino
                        <input type="radio" name="sexoCliente" value="Outros">Outros
                    </td>
                </tr>

                <tr>
                    <td>Endereço</td>
                    <td><input type="text" name="enderecoCliente"></td>
                </tr>

                <tr>
                    <td>Bairro</td>
                    <td><input type="text" name="bairroCliente"></td>
                      <td></td>
                    <td>UF:
                    
                        <select name="idEstadoCliente" id="idEstadoCliente">
                            <option  value="AC">AC</option>
                            <option  value="AL">AL</option>
                            <option  value="AM">AM</option>
                            <option  value="AP">AP</option>
                            <option  value="BA">BA</option>
                            <option  value="CE">CE</option>
                            <option  value="DF">DF</option>
                            <option  value="ES">ES</option>
                            <option  value="GO">GO</option>
                            <option  value="MA">MA</option>
                            <option  value="MG">MG</option>
                            <option  value="MS">MS</option>
                            <option  value="MT">MT</option>
                            <option  value="PA">PA</option>
                            <option  value="PB">PB</option>
                            <option  value="PE">PE</option>
                            <option  value="PI">PI</option>
                            <option  value="PR">PR</option>
                            <option  value="RJ">RJ</option>
                            <option  value="RN">RN</option>
                            <option  value="RO">RO</option>
                            <option  value="RR">RR</option>
                            <option  value="RS">RS</option>
                            <option  value="SC">SC</option>
                            <option  value="SE">SE</option>
                            <option  value="SP">SP</option>
                            <option  value="TO">TO</option>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Cidade</td>
                    <td><input type="text" name="cidadeCliente"></td>
                </tr>

                <tr>
                    <td>CEP</td>
                    <td><input type="text" name="cepCliente"></td>
                </tr>

                <tr>
                    <td>Tel/Cel</td>
                    <td><input type="text" name="telefoneCliente"></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><input type="email" name="emailCliente"></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Salvar">
                        <input type="reset" value="Cancelar"></td>
                </tr>




            </table>



        </form>
    </body>
</html>
