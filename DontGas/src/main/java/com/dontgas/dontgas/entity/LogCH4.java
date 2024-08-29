package com.dontgas.dontgas.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_log_ch4")
public class LogCH4 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ch4_log_idx")
    private Long ch4LogIdx;
    
    @Column(name = "ch4_value")
    private Double ch4Value;
    
    @ManyToOne
    @JoinColumn(name = "phouse_id", nullable = false)
    private PigHouse pigHouse;

    // Getters and Setters
}