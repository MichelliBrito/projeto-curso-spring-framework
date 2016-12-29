package br.com.casadocodigo.loja.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.models.Produtos;

@Controller
public class IndexController {

	
	@Autowired//cria uma instancia da classe ProdutoDao, ou seja, um new.
    private ProdutoDAO produtoDao;
	
	
	@RequestMapping("/")
	@Cacheable(value="produtosHome")//Habilita o cache, ou seja, a busca ao BD ficara guardada até que haja uma nova adiçao de livro.
    public ModelAndView index(){
		List<Produtos> produtos = produtoDao.listar();
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("produtos", produtos);
        return modelAndView;
    }
}
