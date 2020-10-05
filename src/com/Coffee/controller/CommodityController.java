package com.Coffee.controller;

import com.Coffee.domain.Commodity;
import com.Coffee.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/commodity")
public class CommodityController {

    @Autowired
    private CommodityService commodityService;

    @RequestMapping("/list")
    public ModelAndView list(){
        ModelAndView mv = new ModelAndView();
        List<Commodity> list = commodityService.findAll();
        mv.addObject("list",list);
        mv.setViewName("details");
        return mv;
    }
}
