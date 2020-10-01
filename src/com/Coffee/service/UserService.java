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
}
