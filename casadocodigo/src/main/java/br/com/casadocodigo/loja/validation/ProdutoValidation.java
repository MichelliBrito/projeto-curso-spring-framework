package br.com.casadocodigo.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.casadocodigo.loja.models.Produtos;

public class ProdutoValidation implements Validator{

	public boolean supports(Class<?> clazz) {
		return Produtos.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors erros) {
		ValidationUtils.rejectIfEmpty(erros, "titulo", "field.required");
        ValidationUtils.rejectIfEmpty(erros, "descricao", "field.required");

        Produtos produtos = (Produtos) target;    
        if(produtos.getPaginas() <= 0){
            erros.rejectValue("paginas", "field.required");
        }
		
	}

}
