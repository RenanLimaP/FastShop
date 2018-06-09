package br.com.fastshop.loja.models;

import javax.persistence.Embeddable;

import org.springframework.security.core.GrantedAuthority;

@Embeddable
public class Role implements GrantedAuthority{
    
	private static final long serialVersionUID = 1L;
	
    private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String getAuthority() {
		return this.nome;
	}

	@Override
	public String toString() {
		return "Role [nome=" + nome + "]";
	}
    
    
    
    
    
}
