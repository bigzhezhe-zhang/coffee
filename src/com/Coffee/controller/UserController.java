package com.Coffee.controller;

import com.Coffee.domain.User;
import com.Coffee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/update")
    public ModelAndView update(Integer telephone, HttpSession session){
        String username = (String) session.getAttribute("username");
        userService.updateByUsername(telephone,username);
        ModelAndView mv = new ModelAndView();
        User user = userService.findUserByUsername(username);
        mv.setViewName("update");
        mv.addObject("user",user);
        return mv;
    }
    @RequestMapping("/userInformation")
    public ModelAndView userInformation (String username){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userInformation");
        List<User> list = userService.user(username);
        mv.addObject("list",list);
        return mv;
    }

    @RequestMapping("/modify")
    public ModelAndView modify (String password,String telephone,Integer id){
        ModelAndView mv = new ModelAndView();
        userService.user1(password, telephone, id);
        mv.setViewName("userInformation");
        return mv;
    }

    @RequestMapping("/delete1")
    public ModelAndView delete1(Integer id){
        userService.user2(id);
        ModelAndView mv =new ModelAndView();
        mv.setViewName("userInformation");
        return mv;
    }
}
