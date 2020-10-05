package com.Coffee.service;

import com.Coffee.domain.Orde;

import java.util.List;

public interface OrdeService {
    /**
     * 查询所有订单
     * @return
     */
    public List<Orde> findAll(String username);

    /**
     * 添加订单
     * @param orde
     */
    public void add(Orde orde);
}
