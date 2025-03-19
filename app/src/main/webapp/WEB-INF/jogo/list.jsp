<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Jogos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="bg-primary text-white py-4 mb-4 d-flex justify-content-between align-items-center">
            <p class="mb-0 ms-3"><strong>Games Spring</strong></p>
            <div class="text-center flex-grow-1">
                <a href="/" class="text-white mx-3">Home</a>
                <a href="/jogo/list" class="text-white mx-3 link-underline link-underline-opacity-0">Jogos</a>
                <a href="/categoria/list" class="text-white mx-3">Categorias</a>
                <a href="/plataforma/list" class="text-white mx-3">Plataformas</a>
            </div>
            <p class="mb-0 me-3"><strong>Lucas Pontes Soares</strong></p>
        </div>
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h1 class="mb-0">Jogos</h1>
                <a href="/jogo/insert" class="btn btn-primary">+ Novo Jogo</a>
            </div>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Categoria</th>
                    <th>Plataformas</th>
                    <th>Ações</th>
                </tr>
                <c:forEach var="item" items="${jogos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.categoria.nome}</td>
                        <td>
                            <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                                ${s.getCount() > 1 ? ", " : ""}
                                ${p.nome}
                            </c:forEach>
                        </td>
                        <td>
                            <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>