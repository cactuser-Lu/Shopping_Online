package com.taobao.service.impl;

import com.taobao.bean.PageInfo;
import com.taobao.bean.ShopOrder;
import com.taobao.dao.IShopOrderDao;
import com.taobao.service.IShopOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ShopOrderServiceImpl implements IShopOrderService {

    @Autowired
    private IShopOrderDao shopOrderDao;
    @Override
    public PageInfo<ShopOrder> findAllOrder(int currentPage,String username) {
        PageInfo pageInfo=new PageInfo();
        pageInfo.setSize(2);
        //总数目
        int totalCount=shopOrderDao.getTotalCount(username);
        pageInfo.setTotalCount(totalCount);
        //总页数
        double tp=totalCount/2.0;
        int totalPage=(int)Math.ceil(tp);
        pageInfo.setTotalPage(totalPage);
        if(currentPage<1){
            pageInfo.setCurrentPage(1);
        }else if(currentPage>totalPage){
            pageInfo.setCurrentPage(totalPage);
        }else{
            pageInfo.setCurrentPage(currentPage);
        }
        //计算每一页的开始
        int start=(pageInfo.getCurrentPage()-1)*2;
        List<ShopOrder> shop_orderList=shopOrderDao.findAllOrder(start,2,username);
        pageInfo.setList(shop_orderList);
        return pageInfo;

    }

    @Override
    public void deleteById(int id) {
        shopOrderDao.deleteById(id);
    }



}
