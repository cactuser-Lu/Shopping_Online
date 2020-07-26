package com.taobao.dao;

import com.taobao.bean.ShopOrder;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface IShopOrderDao {
    int getTotalCount(@Param("shop_code")String shop_code);
    List<ShopOrder> findAllOrder(@Param("start") int start, @Param("size")int size,@Param("shop_code")String shop_code);
    void deleteById(int id);
}
