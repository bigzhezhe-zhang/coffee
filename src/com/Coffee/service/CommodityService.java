package com.Coffee.service;

import com.Coffee.domain.Commodity;

import java.util.List;

public interface CommodityService {
    /**
     * 查询所有信息
     * @return
     */
    public List<Commodity> findAll();
}
