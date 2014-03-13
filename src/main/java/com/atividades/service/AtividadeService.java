package com.atividades.service;

import java.util.List;

import com.atividades.model.Atividade;

public interface AtividadeService {
	
	public void adicionarAtividade(Atividade atividade);
	public void atualizarAtividade(Atividade atividade);
	public Atividade obterAtividade(int id);
	public void eliminarAtividade(int id);
	public List<Atividade> listarAtividades();

}
