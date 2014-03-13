package com.atividades.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.atividades.model.Atividade;
import com.atividades.service.AtividadeService;

@Controller
@RequestMapping(value="/atividade")
public class AtividadeController {
	
	@Autowired
	private AtividadeService atividadeService;
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public ModelAndView cadastroAtividade() {
		ModelAndView modelAndView = new ModelAndView("adicionar-atividade");
		modelAndView.addObject("atividade", new Atividade());
		return modelAndView;
	}
	
	@RequestMapping(value="/new", method=RequestMethod.POST)
	public ModelAndView adicionarAtividade(@ModelAttribute Atividade atividade) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		atividadeService.adicionarAtividade(atividade);
		
		String message = "Atividade inserida";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/list")
	public ModelAndView listarAtividades() {
		ModelAndView modelAndView = new ModelAndView("listar-atividades");
		
		List<Atividade> atividades = atividadeService.listarAtividades();
		modelAndView.addObject("atividades", atividades);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView mostrarAtividade(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("editar-atividade");
		Atividade atividade = atividadeService.obterAtividade(id);
		modelAndView.addObject("atividade", atividade);
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView atualizarAtividade(@ModelAttribute Atividade atividade, @PathVariable Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		
		atividadeService.atualizarAtividade(atividade);
		
		String message = "Atividade atualizada";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView eliminarAtividade(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		atividadeService.eliminarAtividade(id);
		String message = "Atividade eliminada";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
