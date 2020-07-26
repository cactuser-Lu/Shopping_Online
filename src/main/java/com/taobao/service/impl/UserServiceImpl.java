package com.taobao.service.impl;

import com.taobao.bean.User;
import com.taobao.dao.IUserDao;
import com.taobao.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;

    @Override
    public boolean register(User user) {
        if((user.getUserName()!=null&&user.getUserName()!="")
        &&(user.getPassWord()!=null&&user.getPassWord()!="")
        &&(user.getRealName()!=null&&user.getRealName()!="")
        &&(user.getEmail()!=null&&user.getEmail()!="")
        &&(user.getPhone()!=null&&user.getPhone()!="")
        &&(user.getSex()!=null&&user.getSex()!="")){
           userDao.register(user);
           return true;
        }
        else{
            return false;
        }
    }



    @Override
    public boolean login(String userName,String passWord) {
        User user= userDao.findUserByName(userName);
        if(user!=null && user.getPassWord().equals(passWord)){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public User findByUserName(String userName) {
        User user = userDao.findUserByName(userName);
        return user;
    }
}
