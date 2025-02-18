package application.repository;

import org.springframework.data.repository.CrudRepository;

import application.model.Categoria;

public interface CategoriaRepository extends CrudRepository<Categoria, Long>{
    // aqui dentro vai os metodos personalizaveis
    // vazio é o padrão onde tem update, delte, findbyId, findAll
}