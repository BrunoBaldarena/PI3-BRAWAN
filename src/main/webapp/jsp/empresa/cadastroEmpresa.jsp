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
                    <h1>Cadastrar Empresa</h1>
                    <form action="${pageContext.request.contextPath}/CadastrarEmpresa" method="post">
                        <div class="form-group">
                            <label for="empresa">Empresa*</label>
                            <input type="text" class="form-control" name="empresa" placeholder="Nome da Empresa" id="empresa" required>
                        </div>

                        <div class="form-group">
                            <label for="diretor">Diretor*</label>
                            <input type="text" class="form-control" name="diretor" placeholder="Nome do diretor" id="diretor" required>
                        </div>

                        <div class="form-group">
                            <label for="cnpj">CNPJ*</label>
                            <input type="text" class="form-control" name="cnpj" id="cnpj" placeholder="Digite o CNPJ" required>
                        </div>



                        <div class="form-group">
                            <label for="endereco">Endereço*</label>
                            <input type="text" class="form-control" name="endereco" id="endereco" placeholder="Ex: Rua antonio, Nº10" required>
                        </div>

                        <div class="form-group">
                            <label for="bairro">Bairro*</label>
                            <input type="text" class="form-control "name="bairro" id="bairro" placeholder="Ex: Conceição" required>

                        </div>

                        <div class="form-group  col-md-4">
                            <label for="idEstado">Estado*</label>
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
                            <label for="telefone">Telefone*</label>
                            <td><input type="text" class="form-control" name="telefone" id="telefone" placeholder="(DDD) XXXXX-XXXX"</td>
                        </div>

                        <div class="form-group">
                            <label for="email">E-mail*</label>
                            <input type="email" class="form-control" name="email" placeholder="email@outlook.com" >

                        </div>

                        <a href="${pageContext.request.contextPath}/jsp/home.jsp"><input type="button" class="btn btn-outline-dark btn-lg" value="Voltar"></a>
                        <input type="reset" value="Limpar" class="btn btn-outline-danger btn-lg">
                        <input type="submit" value="Salvar" class="btn btn-outline-success btn-lg">
                    </form>
                </div>

            </div>

        </div>


    </body>
</html>