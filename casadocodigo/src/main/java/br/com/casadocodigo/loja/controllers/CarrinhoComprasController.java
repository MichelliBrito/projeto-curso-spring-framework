package br.com.casadocodigo.loja.controllers;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.models.CarrinhoCompras;
import br.com.casadocodigo.loja.models.CarrinhoItem;
import br.com.casadocodigo.loja.models.Produtos;
import br.com.casadocodigo.loja.models.TipoPreco;
import org.springframework.web.context.WebApplicationContext;

@Controller
@RequestMapping("/carrinho")
@Scope(value=WebApplicationContext.SCOPE_REQUEST)
public class CarrinhoComprasController {
	
	@Autowired
	private ProdutoDAO produtoDao;
	
	@Autowired
    private CarrinhoCompras carrinho;
	
	@RequestMapping("/add")
    public ModelAndView add(Integer produtoId, TipoPreco tipoPreco) {
        ModelAndView modelAndView = new ModelAndView("redirect:/produtos");
        CarrinhoItem carrinhoItem = criaItem(produtoId,tipoPreco);
        carrinho.add(carrinhoItem);
        return modelAndView;   
    }

    private CarrinhoItem criaItem(Integer produtoId, TipoPreco tipoPreco) {
        Produtos produto = produtoDao.find(produtoId);
        CarrinhoItem carrinhoItem = new CarrinhoItem(produto,tipoPreco);
        return carrinhoItem;
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView itens(){
        return new ModelAndView("carrinho/itens");
    }
    
    @RequestMapping("/remover")
    public ModelAndView remover(Integer produtoId, TipoPreco tipoPreco){
        carrinho.remover(produtoId, tipoPreco);
        return new ModelAndView("redirect:/carrinho");
    }
}
