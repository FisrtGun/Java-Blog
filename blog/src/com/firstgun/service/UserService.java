package com.firstgun.service;

import com.firstgun.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户类的查询服务层
 */
public interface UserService {
    //查询全部用户
    List<User> findAll();
    //输入用户名和密码获得对象
    User getUser(@Param("uname") String uname, @Param("upwd") String upwd);
}
