package com.dontgas.dontgas.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_log_nh3")
public class LogNH3 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "nh3_log_idx")
    private Long nh3LogIdx;
    
    @Column(name = "nh3_value")
    private Double nh3Value;

    @ManyToOne
    @JoinColumn(name = "phouse_id", nullable = false)
    @JsonBackReference
    private PigHouse pigHouse;

    // Getters and Setters
}
