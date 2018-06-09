package br.com.fastshop.loja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import br.com.fastshop.loja.infra.FileSaver;
import br.com.fastshop.loja.models.Produto;

@Repository
@Transactional
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Produto produto) {
//		String caminho = "fastshop/src/main/webapp/images/" + produto.getNome() + ".png";
//		FileSaver.salvarImagem(caminho,imagem);
		manager.persist(produto);
	}

	public List<Produto> listar() {
		return manager.createQuery("select p from Produto p", Produto.class)
				.getResultList();
	}
	
	public Produto find(Integer id) {
		return manager.createQuery("select distinct(p) from Produto p join fetch p.precos preco where p.id = :id",Produto.class)
				.setParameter("id", id).getSingleResult();
	}
	
	
}
