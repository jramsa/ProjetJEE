/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jerry
 */
@Entity
@Table(name = "hotspot_wifi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HotspotWifi.findAll", query = "SELECT h FROM HotspotWifi h")
    , @NamedQuery(name = "HotspotWifi.findById", query = "SELECT h FROM HotspotWifi h WHERE h.id = :id")
    , @NamedQuery(name = "HotspotWifi.findByLat", query = "SELECT h FROM HotspotWifi h WHERE h.lat = :lat")
    , @NamedQuery(name = "HotspotWifi.findByLon", query = "SELECT h FROM HotspotWifi h WHERE h.lon = :lon")})
public class HotspotWifi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "site_name")
    private String siteName;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "site_code")
    private String siteCode;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "district")
    private String district;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "lat")
    private String lat;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "lon")
    private String lon;

    public HotspotWifi() {
    }

    public HotspotWifi(Integer id) {
        this.id = id;
    }

    public HotspotWifi(Integer id, String siteName, String address, String siteCode, String district, String lat, String lon) {
        this.id = id;
        this.siteName = siteName;
        this.address = address;
        this.siteCode = siteCode;
        this.district = district;
        this.lat = lat;
        this.lon = lon;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSiteCode() {
        return siteCode;
    }

    public void setSiteCode(String siteCode) {
        this.siteCode = siteCode;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLon() {
        return lon;
    }

    public void setLon(String lon) {
        this.lon = lon;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HotspotWifi)) {
            return false;
        }
        HotspotWifi other = (HotspotWifi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.HotspotWifi[ id=" + id + " ]";
    }
    
}
