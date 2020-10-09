package com.Coffee.controller;

import com.Coffee.domain.Commodity;
import com.Coffee.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    //进入商品库存价格信息维护页面
    @RequestMapping("/commodityPrice")
    public ModelAndView commodityPrice(String name){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("commodityPrice");
        List<Commodity> list = commodityService.commodity("%" + name +"%");
        mv.addObject("list",list);
        return mv;
    }

    //进入修改界面
    @RequestMapping("/addCommodityInformation")
    public String addCommodityInformation(){
        return "addCommodity";
    }

    @RequestMapping("/addCommodity")
    public String addCommodity(Commodity commodity, Model model){
        Integer result = commodityService.commodity1(commodity);
        if(result > 0) {
            model.addAttribute("msg", "添加成功");
        }else {
            model.addAttribute("msg", "添加失败");
        }
        return "addCommodity";
    }

    //返回上一页
    @RequestMapping("/return1")
    public String return1(){
        return "commodityPrice";
    }

    //进入修改界面
    @RequestMapping("/modify1")
    public String modify(){
        return "modifyCommodity";
    }

    //修改界面
    @RequestMapping("/modify")
    public String modify (Commodity commodity, Model model){
        int result = commodityService.commodity2(commodity);
        if(result > 0) {
            model.addAttribute("msg", "修改成功");
        }else {
            model.addAttribute("msg", "修改失败");
        }
        return "modifyCommodity";
    }

    @RequestMapping("/delete")
    public ModelAndView delete(Integer id){
        int result = commodityService.commodity3(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("commodityPrice");
        if(result > 0) {
            mv.addObject("msg","删除信息成功");
        }else {
            mv.addObject("msg", "删除信息不存在或程序出现错误");
        }
        return mv;
    }
}
