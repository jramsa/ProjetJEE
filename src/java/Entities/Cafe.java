/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jerry
 */
@Entity
@Table(name = "cafe")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cafe.findAll", query = "SELECT c FROM Cafe c")
    , @NamedQuery(name = "Cafe.findById", query = "SELECT c FROM Cafe c WHERE c.id = :id")
    , @NamedQuery(name = "Cafe.findByDate", query = "SELECT c FROM Cafe c WHERE c.date = :date")
    , @NamedQuery(name = "Cafe.findByCounterPrice", query = "SELECT c FROM Cafe c WHERE c.counterPrice = :counterPrice")
    , @NamedQuery(name = "Cafe.findByIndoorPrice", query = "SELECT c FROM Cafe c WHERE c.indoorPrice = :indoorPrice")
    , @NamedQuery(name = "Cafe.findByOutdoorPrice", query = "SELECT c FROM Cafe c WHERE c.outdoorPrice = :outdoorPrice")
    , @NamedQuery(name = "Cafe.findByLat", query = "SELECT c FROM Cafe c WHERE c.lat = :lat")
    , @NamedQuery(name = "Cafe.findByLon", query = "SELECT c FROM Cafe c WHERE c.lon = :lon")})
public class Cafe implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "cafe_name")
    private String cafeName;
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
    @Column(name = "district")
    private String district;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "counter_price")
    private BigDecimal counterPrice;
    @Basic(optional = false)
    @NotNull
    @Column(name = "indoor_price")
    private BigDecimal indoorPrice;
    @Basic(optional = false)
    @NotNull
    @Column(name = "outdoor_price")
    private BigDecimal outdoorPrice;
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

    public Cafe() {
    }

    public Cafe(Integer id) {
        this.id = id;
    }

    public Cafe(Integer id, Date date, String cafeName, String address, String district, BigDecimal counterPrice, BigDecimal indoorPrice, BigDecimal outdoorPrice, String lat, String lon) {
        this.id = id;
        this.date = date;
        this.cafeName = cafeName;
        this.address = address;
        this.district = district;
        this.counterPrice = counterPrice;
        this.indoorPrice = indoorPrice;
        this.outdoorPrice = outdoorPrice;
        this.lat = lat;
        this.lon = lon;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getCafeName() {
        return cafeName;
    }

    public void setCafeName(String cafeName) {
        this.cafeName = cafeName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public BigDecimal getCounterPrice() {
        return counterPrice;
    }

    public void setCounterPrice(BigDecimal counterPrice) {
        this.counterPrice = counterPrice;
    }

    public BigDecimal getIndoorPrice() {
        return indoorPrice;
    }

    public void setIndoorPrice(BigDecimal indoorPrice) {
        this.indoorPrice = indoorPrice;
    }

    public BigDecimal getOutdoorPrice() {
        return outdoorPrice;
    }

    public void setOutdoorPrice(BigDecimal outdoorPrice) {
        this.outdoorPrice = outdoorPrice;
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
        if (!(object instanceof Cafe)) {
            return false;
        }
        Cafe other = (Cafe) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Cafe[ id=" + id + " ]";
    }
    
}
