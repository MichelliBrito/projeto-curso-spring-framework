package br.com.casadocodigo.loja.controllers;




import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.infra.FileSaver;
import br.com.casadocodigo.loja.models.Produtos;
import br.com.casadocodigo.loja.models.TipoPreco;
import br.com.casadocodigo.loja.validation.ProdutoValidation;

@Controller
@RequestMapping("/produtos")
public class HomeController {
	
	@Autowired//cria uma instancia da classe ProdutoDao, ou seja, um new.
    private ProdutoDAO produtoDao;
	
	@Autowired
    private FileSaver saver;
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
	    binder.addValidators(new ProdutoValidation());
	}
	
	@RequestMapping("/home")
	@Cacheable(value="produtosHome")//Habilita o cache, ou seja, a busca ao BD ficara guardada até que haja uma nova adiçao de livro.
    public ModelAndView index(){
		List<Produtos> produtos = produtoDao.listar();
        ModelAndView modelAndView = new ModelAndView("home");
        modelAndView.addObject("produtos", produtos);
        return modelAndView;
    }
	
	@RequestMapping("/form")
    public ModelAndView form(Produtos produtos) {
        ModelAndView modelAndView = new ModelAndView("produtos/form");
        modelAndView.addObject("tipos", TipoPreco.values());
        return modelAndView;

    }
	
	@RequestMapping(method=RequestMethod.POST)
	@CacheEvict(value="produtosHome", allEntries=true)//CacheEvict limpa o cache já criado, para após a inserção de um novo livro, ser chamado novamente.
	public ModelAndView gravar(MultipartFile sumario, @Valid Produtos produtos, BindingResult result, RedirectAttributes redirectAttributes){
		
		if(result.hasErrors()){
	        return form(produtos);
	    }
		String path = saver.write("sumario-arquivo", sumario);
		produtos.setSumarioPath(path);

        System.out.println(sumario.getOriginalFilename());

		produtoDao.gravar(produtos);
		redirectAttributes.addFlashAttribute("sucesso","Produto cadastrado com sucesso!");
		return new ModelAndView ("redirect:produtos");
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar(){
	    ModelAndView modelAndView = new ModelAndView("/produtos/lista");
	    modelAndView.addObject("produtos", produtoDao.listar());
	    return modelAndView;
	}
	
	@RequestMapping("/detalhes/{id}")
	public ModelAndView detalhes(@PathVariable("id") Integer id) {
	  ModelAndView modelAndView = new ModelAndView("produtos/detalhes");
	  Produtos produtos = produtoDao.find(id);
	  modelAndView.addObject("produtos",produtos);
	  return modelAndView;
	}
	
}
