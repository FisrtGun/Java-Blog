package com.firstgun.dao;

import com.firstgun.entity.Mycenter;
import com.firstgun.entity.NewsTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface MyCenterMapper {
    //获取个人信息,参数名应与数据库表一致
    public List<Mycenter> getMyInfo(@Param("userName") String userName);


    //获取某用户发表过的博客标题,时间
    public List<Mycenter> getMyBlog(@Param("userName") String userName);
}
