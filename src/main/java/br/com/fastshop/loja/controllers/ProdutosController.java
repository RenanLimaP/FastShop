package br.com.fastshop.loja.controllers;

import java.util.List;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fastshop.loja.dao.ProdutoDAO;
import br.com.fastshop.loja.infra.FileSaver;
import br.com.fastshop.loja.models.Produto;
import br.com.fastshop.loja.models.TipoPreco;
import br.com.fastshop.loja.validation.ProdutoValidation;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO dao;
	
	@Autowired
	private ServletContext servletContext;
	
//	@Autowired
//	private FileSaver fileSaver;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new ProdutoValidation());
	}

	@RequestMapping("/form")
	public ModelAndView form(Produto produto) {
		ModelAndView modelAndView = new ModelAndView("produtos/form");
		modelAndView.addObject("tipos", TipoPreco.values());
		return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	@CacheEvict(value="produtosHome", allEntries=true)
	public ModelAndView gravar( @Valid Produto produto, Model model,@RequestParam(value="imagem") MultipartFile imagem, BindingResult result, RedirectAttributes redirectAttributes){
		
		if(result.hasErrors()) {
			return form(produto);
		}
		
		if (imagem != null && !imagem.isEmpty()) {
	        String path = servletContext.getRealPath("/") + "resources/imagens/" + produto.getNome() + ".png";
	        FileSaver.salvarImagem(path, imagem);
	        produto.setArquivoPath(path);
	    }
		
		dao.gravar(produto);
		redirectAttributes.addFlashAttribute("sucesso","Produto cadastrado com sucesso!");
		return new ModelAndView("redirect:produtos");
		
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar() {
		List<Produto> produtos = dao.listar();
		ModelAndView modelAndView = new ModelAndView("produtos/lista");
		modelAndView.addObject("produtos", produtos);
		return modelAndView;
	}
	
	@RequestMapping("/detalhe/{id}")
	public ModelAndView detalhe(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("produtos/detalhe");
		Produto produto = dao.find(id);
		modelAndView.addObject("produto",produto);
		return modelAndView;
	}
	
	
}
