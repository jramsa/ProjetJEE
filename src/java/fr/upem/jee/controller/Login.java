package fr.upem.jee.controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import fr.upem.jee.model.ApplicationManager;
import fr.upem.jee.model.entities.User;
import fr.upem.jee.model.dao.LoginDAO;
import fr.upem.jee.tools.SecurityManager;


@ManagedBean
@SessionScoped
public class Login {
	
	private String login;
	private String password;
    
    public Login() {
	}
	
    public String getLogin() {
        return login;
    }
 
    public void setLogin(String login) {
        this.login = login;
    }
    
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
    
	public String connect(){
		User user = LoginDAO.findUser(login);
		
		if(user != null & user.getPassword().equals(SecurityManager.sha1(password))) {
			// create session
			ApplicationManager.getSession().setAttribute("user", user);
			return "main";
		} else {
			return "index";
		}
	}
	

}
