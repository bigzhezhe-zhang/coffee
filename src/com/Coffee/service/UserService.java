package com.Coffee.service;

import com.Coffee.domain.User;

import java.util.List;

public interface UserService {
    /**
     * 查询所有
     * @param
     * @return
     */
    public List<User> findAll();

    /**
     * 添加用户
     */
    public void addUser(User user);
}
