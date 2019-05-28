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


    </head>

    <body>
        
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <h1>Editar Funcionario</h1>
                    <form action="${pageContext.request.contextPath}/EditarFuncionario02" method="post">

                        <c:forEach items="${funcionario}" var="fun">

                            <div class="form-group col-md-3">
                                <label for="id">Cod.</label>
                                <input type="text" class="form-control" value="${fun.getId()}" name="id" id="id" readonly>
                            </div>

                            <div class="form-group">
                                <label for="nome">Nome*</label>
                                <input type="text" class="form-control" value="${fun.getNome()}" name="nome" id="nome" placeholder="Nome Completo" required>
                            </div>

                            <div class="form-group">
                                <label for="rg">RG</label>
                                <input type="text" class="form-control" value="${fun.getRg()}" name="rg" id="rg" placeholder="Digite o RG">
                            </div>

                            <div class="form-group">
                                <label for="cpf">CPF*</label>
                                <input type="text" class="form-control" name="cpf" value="${fun.getCpf()}" id="cpf" placeholder="Digite o CPF" required>
                            </div>

                            <div class="form-group">
                                <label for="endereco">Endereço</label>
                                <input type="text" class="form-control" name="endereco" value="${fun.getEndereco()}" id="endereco" placeholder="Ex: Rua antonio, Nº10">
                            </div>

                            <div class="form-group">
                                <label for="bairro">Bairro</label>
                                <input type="text" class="form-control "name="bairro" value="${fun.getBairro()}" id="bairro" placeholder="Ex: Conceição">

                            </div>

                            <div class="form-group  col-md-4">
                                <label for="idEstado">Estado</label>
                                <select name="idEstado" id="idEstado" class="form-control">
                                    <option value="${fun.getUf()}" selected><c:out value="${fun.getUf()}"/></option>>
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

                            </div>

                            <div class="form-group">
                                <label for="cidade">Cidade</label>
                                <input type="text" class="form-control" name="cidade" value="${fun.getCidade()}" id="cidade" placeholder="Ex: Barueri">

                            </div>

                            <div class="form-group">
                                <label for="cep">CEP</label>
                                <input type="text" class="form-control" name="cep" value="${fun.getCep()}" id="cep" placeholder="Digite o CEP">
                            </div>

                            <div class="form-group">
                                <label for="telefone">Telefone</label>
                                <td><input type="text" class="form-control" name="telefone" value="${fun.getTelefone()}" id="telefone" placeholder="(DDD) XXXXX-XXXX"</td>
                            </div>

                            <div class="form-group">
                                <label for="email">E-mail</label>
                                <input type="email" class="form-control" name="email" value="${fun.getEmail()}" placeholder="email@outlook.com" >

                            </div>
                                <div class="form-group  col-md-9">
                            <label for="empresa">Empresa</label>

                            <select name="empresa" id="empresa" class="form-control"> 
                                 <!--<option value="${fun.getEmpresa()}">${fun.getEmpresa()}</option>-->
                                 <c:forEach items="${empresa}" var="emp"> 
                                    <option value="${emp.getEmpresa()}">${emp.getEmpresa()}</option>  
                                </c:forEach>  
                            </select>

                        </div>

                        <div class="form-group  col-md-9">
                            <label for="cargo">Cargo</label>
                            <select name="cargo" id="cargo" class="form-control">
                                <option value="${fun.getCargo()}">${fun.getCargo()}</option>
                                <option value="Gerente-Global">Gerente-Global</option>
                                <option value="Gerente-Regional">Gerente-Regional</option>
                                <option value="Diretor">Diretor</option>
                                <option value="Técnico">Técnico</option>
                                <option value="Venda">Venda</option>
                                <option value="Padrão">Padrão</option>  
                            </select></br>            

                        </div>

                        <div class="form-group">
                            <label for="usuario">Usuario*</label>
                            <input type="text" class="form-control" name="usuario" value="${fun.getLogin()}" id="usuario" placeholder="Digite um Usuario" required>

                        </div>

                        <div class="form-group">
                            <label for="senha">Senha*</label>
                            <input type="password" class="form-control" name="senha" value="${fun.getSenha()}" placeholder="Digite uma senha" id="senha" required>
                        </div>

                            <a href="${pageContext.request.contextPath}/FuncionarioConsult"><input type="button" class="btn btn-outline-dark btn-lg" value="Voltar"></a>
                            <input type="reset" value="Limpar" class="btn btn-outline-danger btn-lg">
                            <input type="submit" value="Salvar" class="btn btn-outline-success btn-lg">


                        </c:forEach>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
