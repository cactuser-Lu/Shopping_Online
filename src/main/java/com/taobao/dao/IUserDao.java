package com.taobao.dao;

import com.taobao.bean.User;

public interface IUserDao {
    boolean register(User user);

    User findUserByName(String username);
}
