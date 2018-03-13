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
    //去vip
    @RequestMapping("vip")
    public String vip(){return "vip";}
    //去数据库
    @RequestMapping("db")
    public String db(){return "db";}
    //去数据库的“一个MySQL表”
    @RequestMapping("dbsub")
    public String dbsub(){return "dbsub";}
    //去其他
    @RequestMapping("other")
    public String other(){
        return "other";
    }
    //去其他的Amazon/亚马逊
    @RequestMapping("Amazon")
    public String Amazon(){
        return "otherPage/Amazon";
    }
    //去其他的专家页面/specialist
    @RequestMapping("specialist")
    public String specialist(){
        return "otherPage/specialist";
    }
}
