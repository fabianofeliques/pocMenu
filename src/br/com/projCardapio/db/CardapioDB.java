package br.com.projCardapio.db;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.projCardapio.model.Cardapio;
import br.com.projCardapio.util.JPAUtil;

public class CardapioDB {
	private EntityManager entityManager;
	private List<Cardapio> lista;
	
	
	public CardapioDB(){
		entityManager = new JPAUtil().getEntityManager();
	}
	
	public boolean insert(Cardapio cardapio){
		
		boolean status = false;
		
		try {
			
			entityManager.getTransaction().begin();
			entityManager.persist(cardapio);
			entityManager.getTransaction().commit();
			status = true;
			
		} catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		} finally {
			entityManager.close();
		}
		return status;
	}
@SuppressWarnings("unchecked")
public List<Cardapio> getLista(){
		
		try {
		
			lista = new ArrayList<Cardapio>();
			lista = entityManager.createQuery("From " +
					Cardapio.class.getName()).getResultList();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return lista;
		}

	public boolean delete(Cardapio cardapio) {
		boolean status = false;

		try {
			entityManager.getTransaction().begin();
			cardapio = entityManager.find(Cardapio.class, cardapio.getId());

			entityManager.remove(cardapio);
			entityManager.getTransaction().commit();
			status = true;
		} catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		} finally {
			entityManager.close();
		}
		return status;
	}

	public Cardapio selectById(Cardapio cardapio) {
		Cardapio c = null;

		try {
			entityManager.getTransaction().begin();
			Query query = entityManager.createNamedQuery(Cardapio.CONS_CARDAPIO);
			query.setParameter("id", cardapio.getId());
			c = (Cardapio) query.getSingleResult();
			entityManager.getTransaction().commit();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
		}
		return c;
	}
	public boolean update (Cardapio cardapio){
		boolean status = false;
		
	try{
		entityManager.getTransaction().begin();
		entityManager.merge(cardapio);
		entityManager.getTransaction().commit();
		status = true;
	}catch (Exception e) {
		e.printStackTrace();
		entityManager.getTransaction().rollback();
	} finally{
		entityManager.close();
	}
		return status;
	}	
}
