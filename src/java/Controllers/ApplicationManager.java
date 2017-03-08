package Controllers;

import javax.ejb.EJB;
import javax.faces.context.FacesContext;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import Entities.User;


public class ApplicationManager {
	
	@PersistenceContext(unitName = "ProjetJEEPU")
	static private EntityManager em;
	static private EntityTransaction et;
	
	/**
	 * Either inject with annotations @PersistenceContext(unitName="name"),
	 * either instanciate with EntityManagerFactory
	 */
	public ApplicationManager() {
		// EntityManagerFactory emf = Persistence.createEntityManagerFactory("project");
		// this.em = emf.createEntityManager();
		et = em.getTransaction();
	}
	
	public static HttpSession getSession() {
		return (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
	}
	
	public static HttpServletRequest getRequest() {
        return (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();
    }
	
	public static User getUser() {
		return (User) ApplicationManager.getSession().getAttribute("user");
	}
	
	public static EntityManager getEntityManager() {
		return em;
	}
	
	public static EntityTransaction getEntityTransaction() {
		return et;
	}
	
}
