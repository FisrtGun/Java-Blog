package com.firstgun.service.imp;

import com.firstgun.dao.UserMapper;
import com.firstgun.entity.User;
import com.firstgun.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserServiceImp implements UserService{
    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        //从数据库获得用户的集合
        return userMapper.findAll();
    }

    @Override
    public User getUser(String uname, String upwd) {
        //输入用户名和密码得到用户
        return userMapper.getUser(uname,upwd) ;
    }
}
