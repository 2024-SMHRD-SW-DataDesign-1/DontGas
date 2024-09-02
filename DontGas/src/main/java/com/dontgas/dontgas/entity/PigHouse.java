package com.dontgas.dontgas.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_pighouse")
public class PigHouse {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "phouse_id")
    private Long phouseId;
    
    @Column(name = "phouse_name")
    private String phouseName;
    
    @Column(name = "phouse_district")
    private String phouseDistrict;
    
    @Column(name = "phouse_address")
    private String phouseAddress;
    
    @ManyToOne
    @JoinColumn(name = "farmer_id", nullable = false)
    @JsonBackReference
    private Farmer farmer;

    @OneToMany(mappedBy = "pigHouse", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<LogCH4> logCH4List;

    @OneToMany(mappedBy = "pigHouse", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<LogH2S> logH2SList;

    @OneToMany(mappedBy = "pigHouse", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<LogNH3> logNH3List;

 // 기본 생성자
    public PigHouse() {}

    // Getter와 Setter
    public Long getPhouseId() {
        return phouseId;
    }

    public void setPhouseId(Long phouseId) {
        this.phouseId = phouseId;
    }

    public String getPhouseName() {
        return phouseName;
    }

    public void setPhouseName(String phouseName) {
        this.phouseName = phouseName;
    }

    public String getPhouseDistrict() {
        return phouseDistrict;
    }

    public void setPhouseDistrict(String phouseDistrict) {
        this.phouseDistrict = phouseDistrict;
    }

    public String getPhouseAddress() {
        return phouseAddress;
    }

    public void setPhouseAddress(String phouseAddress) {
        this.phouseAddress = phouseAddress;
    }

    public Farmer getFarmer() {
        return farmer;
    }

    public void setFarmer(Farmer farmer) {
        this.farmer = farmer;
    }

    public List<LogCH4> getLogCh4s() {
        return logCH4List;
    }

    public void setLogCh4s(List<LogCH4> logCh4s) {
        this.logCH4List = logCh4s;
    }

    public List<LogH2S> getLogH2s() {
        return logH2SList;
    }

    public void setLogH2s(List<LogH2S> logH2s) {
        this.logH2SList = logH2s;
    }

    public List<LogNH3> getLogNh3s() {
        return logNH3List;
    }

    public void setLogNh3s(List<LogNH3> logNh3s) {
        this.logNH3List = logNh3s;
    }
}