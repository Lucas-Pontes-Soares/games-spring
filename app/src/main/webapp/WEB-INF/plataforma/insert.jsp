<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Nova Plataforma</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Nova Plataforma</h1>
            <form action="/plataforma/insert" method="post">
                <div class="form-group">
                    <label for="nome">Nome:</label>
                    <input type="text" name="nome" class="form-control" />
                </div>
                <br />
                <a href="/plataforma/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body> 
</html>