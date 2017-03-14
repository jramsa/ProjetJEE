/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sessions;

import Entities.HotspotWifi;
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
public class HotspotWifiFacade extends AbstractFacade<HotspotWifi> {

    @PersistenceContext(unitName = "ProjetJEEPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public HotspotWifiFacade() {
        super(HotspotWifi.class);
    }
    
    public List<HotspotWifi> wifiListTous(){
        Query query = em.createNamedQuery("HotspotWifi.findAll",HotspotWifi.class);
        return query.getResultList();    
    }
    
}
