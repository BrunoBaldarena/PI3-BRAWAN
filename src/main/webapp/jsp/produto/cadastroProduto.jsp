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
                    <h1>Cadastrar Produto</h1>
                    <form action="/br.senac.pi3.brawan/CadastrarProduto" method="post">

                        <div class="form-group">
                            <label for="nome">Nome do produto*</label>
                            <input type="text" class="form-control" name="nome" id="nome" placeholder="Digite nome do produto" required>
                        </div>

                        <div class="form-group">
                            <label for="quantidade">Quantidade*</label>
                            <input type="text" class="form-control" name="quantidade" id="nome" placeholder="Quantidade do produto" required>
                        </div>

                        <div class="form-group col-md-8">
                            <label for="categoriaProduto">Categoria</label>
                            <select name="categoriaProduto" id="categoriaProduto" class="form-control">
                                <option  value="Categoria">Categoria</option>
                                <option  value="Categoria2">Categoria2</option>
                            </select>

                        </div>

                        <div class="form-group col-md-8">
                            <label for="marcaProduto">Marca</label>
                            <select name="marcaProduto" id="marcaProduto" class="form-control">
                                <option  value="Marca">Marca</option>
                                <option  value="Marca2">Marca2</option>
                            </select>  

                        </div>

                        <div class="form-group col-md-8">
                            <label for="tamanhoProduto">Tamanho</label>
                            <select name="tamanhoProduto" id="tamanhoProduto" class="form-control">
                                <option  value="Tamanho">Tamanho</option>
                                <option  value="Tamanho2">Tamanho2</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="valor">Valor Unitario*</label>
                            <input type="text" name="valor" id="valor" class="form-control" placeholder="Valor do produto" required>
                        </div>

                        <div class="form-group">
                            <label for="comentario">Descrição</label>
                            <textarea name="comentario" id="comentario" rows="5" cols="33" placeholder="Digite aqui o seu comentário.." class="form-control"></textarea>
                        </div>

                        <a href="../home.jsp"><input type="button" class="btn btn-outline-dark btn-lg" value="Voltar"></a>
                        <input type="reset" class="btn btn-outline-danger btn-lg" value="Limpar">
                        <input type="submit" class="btn btn-outline-success btn-lg" value="Salvar">



                    </form>
                </div>
            </div>
        </div>
    </body>
</html>