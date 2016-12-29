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
        List<Usuario> usuarios = manager.createQuery("select u from Usuario as u where u.email = :email", Usuario.class)
        		.setParameter("email", email).getResultList();

       if (usuarios.isEmpty()) {
            throw new UsernameNotFoundException("O usuário " + email + " não foi encontrado");
       }else{
    	   System.out.println("Validação efetuada com SUCESSO");
       }
        System.out.println(usuarios);
        return usuarios.get(0);
    }
}
