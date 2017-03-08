/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.User;
import Sessions.UserFacade;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;

/**
 *
 * @author Jerry
 */
@Named(value = "login")
@SessionScoped
public class Login implements Serializable {

    @EJB
    UserFacade userFacade;

    private User user;
    
    public Login() {
        user = new User();
    }

    public String connexion() {
        if (userFacade.findUser(this.getUser()) == null) {
            System.out.println("Faux 1");
            return "index";
        } else {
            User tmp = userFacade.findUser(this.getUser());
            String pass = this.getUser().getPassword();
            if (SecurityManager.sha1(pass).equals((tmp.getPassword()))) {
                System.out.println("Vrai");
                //ApplicationManager.getSession().setAttribute("user", user);
                return "main.xhtml";
            } else {
                System.out.println("Faux 2");
                return "index";
            }
            
        }
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }
}
