package com.Coffee.service.impl;

import com.Coffee.dao.UserDao;
import com.Coffee.domain.User;
import com.Coffee.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserDao userDao;

    @Override
    public Boolean login(String username, String password) {

        if (username!=null&&password!=null){
            User user = userDao.findUserByUsername(username);
            if ((user!=null)&&(user.getPassword().equals(password))){
                return true;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }
}
