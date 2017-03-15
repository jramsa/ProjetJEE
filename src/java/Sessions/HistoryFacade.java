/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sessions;

import Entities.History;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Jerry
 */
@Stateless
public class HistoryFacade extends AbstractFacade<History> {

    @PersistenceContext(unitName = "ProjetJEEPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public HistoryFacade() {
        super(History.class);
    }
    
    public void createHistory(History h){
            em.persist(h);
    }
    
    public List<History> historiesList(String email){
        Query query = em.createNamedQuery("History.findByUser",History.class);
        query.setParameter("user", email);
        query.setMaxResults(10);
        return query.getResultList();    
    }
    
    public List<History> favorisList(String email){
        Query query = em.createNamedQuery("History.findByFav",History.class);
        query.setParameter("user", email);
        query.setParameter("bookmarked", true);
        query.setMaxResults(5);
        return query.getResultList();    
    }
    
    public boolean deleteHistory(History h) {
        History history = em.find(History.class, h.getId());
        if (history != null) {
            em.remove(history);
            return true;
        } else {
            return false;
        }
    }
    
    public void updateFav(int id){
        Query query = em.createNativeQuery("UPDATE History SET bookmarked='"+0+"' WHERE id='"+ id+ "'");
        query.executeUpdate();
    }   
}
