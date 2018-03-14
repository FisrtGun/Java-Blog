package com.firstgun.dao;

import com.firstgun.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
/**
 * 用户类的查询dao
 */
import java.util.List;
@Repository
public interface UserMapper {
    //查询全部用户
    List<User> findAll();
    //输入用户名和密码获得对象
    User getUser(@Param("uname") String uname, @Param("upwd") String upwd);
    //添加一个用户
    int addUser(@Param("uname") String uname, @Param("upwd") String upwd,@Param("upicture") String upicture);
}
