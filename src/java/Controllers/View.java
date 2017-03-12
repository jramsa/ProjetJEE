/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entities.Cafe;
import Entities.HotspotWifi;
import Sessions.CafeFacade;
import Sessions.HotspotWifiFacade;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;

/**
 *
 * @author Jerry
 */
@Named(value = "viewBean")
@SessionScoped
public class View implements Serializable {
    
    @EJB
    CafeFacade cafeFacade;
    HotspotWifiFacade wifiFacade;

    private Cafe cafe;
    private HotspotWifi wifi;

    private String spot;
    private String distance;
    private boolean check;

    /**
     * Creates a new instance of View
     */
    public View() {
        cafe = new Cafe();
        wifi = new HotspotWifi();
    }

    /**
     * @return the cafe
     */
    public Cafe getCafe() {
        return cafe;
    }

    /**
     * @param cafe the cafe to set
     */
    public void setCafe(Cafe cafe) {
        this.cafe = cafe;
    }

    /**
     * @return the wifi
     */
    public HotspotWifi getWifi() {
        return wifi;
    }

    /**
     * @param wifi the wifi to set
     */
    public void setWifi(HotspotWifi wifi) {
        this.wifi = wifi;
    }

    /**
     * @return the spot
     */
    public String getSpot() {
        return spot;
    }

    /**
     * @param spot the spot to set
     */
    public void setSpot(String spot) {
        this.spot = spot;
    }

    /**
     * @return the distance
     */
    public String getDistance() {
        return distance;
    }

    /**
     * @param distance the distance to set
     */
    public void setDistance(String distance) {
        this.distance = distance;
    }

    /**
     * @return the check
     */
    public boolean isCheck() {
        return check;
    }

    /**
     * @param check the check to set
     */
    public void setCheck(boolean check) {
        this.check = check;
    }
    
}
