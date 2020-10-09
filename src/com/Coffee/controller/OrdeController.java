package com.Coffee.controller;

import com.Coffee.domain.Orde;
import com.Coffee.service.OrdeService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrdeController {

    @Autowired
    private OrdeService ordeService;
    @RequestMapping("/book")
    public ModelAndView book(Orde orde){
        ModelAndView mv = new ModelAndView();
        Date now=new Date();
        orde.setDate(now);
        ordeService.add(orde);
        List<Orde> orders = ordeService.horders(orde.getUsername());
        mv.addObject("orders",orders);
        mv.setViewName("horders");
        return mv;
    }

    @RequestMapping("/horders")
    public ModelAndView horders(HttpSession session){
        ModelAndView mv = new ModelAndView();
        String username = (String) session.getAttribute("username");
        System.out.println(username);
        List<Orde> orders = ordeService.horders(username);
        mv.addObject("orders",orders);
        mv.setViewName("horders");
        return mv;
    }

    @RequestMapping("/orderInformation")
    public ModelAndView orderInformation (String username){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("orderInformation");
        List<Orde> list = ordeService.orde("%" + username +"%");
        mv.addObject("list",list);
        return mv;
    }

    @RequestMapping("/modify")
    public ModelAndView modify(String state,Integer id){
        ModelAndView mv = new ModelAndView();
        ordeService.orde1(state, id);
        mv.setViewName("orderInformation");
        return mv;
    }
}
