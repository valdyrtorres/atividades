package com.atividades.persistencia;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atividades.model.Atividade;

@Repository
public class AtividadeDAOImpl implements AtividadeDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void adicionarAtividade(Atividade atividade) {
		getCurrentSession().save(atividade);
	}

	public void atualizarAtividade(Atividade atividadeModificada) {
		Atividade atividade = obterAtividade(atividadeModificada.getId());
		atividade.setNome(atividadeModificada.getNome());
		atividade.setDescricao(atividadeModificada.getDescricao());		
		atividade.setNota(atividadeModificada.getNota());
		getCurrentSession().update(atividade);
		
	}

	public Atividade obterAtividade(int id) {
		Atividade atividade = (Atividade) getCurrentSession().get(Atividade.class, id);
		return atividade;
	}

	public void eliminarAtividade(int id) {
		Atividade atividade = obterAtividade(id);
		if (atividade != null)
			getCurrentSession().delete(atividade);
	}

	@SuppressWarnings("unchecked")
	public List<Atividade> listarAtividades() {
		return getCurrentSession().createQuery("from Atividade").list();
	}

}
