package com.taobao.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("shop")

public class shopController {

    @RequestMapping("user_manage.do")
    public ModelAndView User_Manage(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("user-list");
        return mv;
    }

    @RequestMapping("my_collection.do")
    public ModelAndView My_Collection(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("shop-collect");
        return mv;
    }

    @RequestMapping("shop_car.do")
    public ModelAndView Shop_Car(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("shop-car");
        return mv;
    }

    @RequestMapping("shop_order.do")
    public ModelAndView Shop_Order(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("shop-order");
        return mv;
    }

    @RequestMapping("yonghu_info.do")
    public ModelAndView YongHu_Info(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("yonghu-info");
        return mv;
    }
}
