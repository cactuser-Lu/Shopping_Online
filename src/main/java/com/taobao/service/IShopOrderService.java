package com.taobao.service;

import com.taobao.bean.PageInfo;
import com.taobao.bean.ShopOrder;

import java.util.List;

public interface IShopOrderService {
    //查询所有的订单
    PageInfo<ShopOrder> findAllOrder(int currentPage,String username);
    //根据订单id删除订单
    void deleteById(int id);
}
