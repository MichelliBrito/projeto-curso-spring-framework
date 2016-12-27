package br.com.casadocodigo.loja.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casadocodigo.loja.models.CarrinhoCompras;

@Controller
@RequestMapping("/pagamento")
public class PagamentoController {

	@Autowired
    CarrinhoCompras carrinho;
	
    @RequestMapping("/finalizar")
    public ModelAndView finalizar(RedirectAttributes model){
        System.out.println(carrinho.getTotal());
        model.addFlashAttribute("sucesso", "Pagamento Realizado com Sucesso");
        return new ModelAndView("redirect:/produtos");
    }
}
