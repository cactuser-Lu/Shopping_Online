package com.taobao.bean;

import java.util.List;

public class PageInfo<T> {
    private List<T> list;
    private int totalCount;
    private int size;
    private int totalPage;
    private int currentPage;

    public List<T> getList() {
        return list;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public int getSize() {
        return size;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    @Override
    public String toString() {
        return "PageInfo{" +
                "list=" + list +
                ", totalCount=" + totalCount +
                ", size=" + size +
                ", totalPage=" + totalPage +
                ", currentPage=" + currentPage +
                '}';
    }


}
