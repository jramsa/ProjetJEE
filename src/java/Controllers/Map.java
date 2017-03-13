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
import org.primefaces.event.map.OverlaySelectEvent;
import org.primefaces.model.map.Circle;
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
            System.out.println("Centre :" + posLat + " " + posLon);
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

    @EJB
    HotspotWifiFacade wifiFacade;

    private Cafe cafe;
    private HotspotWifi wifi;

    private String spot;
    private String distance;
    private boolean check;

    private List<Cafe> cafeList = new ArrayList<>();

    public List<Cafe> cafeListTous() {
        cafeList = cafeFacade.cafeListTous();
        return getCafeList();
    }

    private List<HotspotWifi> wifiList = new ArrayList<>();

    public List<HotspotWifi> wifiListTous() {
        wifiList = wifiFacade.wifiListTous();
        return getWifiList();
    }

    public double dist(double xa, double ya, double xb, double yb) {
        double distance = Math.sqrt(Math.pow((xb - xa), 2) + Math.pow((yb - ya), 2));
        return distance;
    }

    public void placeMarkers() {
        Double lat;
        Double lon;

        //reinitialise carte
        geoModel = new DefaultMapModel();
        List<Cafe> cafeTmp = new ArrayList<>();
        List<HotspotWifi> wifiTmp = new ArrayList<>();

        if (spot.equals("cafe") && distance.equals("500")) {
            cafeListTous();
            for (Cafe cafes : cafeList) {
                lat = Double.parseDouble(cafes.getLat().replace(",", "."));
                lon = Double.parseDouble(cafes.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.005) {
                    cafeTmp.add(cafes);
                }
            }
            for (Cafe cafestmp : cafeTmp) {
                lat = Double.parseDouble(cafestmp.getLat().replace(",", "."));
                lon = Double.parseDouble(cafestmp.getLon().replace(",", "."));
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), cafestmp.getCafeName()+" - "+ cafestmp.getAddress()+" - "+ cafestmp.getDistrict()));
            }
        }
        else if (spot.equals("cafe") && distance.equals("1km")) {
            cafeListTous();
            for (Cafe cafes : cafeList) {
                lat = Double.parseDouble(cafes.getLat().replace(",", "."));
                lon = Double.parseDouble(cafes.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.01) {
                    cafeTmp.add(cafes);
                }
            }
            for (Cafe cafestmp : cafeTmp) {
                lat = Double.parseDouble(cafestmp.getLat().replace(",", "."));
                lon = Double.parseDouble(cafestmp.getLon().replace(",", "."));
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), cafestmp.getCafeName()+" - "+ cafestmp.getAddress()+" - "+ cafestmp.getDistrict()));
            }
        }
        else if (spot.equals("hotspot_wifi") && distance.equals("500")) {
            wifiListTous();
            for (HotspotWifi wifis : wifiList) {
                lat = Double.parseDouble(wifis.getLat().replace(",", "."));
                lon = Double.parseDouble(wifis.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.005) {
                    wifiTmp.add(wifis);
                }
            }
            for (HotspotWifi wifistmp : wifiTmp) {
                lat = Double.parseDouble(wifistmp.getLat().replace(",", "."));
                lon = Double.parseDouble(wifistmp.getLon().replace(",", "."));
                /*Circle circle = new Circle(new LatLng(lat, lon), 90);
                circle.setStrokeColor("#1E90FF");
                circle.setFillColor("#1E90FF");
                circle.setStrokeOpacity(0.5);
                circle.setFillOpacity(0.5);
                geoModel.addOverlay(circle);*/
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), wifistmp.getSiteName()+" - "+ wifistmp.getAddress()+" - "+ wifistmp.getDistrict(),"", "http://maps.google.com/mapfiles/ms/micons/blue-dot.png"));
            }
        }
        else if (spot.equals("hotspot_wifi") && distance.equals("1km")) {
            wifiListTous();
            for (HotspotWifi wifis : wifiList) {
                lat = Double.parseDouble(wifis.getLat().replace(",", "."));
                lon = Double.parseDouble(wifis.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.01) {
                    wifiTmp.add(wifis);
                }
            }
            for (HotspotWifi wifistmp : wifiTmp) {
                lat = Double.parseDouble(wifistmp.getLat().replace(",", "."));
                lon = Double.parseDouble(wifistmp.getLon().replace(",", "."));
                /*Circle circle = new Circle(new LatLng(lat, lon), 90);
                circle.setStrokeColor("#1E90FF");
                circle.setFillColor("#1E90FF");
                circle.setStrokeOpacity(0.5);
                circle.setFillOpacity(0.5);
                geoModel.addOverlay(circle);*/
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), wifistmp.getSiteName()+" - "+ wifistmp.getAddress()+" - "+ wifistmp.getDistrict(),"", "http://maps.google.com/mapfiles/ms/micons/blue-dot.png"));
            }
        }
        else if (spot.equals("cafe") && distance.equals("tous")) {
            cafeListTous();
            for (Cafe cafes : cafeList) {
                lat = Double.parseDouble(cafes.getLat().replace(",", "."));
                lon = Double.parseDouble(cafes.getLon().replace(",", "."));
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), cafes.getCafeName()+"-"+ cafes.getAddress()+"-"+ cafes.getDistrict()));
            }
        } else if (spot.equals("hotspot_wifi") && distance.equals("tous")) {
            wifiListTous();
            for (HotspotWifi wifis : wifiList) {
                lat = Double.parseDouble(wifis.getLat().replace(",", "."));
                lon = Double.parseDouble(wifis.getLon().replace(",", "."));
                /*Circle circle = new Circle(new LatLng(lat, lon), 90);
                circle.setStrokeColor("#1E90FF");
                circle.setFillColor("#1E90FF");
                circle.setStrokeOpacity(0.5);
                circle.setFillOpacity(0.5);
                geoModel.addOverlay(circle);*/
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), wifis.getSiteName()+" - "+ wifis.getAddress()+" - "+ wifis.getDistrict(),"", "http://maps.google.com/mapfiles/ms/micons/blue-dot.png"));
            }
        } else if (spot.equals("tous") && distance.equals("tous")) {
            cafeListTous();
            for (Cafe cafes : cafeList) {
                lat = Double.parseDouble(cafes.getLat().replace(",", "."));
                lon = Double.parseDouble(cafes.getLon().replace(",", "."));
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), cafes.getCafeName()+" - "+ cafes.getAddress()+" - "+ cafes.getDistrict()));
            }
            wifiListTous();
            for (HotspotWifi wifis : wifiList) {
                lat = Double.parseDouble(wifis.getLat().replace(",", "."));
                lon = Double.parseDouble(wifis.getLon().replace(",", "."));
                /*Circle circle = new Circle(new LatLng(lat, lon), 90);
                circle.setStrokeColor("#1E90FF");
                circle.setFillColor("#1E90FF");
                circle.setStrokeOpacity(0.5);
                circle.setFillOpacity(0.5);
                geoModel.addOverlay(circle);*/
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), wifis.getSiteName()+" - "+ wifis.getAddress()+" - "+ wifis.getDistrict(),"", "http://maps.google.com/mapfiles/ms/micons/blue-dot.png"));
            }
        }
        else if (spot.equals("tous") && distance.equals("500")) {
            cafeListTous();
            for (Cafe cafes : cafeList) {
                lat = Double.parseDouble(cafes.getLat().replace(",", "."));
                lon = Double.parseDouble(cafes.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.005) {
                    cafeTmp.add(cafes);
                }
            }
            for (Cafe cafestmp : cafeTmp) {
                lat = Double.parseDouble(cafestmp.getLat().replace(",", "."));
                lon = Double.parseDouble(cafestmp.getLon().replace(",", "."));
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), cafestmp.getCafeName()+" - "+ cafestmp.getAddress()+" - "+ cafestmp.getDistrict()));
            }
            wifiListTous();
            for (HotspotWifi wifis : wifiList) {
                lat = Double.parseDouble(wifis.getLat().replace(",", "."));
                lon = Double.parseDouble(wifis.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.005) {
                    wifiTmp.add(wifis);
                }
            }
            for (HotspotWifi wifistmp : wifiTmp) {
                lat = Double.parseDouble(wifistmp.getLat().replace(",", "."));
                lon = Double.parseDouble(wifistmp.getLon().replace(",", "."));
                /*Circle circle = new Circle(new LatLng(lat, lon), 90);
                circle.setStrokeColor("#1E90FF");
                circle.setFillColor("#1E90FF");
                circle.setStrokeOpacity(0.5);
                circle.setFillOpacity(0.5);
                geoModel.addOverlay(circle);*/
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), wifistmp.getSiteName()+" - "+ wifistmp.getAddress()+" - "+ wifistmp.getDistrict(),"", "http://maps.google.com/mapfiles/ms/micons/blue-dot.png"));
            }
        }
        else if (spot.equals("tous") && distance.equals("1km")) {
            cafeListTous();
            for (Cafe cafes : cafeList) {
                lat = Double.parseDouble(cafes.getLat().replace(",", "."));
                lon = Double.parseDouble(cafes.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.01) {
                    cafeTmp.add(cafes);
                }
            }
            for (Cafe cafestmp : cafeTmp) {
                lat = Double.parseDouble(cafestmp.getLat().replace(",", "."));
                lon = Double.parseDouble(cafestmp.getLon().replace(",", "."));
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), cafestmp.getCafeName()+" - "+ cafestmp.getAddress()+" - "+ cafestmp.getDistrict()));
            }
            wifiListTous();
            for (HotspotWifi wifis : wifiList) {
                lat = Double.parseDouble(wifis.getLat().replace(",", "."));
                lon = Double.parseDouble(wifis.getLon().replace(",", "."));
                if (dist( lat, lon,posLat, posLon) < 0.01) {
                    wifiTmp.add(wifis);
                }
            } 
            for (HotspotWifi wifistmp : wifiTmp) {
                lat = Double.parseDouble(wifistmp.getLat().replace(",", "."));
                lon = Double.parseDouble(wifistmp.getLon().replace(",", "."));
                /*Circle circle = new Circle(new LatLng(lat, lon), 90);
                circle.setStrokeColor("#1E90FF");
                circle.setFillColor("#1E90FF");
                circle.setStrokeOpacity(0.5);
                circle.setFillOpacity(0.5);
                geoModel.addOverlay(circle);*/
                geoModel.addOverlay(new Marker(new LatLng(lat, lon), wifistmp.getSiteName()+" - "+ wifistmp.getAddress()+" - "+ wifistmp.getDistrict(),"", "http://maps.google.com/mapfiles/ms/micons/blue-dot.png"));
            }
        }
        
        else {
            System.out.println("Choix non codé");
        }
    }
    
    private Marker marker;
    
    public void onMarkerSelect(OverlaySelectEvent event) {
        marker = (Marker) event.getOverlay();
    }
    
    public Marker getMarker() {
        return marker;
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

    public List<HotspotWifi> getWifiList() {
        return wifiList;
    }

    public void setWifiList(List<HotspotWifi> wifiList) {
        this.wifiList = wifiList;
    }

}
