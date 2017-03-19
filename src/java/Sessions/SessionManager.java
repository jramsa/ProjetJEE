package Sessions;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import Entities.User;

/**
 * Created by Jeremy
 */
public class SessionManager {

    public static HttpSession getSession() {
        return (HttpSession) FacesContext.getCurrentInstance().getExternalContext().getSession(false);
    }

    public static HttpServletRequest getRequest() {
        return (HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest();
    }

    public static User getUser() {
        HttpSession session = SessionManager.getSession();
        if (session != null) {
            return ((User) session.getAttribute("user"));
        }
        else {
            return null;
        }
    }

    public static String getEmail() {
        HttpSession session = SessionManager.getSession();
        if (session != null) {
            return ((User) session.getAttribute("user")).getEmail();
        }
        else {
            return null;
        }
    }
    
}
