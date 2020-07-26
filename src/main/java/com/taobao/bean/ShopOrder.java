package com.taobao.bean;

import java.util.Date;

public class ShopOrder {
    private int id;
    private String shop_code;
    private Date addTime;
    private String totalmoney;
    private int isDelete;
    private int status;

    public void setId(int id) {
        this.id = id;
    }

    public void setShop_code(String shop_code) {
        this.shop_code = shop_code;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public void setTotalmoney(String totalmoney) {
        this.totalmoney = totalmoney;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getShop_code() {
        return shop_code;
    }

    public Date getAddTime() {
        return addTime;
    }

    public String getTotalmoney() {
        return totalmoney;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public int getStatus() {
        return status;
    }

    @Override
    public String toString() {
        return "ShopOrder{" +
                "id=" + id +
                ", shop_code='" + shop_code + '\'' +
                ", addTime=" + addTime +
                ", totalmoney='" + totalmoney + '\'' +
                ", isDelete=" + isDelete +
                ", status=" + status +
                '}';
    }
}
