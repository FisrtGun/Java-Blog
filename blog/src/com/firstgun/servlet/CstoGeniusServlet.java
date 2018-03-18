package com.firstgun.servlet;

import com.firstgun.entity.CstoGenius;
import com.firstgun.service.CstoGeniusService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/16 17:12
 * @Description:
 */
public class CstoGeniusServlet extends HttpServlet {
    @Resource
    private CstoGeniusService cstoGeniusService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理ajax请求
        String atype = req.getParameter("atype");
        List<CstoGenius> genius=null;
        if (atype.equals("系统开发")) {
            atype="1";
            int atypes=Integer.parseInt(atype);
            genius = cstoGeniusService.genius(atypes);

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
