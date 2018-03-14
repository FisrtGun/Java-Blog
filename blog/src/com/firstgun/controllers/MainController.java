package com.firstgun.controllers;

import com.firstgun.entity.User;
import com.firstgun.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @Author:
 * @Date: 2018/3/12 15:23
 * @Description:
 */
@Controller
@RequestMapping("mainController")
public class MainController {
    @Resource
    private UserService userService;

    //去首页
    @RequestMapping("index")
    public String index() {
        return "index";
    }

    //去注册
    @RequestMapping("register")
    public String register() {
        return "register";
    }

    //去登录
    @RequestMapping("login")
    public String login() {
        return "login";
    }
    //实现登录功能
    @RequestMapping("dologin")
    public String dologin(User user, Model model, HttpServletRequest req) {
        System.out.println(user);
        if (null != user.getUname()&&null!=user.getUpwd()) {
            User OneUser = userService.getUser(user.getUname(), user.getUpwd());
            System.out.println(OneUser);
            if (OneUser == null) {
                req.getSession().setAttribute("error", true);
                return "login";
            } else {
                req.getSession().setAttribute("users", OneUser);
                req.getSession().setAttribute("error", false);
                return "index";
            }
        }else {
            req.getSession().setAttribute("error", true);
            return "login";
        }
    }

    //去iteye
    @RequestMapping("iteye")
    public String iteye() {
        return "iteye";
    }

    //去新文章
    @RequestMapping("/newstitle")
    public String newstitle() {
        return "newstitle";
    }

    //去资讯
    @RequestMapping("/information")
    public String information() {
        return "information";
    }

    //去GitChat
    @RequestMapping("/GitChat")
    public String GitChat() {
        return "gitchat_index";
    }

    //去CSTO
    @RequestMapping("csto")
    public String csto() {
        return "csto";
    }

    //去vip
    @RequestMapping("vip")
    public String vip() {
        return "vip";
    }

    //去数据库
    @RequestMapping("db")
    public String db() {
        return "db";
    }

    //去数据库的“一个MySQL表”
    @RequestMapping("dbsub")
    public String dbsub() {
        return "dbsub";
    }

    //去其他
    @RequestMapping("other")
    public String other() {
        return "other";
    }

    //去其他的Amazon/亚马逊
    @RequestMapping("Amazon")
    public String Amazon() {
        return "otherPage/Amazon";
    }

    //去其他的专家页面/specialist
    @RequestMapping("specialist")
    public String specialist() {
        return "otherPage/specialist";
    }
}
