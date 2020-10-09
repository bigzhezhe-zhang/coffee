package com.Coffee.service.impl;

import com.Coffee.dao.UserDao;
import com.Coffee.domain.User;
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

    @Override
    public void updateByUsername(int telephone, String username) {
        userDao.updateByUsername(telephone,username);
    }

    @Override
    public User findUserByUsername(String username) {
        User user = userDao.findUserByUsername(username);
        return user;
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public List<User> user(String username) {
        User user = new User();
        user.setUsername(username);
        return userDao.user(username);
    }

    @Override
    public int user1(String password, String telephone, Integer id) {
        return  userDao.user1(password, telephone, id);
    }

    @Override
    public int user2(Integer id) {
        return userDao.user2(id);
    }
}
