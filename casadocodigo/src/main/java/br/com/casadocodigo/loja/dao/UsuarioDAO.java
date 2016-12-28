package br.com.casadocodigo.loja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Usuario;

@Repository
//@Transactional
public class UsuarioDAO implements UserDetailsService{
	
	@PersistenceContext
    private EntityManager manager;
	
	
	public UserDetails loadUserByUsername(String email) {
		
		System.out.println(email);
        List<Usuario> usuarios = manager.createQuery("select p from Usuario p", Usuario.class)
        		.getResultList();

       if (usuarios.contains(email)) {
            throw new UsernameNotFoundException("O usu�rio " + email + " n�o foi encontrado");
       }else{
    	   System.out.println("Valida��o efetuada com SUCESSO");
       }
        System.out.println(usuarios);
        return usuarios.get(0);
    }
}
