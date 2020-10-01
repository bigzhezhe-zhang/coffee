package com.Coffee.domain;

import java.io.Serializable;
import java.util.Date;

public class Orde_table  implements Serializable {

    private Integer id;
    private String username;
    private Integer number;
    private String status;
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

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
        return "Orde_table{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", number=" + number +
                ", status='" + status + '\'' +
                ", price=" + price +
                ", date=" + date +
                '}';
    }
}
