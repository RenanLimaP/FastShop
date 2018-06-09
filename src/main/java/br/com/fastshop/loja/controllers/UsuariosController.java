package br.com.fastshop.loja.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fastshop.loja.dao.UsuarioDAO;
import br.com.fastshop.loja.models.Usuario;


@Controller
@RequestMapping("/usuario")
@Transactional
public class UsuariosController {
	
	@Autowired
	private UsuarioDAO dao;

	@RequestMapping("/cadastro")
	public ModelAndView form(Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("usuario/cadastro");
		return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView cadastrar(Usuario usuario, RedirectAttributes redirectAttributes){
	    dao.cadastrar(usuario);
	    redirectAttributes.addFlashAttribute("Sucesso","Usuario cadastrado com sucesso!");
	    return new ModelAndView("redirect:usuario/cadastro");
	}
}
