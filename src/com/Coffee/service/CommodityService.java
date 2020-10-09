package com.Coffee.service;

import com.Coffee.domain.Commodity;

import java.util.List;

public interface CommodityService {
    /**
     * 查询所有信息
     * @return
     */
    public List<Commodity> findAll();

    public List<Commodity> commodity(String name);

    public int commodity1 (Commodity commodity);

    public int commodity2(Commodity commodity);

    public int commodity3(Integer id);
}
