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

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    public User findUserByUsername(String username);

    /**
     * 根据用户名更新联系方式
     * @param telephone
     * @param username
     */
    public void updateByUsername(int telephone,String username);
}
