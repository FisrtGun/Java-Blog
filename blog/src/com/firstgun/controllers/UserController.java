package com.firstgun.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("userController")
public class UserController {
    //去首页
    @RequestMapping("index")
    public String index(){
        return "index";
    }
    //去其他
    @RequestMapping("other")
    public String other(){
        return "other";
    }
    //去iteye
    @RequestMapping("iteyes")
    public String iteye(){
        return "iteyes";
    }
}
