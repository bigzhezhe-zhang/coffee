package com.Coffee.domain;

import java.io.Serializable;

public class Stock_table implements Serializable {
    private Integer id;
    private String name;
    private Integer stocknumber;

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

    public Integer getStocknumber() {
        return stocknumber;
    }

    public void setStocknumber(Integer stocknumber) {
        this.stocknumber = stocknumber;
    }

    @Override
    public String toString() {
        return "Stock_table{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", stocknumber=" + stocknumber +
                '}';
    }
}
