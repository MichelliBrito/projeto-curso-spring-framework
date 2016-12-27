package br.com.casadocodigo.loja.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(value=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.TARGET_CLASS)
public class CarrinhoCompras implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int quantidade;
	private String teste;
	
	public String getTeste() {
		return teste = "Michelli";
	}

	public void setTeste(String teste) {
		this.teste = teste;
	}
	private Map<CarrinhoItem, Integer> itens = new LinkedHashMap<CarrinhoItem, Integer>();
	
	public void add(CarrinhoItem item){
		itens.put(item, getQuantidade(item) + 1);
	}
	
	public Collection<CarrinhoItem> getItens() {
	    return itens.keySet();
	}

	public void setItens(Map<CarrinhoItem, Integer> itens) {
		this.itens = itens;
	}
	
	
	public int getQuantidade(CarrinhoItem item) {
	    if(!itens.containsKey(item)){
	        itens.put(item, 0);
	    }
	    return itens.get(item);
	}
	
	
	public int getQuantidade(){
	   return quantidade = itens.values().stream().reduce(0, (proximo, acumulador) -> (proximo + acumulador));// nao é possivel usar, pois esta expressao é incompativel com o jdk instalado aq.
	}
	public BigDecimal getTotal(CarrinhoItem item){
	    return item.getTotal(getQuantidade(item));
	}
	public BigDecimal getTotal(){
	    BigDecimal total = BigDecimal.ZERO;
	    for (CarrinhoItem item : itens.keySet()) {
	        total = total.add(getTotal(item));
	    }
	    return total;
	}

	public void remover(Integer produtoId, TipoPreco tipoPreco) {
		Produtos produtos = new Produtos();
	    produtos.setId(produtoId);
	    itens.remove(new CarrinhoItem(produtos, tipoPreco));
	}
}
