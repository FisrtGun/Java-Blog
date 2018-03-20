package com.firstgun.dao;

import com.firstgun.entity.NewsTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DbMapper {
    //分页显示文章标题，作者，创建日期
    public List<NewsTitle> getSelectNews(@Param("index") Integer index, @Param("pageSize") Integer pageSize);

    //获取文章总条数
    public int getTotalCount();

    //获取今日推荐内容
    public List<NewsTitle> getGroom();

    //根据id显示文章内容
    public NewsTitle getNewsContent(@Param("nid") Integer nid);



}
