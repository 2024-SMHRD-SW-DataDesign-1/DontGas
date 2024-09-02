package com.dontgas.dontgas.entity;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "tb_log_ch4")
public class LogCH4 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ch4_log_idx")
    private Long ch4LogIdx;
    
    @Column(name = "ch4_value")
    private Double ch4Value;
    
    @Column(name = "ch4_insert_time")
    private Timestamp ch4InsertTime;
    
    @ManyToOne
    @JoinColumn(name = "phouse_id", nullable = false)
    @JsonBackReference
    private PigHouse pigHouse;

	// Getters and Setters
    public Long getCh4LogIdx() {
        return ch4LogIdx;
    }

    public void setCh4LogIdx(Long ch4LogIdx) {
        this.ch4LogIdx = ch4LogIdx;
    }

    public Double getCh4Value() {
        return ch4Value;
    }

    public void setCh4Value(Double ch4Value) {
        this.ch4Value = ch4Value;
    }

    public Timestamp getCh4InsertTime() {
        return ch4InsertTime;
    }

    public void setCh4InsertTime(Timestamp ch4InsertTime) {
        this.ch4InsertTime = ch4InsertTime;
    }

    public PigHouse getPigHouse() {
        return pigHouse;
    }

    public void setPigHouse(PigHouse pigHouse) {
        this.pigHouse = pigHouse;
    }
    
}