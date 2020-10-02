package com.Coffee.service.impl;

import com.Coffee.dao.CommodityDao;
import com.Coffee.domain.Commodity;
import com.Coffee.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commodityService")
public class CommodityImpl implements CommodityService {
    @Autowired
    private CommodityDao commodityDao;
    @Override
    public List<Commodity> findAll() {
        return commodityDao.findAll();
    }
}
