package com.firstgun.controllers;

import com.firstgun.entity.*;
import com.firstgun.service.*;
import com.firstgun.utils.PageUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    @Resource
    private NewsTitleService newsTitleService;
    @Resource
    private OtherTitleService otherTitleService;
    @Resource
    private CstoGeniusService cstoGeniusService;
    @Resource
    private LatestProjectService latestProjectService;

    //去首页
    @RequestMapping("index")
    public String index(Model model, @RequestParam(value = "index",required = false)String index) {
        //分页查询功能
        PageUtils pageUtils = new PageUtils();
        if (index == null || index =="") {
            index = "1";
        }
        int indexs=Integer.parseInt(index);
        pageUtils.setIndex(indexs);
        pageUtils.setPageSize(2);
        pageUtils.setPageCount(newsTitleService.newsCount());
        pageUtils.getPageCount();
        //新闻标题
        List<NewsTitle> newsList = newsTitleService.getSelectNews(pageUtils.getIndex(),pageUtils.getPageSize());
        model.addAttribute("newsList",newsList);
        //今日推荐
        List<NewsTitle> groom = newsTitleService.getGroom();
        model.addAttribute("groom",groom);
        return "index";
    }

    //去common
    @RequestMapping("common")
    public String common() {
        return "common";
    }

    //去注册
    @RequestMapping("register")

    public String register(HttpServletRequest req) {
        req.getSession().setAttribute("error", false);
        return "register";
    }

    //注册
    @RequestMapping("doRegister")
    public String doRegister(User user, Model model, HttpServletRequest req) {
        if (null != user.getUname() && null != user.getUpwd()&&user.getUname().length()>0&&user.getUpwd().length()>0) {
            int num = userService.addUser(user.getUname(), user.getUpwd(), "images/fg.png");
            User OneUser = userService.getUser(user.getUname(), user.getUpwd());
            if (num > 0) {
                model.addAttribute("num", num);
                req.getSession().setAttribute("error", false);
                req.getSession().setAttribute("users", OneUser);
                return "doRegister";
            } else {
                model.addAttribute("num", num);
                return "register";
            }
        }else {
            req.getSession().setAttribute("error", true);
            return "register";
        }
    }

    //去登录
    @RequestMapping("login")
    public String login(HttpServletRequest req) {
        req.getSession().setAttribute("error", false);
        return "login";
    }

    //实现登录功能
    @RequestMapping("dologin")
    public String dologin(User user, Model model, HttpServletRequest req) {
        if (null != user.getUname() && null != user.getUpwd()&&user.getUname().length()>0&&user.getUpwd().length()>0) {
            User OneUser = userService.getUser(user.getUname(), user.getUpwd());
            if (OneUser == null) {
                req.getSession().setAttribute("error", true);
                return "login";
            } else {
                req.getSession().setAttribute("users", OneUser);
                req.getSession().setAttribute("error", false);
                return "index";
            }
        } else {
            req.getSession().setAttribute("error", true);
            return "login";
        }
    }

    //退出
    @RequestMapping("exist")
    public String exist(HttpServletRequest req) {
        req.getSession().setAttribute("error", true);
        req.getSession().invalidate();
        return "index";
    }

    //去iteye
    @RequestMapping("iteye")
    public String iteye(HttpServletRequest req) {
        if (null!=req.getSession().getAttribute("users")){
            req.getSession().setAttribute("error", false);
        }else {
            req.getSession().setAttribute("error", true);
        }
        return "iteye";
    }
    //iteye页面的退出功能
    @RequestMapping("iteyeExist")
    public String iteyeExist(HttpServletRequest req){
        req.getSession().setAttribute("error", true);
        req.getSession().invalidate();
        if (null!=req.getSession().getAttribute("users")){
            req.getSession().setAttribute("error", false);
        }else {
            req.getSession().setAttribute("error", true);
        }
        return "iteye";
    }

    //去新文章
    @RequestMapping("/newstitle")
    public String newstitle(Model model, @RequestParam(value = "index",required = false)String index){
        //分页查询功能
        PageUtils pageUtils = new PageUtils();
        if (index == null || index =="") {
            index = "1";
        }
        int indexs=Integer.parseInt(index);
        pageUtils.setIndex(indexs);
        pageUtils.setPageSize(2);
        pageUtils.setPageCount(newsTitleService.newsCount());
        pageUtils.getPageCount();
        List<NewsTitle> newsList = newsTitleService.getSelectNews(pageUtils.getIndex(),pageUtils.getPageSize());
        model.addAttribute("pageUtils",pageUtils);
        model.addAttribute("newsList",newsList);
        List<NewsTitle> groom = newsTitleService.getGroom();
        model.addAttribute("groom",groom);
        return "newstitle";
    }
    //去其他
    @RequestMapping("other")
    public String other(Model model) {
        List<OtherTitle> otherList = otherTitleService.getSelectOther();
        System.out.println(otherList);
        model.addAttribute("otherList", otherList);
        List<OtherTitle> groom = otherTitleService.getGroom();
        System.out.println(groom);
        model.addAttribute("groom", groom);
        return "other";
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
    public String csto(@RequestParam(value = "atype",required = false)String atype,Model model) {
        int atypes=Integer.parseInt(atype);
        List<CstoGenius> genius = null;
        switch (atypes){
            case 1 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 2 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 3 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 4 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 5 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 6 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 7 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 8 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 9 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 10 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 11 :
                genius = cstoGeniusService.genius(atypes);
                break;
            case 12 :
                genius = cstoGeniusService.genius(atypes);
                break;
        }

        List<LatestProject> latest = latestProjectService.latest();
        model.addAttribute("latest",latest);
        model.addAttribute("genius",genius);
        return "csto";
    }

    //去vip
    @RequestMapping("vip")
    public String vip(HttpServletRequest req) {
        if ( null !=req.getSession().getAttribute("users")){
            return "vip";

        }else{
            return "redirect:login";
        }

        /*return "vip";*/
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
    //跳转前端页面
    @RequestMapping("front")
    public String front() {
        return "front-end";
    }

    //去个人中心
    @RequestMapping("mycenter")
    public String myCenter(){return "mycenter";}

    //跳转学院页面
    @RequestMapping("study")
    public String study(){return "study" ;}
}
