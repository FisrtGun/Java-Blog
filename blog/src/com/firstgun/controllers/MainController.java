package com.firstgun.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("userController")
public class MainController {
    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("/csto")
    public String csto(){
        return "cstohome";
    }

    @RequestMapping("newstitle")
    public String newstitle(){
        return "newstitle";
    }
}
