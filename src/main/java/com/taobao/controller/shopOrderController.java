package com.taobao.controller;


import com.taobao.bean.PageInfo;
import com.taobao.bean.ShopOrder;
import com.taobao.service.IShopOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("shoporder")
public class shopOrderController {


    @Autowired
    private IShopOrderService shopOrderService;
    //查询所有的订单
    @RequestMapping("shop_order.do")
    public ModelAndView findAllOrder(@RequestParam(defaultValue = "1")int currentPage, String username,
                                     @RequestParam(defaultValue = "0") int type,
                                     HttpSession session){

        if(type==1){
            session.setAttribute("searchcode",username);
        }
        else if(type==0){
            username =(String) session.getAttribute("searchcode");
        }
        else if(type==2){
            session.removeAttribute("searchcode");
        }

        PageInfo<ShopOrder> pageInfo = shopOrderService.findAllOrder(currentPage,username);//查到所有的订单
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("shop-order");
        modelAndView.addObject("pageInfo",pageInfo);
        return modelAndView;
    }

    //根据订单id进行删除
    @RequestMapping("deleteById.do")
    public String deleteById(int id){
        shopOrderService.deleteById(id);
        return "redirect:shop_order.do";
    }




}
