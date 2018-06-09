package br.com.fastshop.loja.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fastshop.loja.models.CarrinhoCompras;

@Controller
@RequestMapping("/pagamento")
public class PagamentoController {

	@Autowired
	private CarrinhoCompras carrinho;
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView finalizar(RedirectAttributes model) {
		System.out.println(carrinho.getTotal());
		model.addFlashAttribute("sucesso","Pagamento Realizado com sucesso");
		return new ModelAndView("redirect:/produtos");
	}
	
}
