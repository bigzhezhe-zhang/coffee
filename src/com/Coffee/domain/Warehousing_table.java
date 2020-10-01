package com.Coffee.domain;

import java.io.Serializable;
import java.util.Date;

public class Warehousing_table implements Serializable {
    private Integer id;
    private String name;
    private Integer number;
    private Date time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Warehousing_table{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", number=" + number +
                ", time=" + time +
                '}';
    }
}
