<%@ page language="java" contentType="text/html; charset="UTF-8" pageEnconding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Remover Categoria</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Remover Categoria</h1>
            <p>Tem certeza que deseja remover a categoria "${categoria.nome}" ?</p>
            <form action="/categoria/delete" method="post">
                <input type="hidden" name="id" value="${categoria.id}" />
                <br />
                <a href="/categoria/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
    </body> 
</html>