package com.firstgun.utils;

/**
 * @Author:
 * @Date: 2018/3/15 7:25
 * @Description: 分页查询功能
 */
public class PageUtils {
    private int index;//当前页
    private int pageSize;//页量
    private int pageCount;//总条数
    private int totalPage;//总页数

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }
    //获取当前页的页量（即：总条数除以页量，获得总页数）
    public int getTotalPage() {
        return pageCount % pageSize ==0 ? pageCount/pageSize : pageCount/pageSize+1;

    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
}
