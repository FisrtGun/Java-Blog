package com.firstgun.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author:
 * @Date: 2018/3/12 15:23
 * @Description:
 */
@Controller
@RequestMapping("main")
public class Main {
    //去首页
    @RequestMapping("index")
    public String index(){
        return "index";
    }
    //注册
    @RequestMapping("register")
    public String register(){
        return "register";
    }
    //登录
    @RequestMapping("login")
    public String login(){
        return "login";
    }
    //去iteye
    @RequestMapping("iteye")
    public String iteye(){
        return "iteye";
    }

    //去新文章
    @RequestMapping("/newstitle")
    public String newstitle(){
        return "newstitle";
    }
    //去CSTO
    @RequestMapping("csto")
    public String csto(){
        return "csto";
    }
    //去CSTO
    @RequestMapping("other")
    public String other(){
        return "other";
    }
}
