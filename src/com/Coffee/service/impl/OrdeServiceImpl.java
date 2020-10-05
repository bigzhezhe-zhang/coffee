package com.Coffee.service.impl;

import com.Coffee.dao.OrdeDao;
import com.Coffee.domain.Orde;
import com.Coffee.service.OrdeService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class OrdeServiceImpl implements OrdeService {

    @Autowired
    private OrdeDao ordeDao;

    @Override
    public List<Orde> findAll(String username) {
        List<Orde> list = ordeDao.findAll(username);
        return list;
    }

    @Override
    public void add(Orde orde) {
        ordeDao.add(orde);
    }
}
