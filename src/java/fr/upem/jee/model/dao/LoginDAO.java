package fr.upem.jee.model.dao;

import fr.upem.jee.model.ApplicationManager;
import fr.upem.jee.model.entities.User;

public class LoginDAO {
	
	public static User findUser(String email) {
		return ApplicationManager.getEntityManager().find(User.class, email);
	}
	
}
