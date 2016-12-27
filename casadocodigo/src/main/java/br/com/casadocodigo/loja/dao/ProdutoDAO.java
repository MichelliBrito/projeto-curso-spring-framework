package br.com.casadocodigo.loja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produtos;

@Repository//classe dao persiste dados. (Classe persistente)
@Transactional//classe que possui transação gerenciada pelo Spring.
public class ProdutoDAO {
	
	 @PersistenceContext//cria uma instancia da classe EntityManager, para que ele seja injetável, diferente de quando se utiliza @Autoweird
	 private EntityManager manager;
	 
	public void gravar(Produtos produtos){
		manager.persist(produtos);
    }
	
	public List<Produtos> listar(){
	    return manager.createQuery("select p from Produtos p").getResultList();
	}
	
	public Produtos find(Integer id) {
        return manager.createQuery("select distinct(p) from Produtos p join fetch p.precos precos where p.id = :id", Produtos.class).setParameter("id", id).getSingleResult();
    }
}
