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

}