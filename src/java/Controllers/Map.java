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
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import org.primefaces.model.map.DefaultMapModel;
import org.primefaces.model.map.LatLng;
import org.primefaces.model.map.MapModel;
import org.primefaces.model.map.Marker;
import org.primefaces.event.map.GeocodeEvent;
import org.primefaces.event.map.ReverseGeocodeEvent;
import org.primefaces.model.map.GeocodeResult;

/**
 *
 * @author Jerry
 */
@Named(value = "map")
@SessionScoped
public class Map implements Serializable {
   
    public Map() {
        cafe = new Cafe();
        wifi = new HotspotWifi();
       
    }
     
    private MapModel geoModel;
    private String centerGeoMap = "48.85661400000001, 2.3522219000000177";
    
    private double posLat;
    private double posLon;
     
    @PostConstruct
    public void init() {
        geoModel = new DefaultMapModel();
    }
     
   
    public void onGeocode(GeocodeEvent event) {
        List<GeocodeResult> results = event.getResults();
         
        if (results != null && !results.isEmpty()) {
            LatLng center = results.get(0).getLatLng();
            setCenterGeoMap(center.getLat() + "," + center.getLng());
            
            setPosLat(center.getLat());
            setPosLon(center.getLng());
            System.out.println("Centre :" + posLat+" "+ posLon);
             
            /*for (int i = 0; i < results.size(); i++) {
                GeocodeResult result = results.get(i);
                geoModel.addOverlay(new Marker(result.getLatLng(), result.getAddress()));
            }*/
        }
    }
     
    public void onReverseGeocode(ReverseGeocodeEvent event) {
        List<String> addresses = event.getAddresses();
        LatLng coord = event.getLatlng();
         
        if (addresses != null && !addresses.isEmpty()) {
            setCenterGeoMap(coord.getLat() + "," + coord.getLng());
            geoModel.addOverlay(new Marker(coord, addresses.get(0)));
        }
    }
 
    public MapModel getGeoModel() {
        return geoModel;
    }
 
    public String getCenterGeoMap() {
        return centerGeoMap;
    }

    /**
     * @return the posLat
     */
    public double getPosLat() {
        return posLat;
    }

    /**
     * @param posLat the posLat to set
     */
    public void setPosLat(double posLat) {
        this.posLat = posLat;
    }

    /**
     * @return the posLon
     */
    public double getPosLon() {
        return posLon;
    }

    /**
     * @param posLon the posLon to set
     */
    public void setPosLon(double posLon) {
        this.posLon = posLon;
    }

    /**
     * @param centerGeoMap the centerGeoMap to set
     */
    public void setCenterGeoMap(String centerGeoMap) {
        this.centerGeoMap = centerGeoMap;
    }
    
    @EJB
    CafeFacade cafeFacade;
    HotspotWifiFacade wifiFacade;

    private Cafe cafe;
    private HotspotWifi wifi;

    private String spot;
    private String distance;
    private boolean check;
    
    private List<Cafe> cafeList = new ArrayList<>();
    
    public List<Cafe> cafeListTous(){
        cafeList=cafeFacade.cafeListTous();
        return getCafeList();
    }
    
    public void truc(){
         Double lat;
         Double lon;
        
        System.out.println(spot);
        System.out.println(distance);
        if(spot.equals("cafe") && distance.equals("tous")){
        cafeListTous();
        for ( Cafe cafes : cafeList ){
            lat=Double.parseDouble(cafes.getLat().replace(",", "."));
            lon=Double.parseDouble(cafes.getLon().replace(",", "."));
            geoModel.addOverlay(new Marker(new LatLng(lat, lon),cafes.getCafeName()));
        }
        }
        else{
            System.out.println("Choix non codé");
        }
    }

    public Cafe getCafe() {
        return cafe;
    }

    public void setCafe(Cafe cafe) {
        this.cafe = cafe;
    }

    public HotspotWifi getWifi() {
        return wifi;
    }

    public void setWifi(HotspotWifi wifi) {
        this.wifi = wifi;
    }

    public String getSpot() {
        return spot;
    }

    public void setSpot(String spot) {
        this.spot = spot;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public boolean isCheck() {
        return check;
    }

    public void setCheck(boolean check) {
        this.check = check;
    }

    public List<Cafe> getCafeList() {
        return cafeList;
    }

    public void setCafeList(List<Cafe> cafeList) {
        this.cafeList = cafeList;
    } 
    
}
