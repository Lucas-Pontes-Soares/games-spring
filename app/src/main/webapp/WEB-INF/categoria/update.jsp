<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Editar Categoria</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="bg-primary text-white py-4 mb-4 d-flex justify-content-between align-items-center">
            <p class="mb-0 ms-3"><strong>Games Spring</strong></p>
            <div class="text-center flex-grow-1">
                <a href="/" class="text-white mx-3">Home</a>
                <a href="/jogo/list" class="text-white mx-3">Jogos</a>
                <a href="/categoria/list" class="text-white mx-3 link-underline link-underline-opacity-0">Categorias</a>
                <a href="/plataforma/list" class="text-white mx-3">Plataformas</a>
            </div>
            <p class="mb-0 me-3"><strong>Lucas Pontes Soares</strong></p>
        </div>
        <div class="container">
            <h1>Editar Categoria</h1>
            <form action="/categoria/update" method="post">
                <input type="hidden" name="id" value="${categoria.id}" />
                <div class="form-group">
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome" class="form-control" value="${categoria.nome}" />
                </div>
                <br />
                <a href="/categoria/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body> 
</html>