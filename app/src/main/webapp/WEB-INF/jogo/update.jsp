<%@ page language="java" contentType="text/html; charset="UTF-8" pageEnconding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Editar Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Editar Jogo</h1>
            <form action="/jogo/update" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
                <div class="form-group">
                    <label for="titulo">Titulo:</label>
                    <input type="text" name="titulo" class="form-control" value="${categoria.titulo}" />
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select">
                        <c:forEach var="c" items="${categorias}">
                            <option ${jogo.categoria.id == c.id ? "selected" : ""} value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="plataforma">Plataforma(s):</label>
                    <c:forEach var="c" items="${plataformas}">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" ${jogo.plataformas.contains(p) ? "checked" : ""}
                                class="custom-control-input" name="plataformas" value="${p.id}" id="${p.id}" />
                            <label class="custom-control-label" for="${p.id}">${p.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                <br />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body> 
</html>