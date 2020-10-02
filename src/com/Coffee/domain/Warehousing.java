package com.Coffee.domain;

import java.io.Serializable;
import java.util.Date;

public class Warehousing implements Serializable {
    private Integer id;
    private Integer nameid;
    private Integer number;
    private Date date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNameid() {
        return nameid;
    }

    public void setNameid(Integer nameid) {
        this.nameid = nameid;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Warehousing{" +
                "id=" + id +
                ", nameid=" + nameid +
                ", number=" + number +
                ", date=" + date +
                '}';
    }
}
