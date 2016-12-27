package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity//avisando que objetos dessa classe persistem no bd.
public class Produtos {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;//id � nossa chave prim�ria (precisa ter uma chave prim�ria em toda entidade) 
	//como as entidades ser�o gerenciadas pelo framework, � preciso um id para
	//que o framework gere e atribua um valor a ele em cada inser��o de Produtos no BD. 
	//para que o framework fa�a isso de maneira automatica, � preciso avis�-lo com a anota��o @GeneratedValue(strategy=GenerationType.IDENTITY).
	// indicamos q queremos q essa chave seja populada pelo bd, ou seja, usqando um auto-increment.
	private String titulo;
	private String descricao;
	private int paginas;
	
	private String sumarioPath;
	
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar dataLancamento;
	
	@ElementCollection
	private List<Preco> precos;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Preco> getPrecos() {
		return precos;
	}
	public void setPrecos(List<Preco> precos) {
		this.precos = precos;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getPaginas() {
		return paginas;
	}
	public void setPaginas(int paginas) {
		this.paginas = paginas;
	}
	public Calendar getDataLancamento() {
		return dataLancamento;
	}
	public void setDataLancamento(Calendar dataLancamento) {
		this.dataLancamento = dataLancamento;
	}
	public String getSumarioPath() {
		return sumarioPath;
	}
	public void setSumarioPath(String sumarioPath) {
		this.sumarioPath = sumarioPath;
	}
	@Override
	public String toString() {
		return "Produtos [titulo=" + titulo + ", descricao=" + descricao + ", paginas=" + paginas + ", precos=" + precos + "]";
	}
	@Override
	public int hashCode() {
	    final int prime = 31;
	    int result = 1;
	    result = prime * result + id;
	    return result;
	}

	@Override
	public boolean equals(Object obj) {
	    if (this == obj)
	        return true;
	    if (obj == null)
	        return false;
	    if (getClass() != obj.getClass())
	        return false;
	    Produtos other = (Produtos) obj;
	    if (id != other.id)
	        return false;
	    return true;
	}
	public BigDecimal precoPara(TipoPreco tipoPreco) {
		return precos.stream().filter(preco -> preco.getTipo().equals(tipoPreco)).findFirst().get().getValor();        
	}
	

}
