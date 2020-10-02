package com.Coffee.service.impl;

import com.Coffee.dao.UserDao;
import com.Coffee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> findAll() {
         return userDao.findAll();
    }
}
