/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sessions;

import Entities.Cafe;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
    
}
