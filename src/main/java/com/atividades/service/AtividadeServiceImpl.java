package com.atividades.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atividades.model.Atividade;
import com.atividades.persistencia.AtividadeDAO;

@Service
@Transactional
public class AtividadeServiceImpl implements AtividadeService {
	
	@Autowired
	private AtividadeDAO atividadeDAO;

	public void adicionarAtividade(Atividade atividade) {
		atividadeDAO.adicionarAtividade(atividade);		
	}

	public void atualizarAtividade(Atividade atividade) {
		atividadeDAO.atualizarAtividade(atividade);
	}

	public Atividade obterAtividade(int id) {
		return atividadeDAO.obterAtividade(id);
	}

	public void eliminarAtividade(int id) {
		atividadeDAO.eliminarAtividade(id);
	}

	public List<Atividade> listarAtividades() {
		return atividadeDAO.listarAtividades();
	}

}
