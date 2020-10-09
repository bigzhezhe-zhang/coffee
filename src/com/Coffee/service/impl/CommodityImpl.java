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


    @Override
    public List<Commodity> commodity(String name) {
        Commodity commodity = new Commodity();
        commodity.setName(name);
        return commodityDao.commodity(name);
    }

    @Override
    public int commodity1(Commodity commodity) {
        return commodityDao.commodity1(commodity);
    }

    @Override
    public int commodity2(Commodity commodity) {
        return commodityDao.commodity2(commodity);
    }

    @Override
    public int commodity3(Integer id) {
        return commodityDao.commodity3(id);
    }

}
