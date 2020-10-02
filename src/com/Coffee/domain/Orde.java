package com.Coffee.domain;

import java.io.Serializable;
import java.util.Date;

public class Orde implements Serializable {
    private Integer id;
    private String username;
    private Integer nameid;
    private Integer number;
    private Double price;
    private Date date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Orde{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", nameid=" + nameid +
                ", number=" + number +
                ", price=" + price +
                ", date=" + date +
                '}';
    }
}
