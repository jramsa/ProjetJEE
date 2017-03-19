/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sessions;

import Entities.Cafe;
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
public class CafeFacade extends AbstractFacade<Cafe> {

    @PersistenceContext(unitName = "ProjetJEEPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CafeFacade() {
        super(Cafe.class);
    }
    
    public List<Cafe> cafeListTous(){
        Query query = em.createNamedQuery("Cafe.findAll",Cafe.class);
        return query.getResultList();    
    }
    
}
