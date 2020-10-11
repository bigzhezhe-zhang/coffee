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
    public int login(String username, String password) {

        if (username!=null&&password!=null){
            User user = userDao.findUserByUsername(username);
            if ((user!=null)&&(user.getPassword().equals(password))){
                System.out.printf(String.valueOf(user.getIdentity().equals("0")));
                if (user.getIdentity().equals("1")){
                    return 1;
                }else if (user.getIdentity().equals("0")){
                    return 0;
                }else {
                    return 2;
                }
            }else {
                return 2;
            }
        }else {
            return 2;
        }
    }
}
