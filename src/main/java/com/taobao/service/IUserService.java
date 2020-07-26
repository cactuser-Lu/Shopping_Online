package com.taobao.service;

import com.taobao.bean.User;

public interface IUserService {
    //注册用户
    boolean register(User user);

    //用户登录
    boolean login(String userName,String passWord);

    //根据用户名查找信息
    User findByUserName(String userName);
}
