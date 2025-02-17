package application.controller;

import java.util.Optional;

import org.springframework.benas.factory.annotation.Autowired;
import org.springframework.benas.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Categoria;
import application.repository.CategoriaRepository;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {
    @Autowired
    private CategoriaRepository categoriaRepo;

    @RequestMapping("/list")
    public String list(Model ui){
        ui.addAttriute("categorias", categoriaRepo.findAll());
        return "categoria/list";
    }

    @RequestMapping("/insert")
    public String insert(){
        return "categoria/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("name") String nome){
        Categoria categoria = new Categoria();
        categoria.setNome(nome);

        categoriaRepo.save(categoria);

        return "redirect:/categoria/list";
    }

    @RequestMapping("/update")
    public String update(
        @RequestParam("id") long id,
        Modelo ui
    ) {
        Optional<Categoria> categoria = categoriaRepo.findById(id);

        if(categoria.isPresent()){
            ui.addAttribute("categoria", categoria.get());
            return "categoria/update";
        }

        return "redirect:/categoria/list";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(
        @RequestParam("id") long id,
        @RequestParam("nome") String nome
    ) {
        Optional<Categoria> categoria = categoriaRepo.findById(id);

        if(categoria.isPresent()){
           categoria.get().setNome(nome);
           
           categoriaRepo.save(categoria.get());
        }

        return "redirect:/categoria/list";
    }

    @RequestMapping("/delete")
    public String delete(
        @RequestParam("id") long id,
        Model ui
    ) {
        Optional<Categoria> categoria = categoriaRepo.findById(id);

        if(categoria.isPresent()){
            ui.addAttribute("categoria", categoria.get());
            return "categoria/delete";
        }

        return "redirect:/categoria/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") long id){
        categoriaRepo.deleteById(id);

        return "redirect:/categoria/list";
    }
}