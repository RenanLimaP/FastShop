package br.com.fastshop.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.fastshop.loja.models.Produto;

public class ProdutoValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Produto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "descricao", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "fornecedor", "field.required");
		
		Produto produto = (Produto) target;
		if(produto.getQuantidade() <= 0) {
			errors.rejectValue("quantidade", "field.required");
		}
		
		if(produto.getCategoria().equals("Selecione Categoria")) {
			errors.rejectValue("categoria", "field.required");
		}
		
		
	}
	
}
