package com.Coffee.controller;

import com.Coffee.domain.User;
import com.Coffee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/list")
    public String findAll(Model model){
        System.out.println("查询");
        List<User> list = userService.findAll();
        model.addAttribute("list",list);
        return "list";
    }
}
