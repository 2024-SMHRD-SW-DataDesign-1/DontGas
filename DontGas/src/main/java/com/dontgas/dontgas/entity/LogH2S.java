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
@Table(name = "tb_log_h2s")
public class LogH2S {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "h2s_log_idx")
    private Long h2sLogIdx;
    
    @Column(name = "h2s_value")
    private Double h2sValue;

    @ManyToOne
    @JoinColumn(name = "phouse_id", nullable = false)
    @JsonBackReference
    private PigHouse pigHouse;

    // Getters and Setters
}