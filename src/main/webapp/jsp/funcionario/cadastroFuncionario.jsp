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

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <h1>Cadastrar Funcionario</h1>

                    <form action="${pageContext.request.contextPath}/" method="post">
                        <div class="form-group">
                            <label for="nome">Nome*</label>
                            <input type="text" class="form-control" name="nome" placeholder="Nome Completo" id="nome" required>
                        </div>

                        <div class="form-group">
                            <label for="rg">RG*</label>
                            <input type="text" class="form-control" name="rg" placeholder="Digite o RG" id="rg" required>
                        </div>

                        <div class="form-group">
                            <label for="cpf">CPF*</label>
                            <input type="text" class="form-control" name="cpf" id="cpf" placeholder="Digite o CPF" required>
                        </div>

                        <label>Sexo:</label><br>
                        <div class="form-check form-check-inline">
                            <input type="radio" class="form-check-input" name="sexo" value="Masculino" id="line1" checked>
                            <label class="form-check-label" for="line1">Masculino</label>
                        </div>

                        <div class="form-check form-check-inline">
                            <input type="radio" class="form-check-input" name="sexo" value="Feminino" id="line2">
                            <label class="form-check-label" for="line2">Feminino</label>
                        </div>

                        <div class="form-check form-check-inline">
                            <input type="radio"  class="form-check-input" name="sexo" value="Outros" id="line3">
                            <label class="form-check-label" for="line3">Outros</label>
                        </div><br>

                        <div class="form-group">
                            <label for="endereco">Endereço*</label>
                            <input type="text" class="form-control" name="endereco" id="endereco" placeholder="Ex: Rua antonio, Nº10" required>
                        </div>

                        <div class="form-group">
                            <label for="bairro">Bairro*</label>
                            <input type="text" class="form-control "name="bairro" id="bairro" placeholder="Ex: Conceição" required>

                        </div>

                        <div class="form-group  col-md-4">
                            <label for="idEstado">Estado</label>
                            <select name="idEstado" id="idEstado" class="form-control">
                                <option  value="AC" selected>AC</option>
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

                        </div>

                        <div class="form-group">
                            <label for="cidade">Cidade*</label>
                            <input type="text" class="form-control" name="cidade" id="cidade" placeholder="Ex: Barueri" required>

                        </div>

                        <div class="form-group">
                            <label for="cep">CEP*</label>
                            <input type="text" class="form-control" name="cep" id="cep" placeholder="Digite o CEP" required>
                        </div>

                        <div class="form-group">
                            <label for="telefone">Tel/Cel*</label>
                            <td><input type="text" class="form-control" name="telefone" id="telefone" placeholder="(DDD) XXXXX-XXXX" required></td>
                        </div>

                        <div class="form-group">
                            <label for="email">E-mail*</label>
                            <input type="email" class="form-control" name="email" placeholder="email@outlook.com" required>

                        </div>

                        <div class="form-group  col-md-9">
                            <label for="empresa">Empresa</label>
                            
                            <select name="Empresa" id="empresa" class="form-control">  
                                <c:forEach items="${empresa}" var="emp"> 
                                    <option value="${emp.getId()}">${emp.getEmpresa()}</option>  
                                </c:forEach>  
                            </select>

                        </div>

                        <div class="form-group">
                            <label for="usuario">Usuario*</label>
                            <input type="text" class="form-control" name="usuario" id="usuario" placeholder="Digite um Usuario" required>

                        </div>

                        <div class="form-group">
                            <label for="senha">Senha*</label>
                            <input type="password" class="form-control" name="senha" placeholder="Digite uma senha" id="senha" required>
                        </div>

                        <a href="${pageContext.request.contextPath}/jsp/home.jsp"><input type="button" class="btn btn-outline-dark btn-lg" value="Voltar"></a>
                        <input type="reset" value="Limpar" class="btn btn-outline-danger btn-lg">
                        <input type="submit" value="Salvar" class="btn btn-outline-success btn-lg">

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>