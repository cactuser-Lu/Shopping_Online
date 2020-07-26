package com.taobao.controller;

import com.taobao.bean.User;
import com.taobao.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.net.HttpCookie;


@Controller
@RequestMapping("user")
public class userController {

    @Autowired
    private IUserService userService;

    //用户登录
    @RequestMapping("login.do")
    public ModelAndView login(User user,HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        boolean login = userService.login(user.getUserName(), user.getPassWord());
        if(login){
            modelAndView.setViewName("main");
            System.out.println("--------");
            session.setAttribute("userName",user.getUserName());
        }else{
            modelAndView.setViewName("../login");
        }
        return modelAndView;
    }

    //用户注册
    @RequestMapping("toRegister.do")
    public ModelAndView toRegister(){
        //跳转到注册页面
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("../register");
        return modelAndView;
    }
    @RequestMapping("register.do")
    public ModelAndView register(User user){
        ModelAndView modelAndView = new ModelAndView();
        boolean register = userService.register(user);
        if(register){
            //注册成功之后返回登陆界面
            modelAndView.setViewName("../login");
        }else{
            modelAndView.setViewName("../register");
        }
        return modelAndView;
    }

    @RequestMapping("yonghu_info.do")
    public ModelAndView getUserInfo(HttpSession session){
        System.out.println("=========");
        System.out.println(session.getAttribute("userName"));
        String userName = (String) session.getAttribute("userName");

        User user = userService.findByUserName(userName);
        System.out.println(user);
        ModelAndView mv=new ModelAndView();
        mv.addObject("user",user);
        mv.setViewName("yonghu-info");
        return mv;
    }



}
