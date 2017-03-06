package fr.upem.jee.controller;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;


@ManagedBean
@SessionScoped
public class Register {

	private String login;
	private String password;
	private String password2;
	private String email;
	
	public Register() {
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
	
	public String getPassword2() {
		return password2;
	}
	
	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public void register(){
		if(isValidLogin()){
			if(isValidEmail()){
				if(isVerifiedPassword()){
					// TODO : register new user
					// TODO : connect new user
				}else{
					FacesContext context = FacesContext.getCurrentInstance();
					context.addMessage(null, new FacesMessage("Failed",  "Password invalid") );
					return;
				}
			}else{
				FacesContext context = FacesContext.getCurrentInstance();
				context.addMessage(null, new FacesMessage("Failed",  "Email already registered try to login") );
				return;
			}
		}else{
			FacesContext context = FacesContext.getCurrentInstance();
			context.addMessage(null, new FacesMessage("Failed",  "Login already registered") );		
			}
	}
	
	private boolean isVerifiedPassword() {
		return password == password2;
	}

	public boolean isValidLogin(){
		// TODO : if exist in DB then false else true
		return true;
	}
	
	public boolean isValidEmail(){
		// TODO : if exist in DB then false else true
		return true;
	}
	

}
