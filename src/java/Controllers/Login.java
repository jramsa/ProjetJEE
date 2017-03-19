/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.User;
import Sessions.SessionManager;
import Sessions.UserFacade;
import java.io.IOException;
import javax.inject.Named;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import org.primefaces.context.RequestContext;

/**
 *
 * @author Jerry
 */
@Named(value = "login")
@SessionScoped
@ManagedBean
public class Login implements Serializable {

    @EJB
    UserFacade userFacade;

    private User user;

    private String password;

    public Login() {
        user = new User();
    }

    public String connexion() {
        RequestContext context = RequestContext.getCurrentInstance();
        if (userFacade.findUser(this.getUser()) == null) {
            System.out.println("Faux 1");
            context.execute("swal('Oups...','Utilisateur incorrect','error')");
            user.setFirstname("");
            user.setLastname("");
            user.setEmail("");
            return "index";
        } else {
            User tmp = userFacade.findUser(this.getUser());
            setPassword(this.getUser().getPassword());
            if (SecurityManager.sha1(getPassword()).equals((tmp.getPassword()))) {
                System.out.println("Vrai");
                SessionManager.getSession().setAttribute("user", user);
                try {
                    FacesContext.getCurrentInstance().getExternalContext().redirect("faces/main.xhtml");
                } catch (IOException ex) {
                    Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                }
                setUser(tmp);
                return "main";
            } else {
                user.setFirstname("");
                user.setLastname("");
                user.setEmail("");
                context.execute("swal('Oups...','Password incorrect','error')");
                System.out.println("Faux 2");
                return "index";
            }

        }
    }

    public String register() {
        user.setPassword(SecurityManager.sha1(getPassword()));
        RequestContext context = RequestContext.getCurrentInstance();
        if (userFacade.findUser(this.getUser()) == null) {
            System.out.println("creation user");
            int created = userFacade.createUser(user);
            if (created == 1) {
                System.out.println("créé");
                context.execute("swal('Félicitations','Utilisateur créé','success')");
            } else {
                System.out.println("non créé");
                context.execute("swal('Oups...','Utilisateur non créé','error')");
            }
            user.setFirstname("");
            user.setLastname("");
            user.setEmail("");
            try {
                FacesContext.getCurrentInstance().getExternalContext().redirect("faces/index.xhtml");
            } catch (IOException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
            return "index";
        } else {
            System.out.println("Pas de création");
            context.execute("swal('Oups...','Utilisateur existe déjà','error')");
            try {
                FacesContext.getCurrentInstance().getExternalContext().redirect("faces/index.xhtml");
            } catch (IOException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
            return "index";
        }
    }
    
    //TOCHECK:
    public String logout() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpSession session = SessionManager.getSession();
        session.invalidate();
        context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Bye bye" + this.user.getEmail(), null));
        try {
            context.getExternalContext().redirect("index.xhtml");
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.user.setEmail("");
        this.user.setFirstname("");
        this.user.setLastname("");
        return "index";
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

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
}
