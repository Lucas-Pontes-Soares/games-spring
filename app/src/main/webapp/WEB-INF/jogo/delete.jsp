<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Remover Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Jogo Categoria</h1>
            <p>Tem certeza que deseja remover o jogo "${jogo.titulo}" ?</p>
            <form action="/jogo/delete" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
                <br />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
    </body> 
</html>