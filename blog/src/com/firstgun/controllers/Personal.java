package com.firstgun.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author:
 * @Date: 2018/3/13 16:44
 * @Description:
 */
@Controller
@RequestMapping("personal")
public class Personal {
    //去最新文章个人页面
    @RequestMapping("personblog")
    public String personblog(){
        return "personblog";
    }
}
