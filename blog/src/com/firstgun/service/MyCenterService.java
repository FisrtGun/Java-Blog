package com.firstgun.service;

import com.firstgun.entity.Mycenter;
import com.firstgun.entity.NewsTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MyCenterService {
    //获取个人信息
    public List<Mycenter> getMyInfo( String userName);

    //获取某用户发表过的博客标题
    public List<Mycenter> getMyBlog(String userName);
}
