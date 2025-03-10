<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Plataformas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Plataformas</h1>
            <a href="/plataforma/insert" class="btn btn-primary">Nova Plataforma</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Ações</th>
                </tr>
                <c:forEach var="item" items="${plataformas}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>
                            <a href="/plataforma/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/plataforma/delete?id=${item.id}" class="btn btn-warning">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>