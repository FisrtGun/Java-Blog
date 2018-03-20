package com.firstgun.controllers;

import com.firstgun.dao.NewsTitleMapper;
import com.firstgun.entity.InformationTitle;
import com.firstgun.entity.NewsTitle;
import com.firstgun.service.InformationTitleService;
import com.firstgun.service.NewsTitleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 16:44
 * @Description:
 */
@Controller
@RequestMapping("personal")
public class Personal {
    @Resource
    private NewsTitleService newsTitleService;
    @Resource
    private InformationTitleService informationTitleService;
    //去最新文章个人页面
    @RequestMapping("personblog")
    public String personblog(@Param("nid")String nid,Model model){
        int nids=0;
        System.out.println(nid);
        if (nid!=null){
            nids=Integer.parseInt(nid);
        }
        NewsTitle newsTitle=newsTitleService.getNewsTitle(nids);
        int getNview=newsTitle.getNview();

        getNview=getNview+1;


        newsTitle.setNview(getNview);
        newsTitleService.updateView(newsTitle.getNid(),getNview);
        model.addAttribute("news",newsTitle);
        return "personblog";
    }
    //去资讯个人页面
    @RequestMapping("personblog03")
    public String personblog03(@Param("iId")String iId,Model model){
        int iIds=0;
        System.out.println(iId);
        if (iId!=null){
            iIds=Integer.parseInt(iId);
        }
        InformationTitle informationTitle=informationTitleService.selectId(iIds);

        model.addAttribute("information",informationTitle);
        return "personblog03";
    }
}
