package br.com.fastshop.loja.models;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Produto {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String nome;
	private String categoria;
	private String fornecedor;
	private int quantidade;
	
	@Lob
	private String descricao;
	
	@DateTimeFormat
	private Calendar dataLancamento;
	
	@ElementCollection
	private List<Preco> precos;
	
	private String arquivoPath;
	
	
	
	public Calendar getDataLancamento() {
		return dataLancamento;
	}

	public void setDataLancamento(Calendar dataLancamento) {
		this.dataLancamento = dataLancamento;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(String fornecedor) {
		this.fornecedor = fornecedor;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public List<Preco> getPrecos() {
		return precos;
	}

	public void setPrecos(List<Preco> precos) {
		this.precos = precos;
	}

	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", descricao=" + descricao + ", categoria=" + categoria
				+ ", fornecedor=" + fornecedor + ", quantidade=" + quantidade + ", precos=" + precos + "]";
	}

	public String getArquivoPath() {
		return arquivoPath;
	}

	public void setArquivoPath(String arquivoPath) {
		this.arquivoPath = arquivoPath;
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
		Produto other = (Produto) obj;
		if (id != other.id)
			return false;
		return true;
	}

	public BigDecimal precoPara(TipoPreco tipoPreco) {
		return precos.stream().filter(preco -> preco.getTipo().equals(tipoPreco)).findFirst().get().getValor();
		
	}
	
	
	
	
	
	

}
	
