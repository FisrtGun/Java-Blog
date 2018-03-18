package com.firstgun.controllers;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.firstgun.entity.*;
import com.firstgun.service.*;
import com.firstgun.utils.PageUtils;
import com.firstgun.entity.IteyeInformation;
import com.firstgun.entity.NewsTitle;
import com.firstgun.entity.OtherTitle;
import com.firstgun.entity.User;
import com.firstgun.service.IteyeInformationService;
import com.firstgun.service.NewsTitleService;
import com.firstgun.service.OtherTitleService;
import com.firstgun.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
    private NewsTitle newsTitle;
    @Resource
    //用户服务层
    private UserService userService;
    @Resource
    //个人博客服务层
    private NewsTitleService newsTitleService;
    @Resource
    //其他 主页服务层
    private OtherTitleService otherTitleService;
    @Resource
    private CstoGeniusService cstoGeniusService;
    @Resource
    private LatestProjectService latestProjectService;
    @Resource
    //iteye的资讯模块服务层
    private IteyeInformationService iteyeInformationService;
    @Resource
    private GitChatService gitChatService;
    @Resource
    //群主讨论模块服务层
    private IteyediscussiongroupService iteyediscussiongroupService;

    @Resource
    //数据库页面的服务层
    private DbService dbService;

    @Resource
    private InformationTitleService informationTitleService;

    @Resource
    private  FrontService frontService;

    @Resource
    //个人中心的服务层
    private MyCenterService myCenterService;


    //去首页
    @RequestMapping("index")
    public String index(Model model, @RequestParam(value = "index", required = false) String index) {
        //分页查询功能
        PageUtils pageUtils = new PageUtils();
        if (index == null || index == "") {
            index = "1";
        }
        int indexs = Integer.parseInt(index);
        pageUtils.setIndex(indexs);
        pageUtils.setPageSize(5);
        pageUtils.setPageCount(newsTitleService.newsCount());
        pageUtils.getPageCount();
        //新闻标题
        List<NewsTitle> newsList = newsTitleService.getSelectNews(pageUtils.getIndex(), pageUtils.getPageSize());
        model.addAttribute("pageUtils",pageUtils);
        model.addAttribute("newsList", newsList);
        //今日推荐
        List<NewsTitle> groom = newsTitleService.getGroom();
        model.addAttribute("groom", groom);
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
        if (null != user.getUname() && null != user.getUpwd() && user.getUname().length() > 0 && user.getUpwd().length() > 0) {
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
        } else {
            req.getSession().setAttribute("error", true);
            return "register";
        }
    }
    //判断注册的账户是否能用
    @RequestMapping("checkRegister")
    @ResponseBody//必须加入的注解
    public int checkRegister(HttpServletRequest req){
        String uname=req.getParameter("uname");
        List<User> list=userService.findAll();
        int flag=2;
        for (int i = 0; i < list.size(); i++) {
            if (uname.equalsIgnoreCase(list.get(i).getUname())){;
            flag=1;
            }
        }
        return flag;
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
        if (null != user.getUname() && null != user.getUpwd() && user.getUname().length() > 0 && user.getUpwd().length() > 0) {
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
            return "redirect:login";
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
    public String iteye(HttpServletRequest req, Model model) {
        if (null != req.getSession().getAttribute("users")) {
            req.getSession().setAttribute("error", false);
        } else {
            req.getSession().setAttribute("error", true);
        }
        //新闻标题
        List<NewsTitle> newsList = newsTitleService.getSelectNews(1, 7);
        model.addAttribute("newsList", newsList);
        System.out.println(newsList);
        //每日资讯
        List<IteyeInformation> list = iteyeInformationService.getIteyeInformation();
        model.addAttribute("list", list);
        //群组讨论帖
        List<Iteyediscussiongroup> grouplist = iteyediscussiongroupService.getIteyediscussiongroup();
        model.addAttribute("grouplist", grouplist);

        return "iteye";
    }

    //iteye页面的退出功能
    @RequestMapping("iteyeExist")
    public String iteyeExist(HttpServletRequest req,Model model) {
        req.getSession().setAttribute("error", true);
        req.getSession().invalidate();
        if (null != req.getSession().getAttribute("users")) {
            req.getSession().setAttribute("error", false);
        } else {
            req.getSession().setAttribute("error", true);
        }
        //新闻标题
        List<NewsTitle> newsList = newsTitleService.getSelectNews(1, 7);
        model.addAttribute("newsList", newsList);
        System.out.println(newsList);
        //每日资讯
        List<IteyeInformation> list = iteyeInformationService.getIteyeInformation();
        model.addAttribute("list", list);
        //群组讨论帖
        List<Iteyediscussiongroup> grouplist = iteyediscussiongroupService.getIteyediscussiongroup();
        model.addAttribute("grouplist", grouplist);
        return "iteye";
    }

    //去新文章
    @RequestMapping("/newstitle")
    public String newstitle(Model model, @RequestParam(value = "index", required = false) String index) {
        //分页查询功能
        PageUtils pageUtils = new PageUtils();
        if (index == null || index == "") {
            index = "1";
        }
        int indexs = Integer.parseInt(index);
        pageUtils.setIndex(indexs);
        pageUtils.setPageSize(2);
        pageUtils.setPageCount(newsTitleService.newsCount());
        pageUtils.getPageCount();
        List<NewsTitle> newsList = newsTitleService.getSelectNews(pageUtils.getIndex(), pageUtils.getPageSize());
        model.addAttribute("pageUtils", pageUtils);
        model.addAttribute("newsList", newsList);
        List<NewsTitle> groom = newsTitleService.getGroom();
        model.addAttribute("groom", groom);
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
    public String information(Model model) {
        List<InformationTitle> informationList = informationTitleService.selectInformation();
        List<InformationTitle> groomList = informationTitleService.selectGroom();
        model.addAttribute("informationList",informationList);
        model.addAttribute("groomList",groomList);
        return "information";
    }

    //去GitChat
    @RequestMapping("/GitChat")
    public String GitChat(Model model){
        List<GitChat> writerList = gitChatService.selectWriter();
        List<GitChat> classList = gitChatService.selectClass();
        List<GitChat> chatList = gitChatService.selectChat();
        List<GitChat> hotClassList = gitChatService.selectHotClass();
        List<GitChat> newChatList = gitChatService.selectNewChat();
        model.addAttribute("writerList",writerList);
        model.addAttribute("classList",classList);
        model.addAttribute("chatList",chatList);
        model.addAttribute("hotClassList",hotClassList);
        model.addAttribute("newChatList",newChatList);
        return "gitchat_index";
    }

    //去CSTO页面
    @RequestMapping("csto")
    public String csto(Model model){
        List<CstoGenius> genius1 = cstoGeniusService.genius(1);
        List<CstoGenius> genius7 = cstoGeniusService.genius(7);
        List<IteyeInformation> iteyeInformations = iteyeInformationService.informationTitle();
        model.addAttribute("iteyeInformations",iteyeInformations);
        List<LatestProject> latest = latestProjectService.latest();
        model.addAttribute("latest",latest);
        model.addAttribute("genius1",genius1);
        model.addAttribute("genius7",genius7);
        return "csto";
    }

    //处理ajax请求
    @ResponseBody
    @RequestMapping("cstoAjax")
    public String cstoAjax(HttpServletRequest request,HttpServletResponse response) {
        String atype = request.getParameter("atype");
        PrintWriter out=null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (atype.equals("系统开发")) {
            atype="1";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius1 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius1);
            out.print(str);
        }else if(atype.equals("Android")){
            atype="2";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius2 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius2);
            out.print(str);
        }else if(atype.equals("网站开发")){
            atype="3";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius3 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius3);
            out.print(str);
        }else if(atype.equals("企业软件")) {
            atype="4";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius4 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius4);
            out.print(str);
        }else if(atype.equals("应用程序")) {
            atype="5";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius5 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius5);
            out.print(str);
        }else if(atype.equals("嵌入式")) {
            atype="6";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius6 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius6);
            out.print(str);
        }else if(atype.equals("c++")) {
            atype="7";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius7 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius7);
            out.print(str);
        }else if(atype.equals("c#")) {
            atype="8";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius8 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius8);
            out.print(str);
        }else if(atype.equals("andro")) {
            atype="9";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius9 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius9);
            out.print(str);
        }else if(atype.equals("jquer")) {
            atype="10";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius10 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius10);
            out.print(str);
        }else if(atype.equals("java")) {
            atype="11";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius11= cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius11);
            out.print(str);
        }else if(atype.equals("javas")) {
            atype="12";
            int atypes=Integer.parseInt(atype);
            List<CstoGenius> genius12 = cstoGeniusService.genius(atypes);
            String str  = JSON.toJSONString(genius12);
            out.print(str);
        }
        out.flush();
        out.close();
        return "csto";
    }

    //去vip
    @RequestMapping("vip")
    public String vip(HttpServletRequest req) {
        if (null != req.getSession().getAttribute("users")) {
            return "vip";

        } else {
            return "redirect:login";
        }

        /*return "vip";*/
    }

    //去数据库
    @RequestMapping("db")
    public String db(Model model, @RequestParam(value = "index",required = false)String index) {
        //分页查询功能
        PageUtils pageUtils = new PageUtils();
        if (index == null || index =="") {
            index = "1";
        }
        int indexs=Integer.parseInt(index);
        pageUtils.setIndex(indexs);
        pageUtils.setPageSize(2);
        pageUtils.setPageCount(dbService.getTotalCount());
        pageUtils.getPageCount();
        List<NewsTitle> newsList = dbService.getSelectNews(pageUtils.getIndex(),pageUtils.getPageSize());
        model.addAttribute("pageUtils",pageUtils);
        model.addAttribute("newsList",newsList);
        List<NewsTitle> groom = dbService.getGroom();
        model.addAttribute("groom",groom);
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
    public String front(Model model) {
       List<Front>  list= frontService.selectFront();
       model.addAttribute("Flists",list);

        return "front-end";
    }

    //去个人中心
    @RequestMapping("mycenter")
    public String myCenter() {
        return "mycenter";
    }

    //实现个人中心
    @RequestMapping("domycenter")
    public String domycenter(Model model,HttpServletRequest req){
        User user=(User)req.getSession().getAttribute("users");
        /*  userName=user.getUname();*/
        List<Mycenter> mycenter=myCenterService.getMyInfo(user.getUname());

        model.addAttribute("mycenter",mycenter.get(0));
        List<Mycenter> myblog=myCenterService.getMyBlog(user.getUname());
        model.addAttribute("myblog",myblog.get(0));



        return "mycenter";
    }

    //跳转学院页面
    @RequestMapping("study")
    public String study() {
        return "study";
    }

    //去写博客
    @RequestMapping("writeblog")
    public String writeblog(HttpServletRequest req) {
        if (null != req.getSession().getAttribute("users")) {
            return "writeblog";
        } else {
            return "redirect:login";
        }
    }

    //写博客
    @RequestMapping("dowriteblog")
    public String dowriteblog(HttpServletRequest req){
        //后台获取时间
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date=new Date();
        String strDate=simpleDateFormat.format(date);
        User user= (User) req.getSession().getAttribute("users");
        String nauthor=user.getUname();
        String ntab= req.getParameter("selType");
        String ntitle=req.getParameter("txtTitle");
        String nconten=req.getParameter("textarea");
        Date ncreateTime= null;
        try {
            ncreateTime = simpleDateFormat.parse(strDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String nimg="../../statics/"+user.getUpicture();

        newsTitle.setNtitle(ntitle);
        newsTitle.setNauthor(nauthor);
        newsTitle.setNtab(ntab);
        newsTitle.setNconten(nconten);
        newsTitle.setNcreateTime(ncreateTime);
        newsTitle.setNimg(nimg);
        int num=newsTitleService.inserNews(newsTitle);
        if (num>0){
            return "mycenter";
        }else {
            return "writeblog";
        }
    }
    //搜索---模糊查询
    @RequestMapping("check")
    public String check(HttpServletRequest req,Model model){
        String things=req.getParameter("thing");
        String thing = null;
        try {
            thing = new String(things.getBytes("iso8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<NewsTitle> newList= newsTitleService.likeCheck(thing,thing);
        model.addAttribute("thing",thing);
        model.addAttribute("newList",newList);
        model.addAttribute("newListCount",newList.size());
        System.out.println(newList);
        return "check";
    }
}
