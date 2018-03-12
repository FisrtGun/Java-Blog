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
}
