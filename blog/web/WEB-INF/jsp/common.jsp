<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年3月14日,0014
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <script src='../../statics/js/tingyun-rum.js' type='text/javascript'></script>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="referrer"content="always">
    <meta name="msvalidate.01" content="3189512127C34C46BC74BED5852D45E4" />
    <%--<title>fg-专业IT技术社区</title>--%>
    <link ref="canonical"  href="https://www.csdn.net/">
    <%--<link href="../../statics/images/fg.png" rel="SHORTCUT ICON">--%>
    <script src="../../statics/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../../statics/js/tracking-1.0.2.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../statics/js/main_flume.js"></script>
    <link rel="stylesheet" href="../../statics/css/content_toolbar.css">
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../statics/css/avatar.css">
    <link href='../../statics/css/csdn_feed.css' rel='stylesheet' />
    <script src='../../statics/js/modernizr.js' type='text/javascript'></script>
    <script src='../../statics/js/jquery-1.9.1.min.js' type='text/javascript'></script>
</head>
<body>
<div class="csdn-toolbar csdn-toolbar tb_disnone ' + skin + fixed + '">
    <div class="container row center-block ">
        <ul class="pull-left left-menu clearfix">
            <li>
                <a href="index" title="pg首页" target="_blank">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#toolbar-csdnlogo"></use>
                    </svg>  
                </a>
            </li>
            <li><a href="//blog.csdn.net/" class="toolbar_to_feed" title="博客" target="_blank">博客</a></li>
            <li><a href="//edu.csdn.net" title="学院" target="_blank">学院</a></li>
            <li><a href="http://download.csdn.net" title="下载" target="_blank">下载</a></li>
            <li><a href="GitChat" title="GitChat" target="_blank">GitChat</a></li>
            <li class="tb_is1090hide"><a href="http://bbs.csdn.net" title="论坛" target="_blank">论坛</a></li>
            <li class="tb_is1150hide"><a href="http://ask.csdn.net" title="问答" target="_blank">问答</a></li>
            <li class="tb_is1210hide"><a href="http://mall.csdn.net" title="商城" target="_blank">商城</a></li>
            <li class="tb_is1270hide"><a href="vip" title="下载VIP" target="_blank">VIP</a></li>
            <li class="tb_is1330hide"><a href="http://huiyi.csdn.net/" title="活动" target="_blank">活动</a></li>
            <li class="tb_is1400hide"><a href="http://job.csdn.net" title="招聘" target="_blank">招聘</a></li>
            <li class="tb_is1452hide"><a href="iteye" title="ITeye" target="_blank">ITeye</a></li>
            <li class="tb_is1513hide"><a href="//www.gitee.com" title="码云" target="_blank">码云</a></li>
            <li class="tb_is1513hide"><a href="csto" title="CSTO" target="_blank">CSTO</a></li>
            <li class="show-more">
                <a href="javascript:;"class="show-more-a"><svg width="22" height="4" xmlns="http://www.w3.org/2000/svg"><path d="M2 4a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm9 0a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm9 0a2 2 0 1 1 0-4 2 2 0 0 1 0 4z" fill="#4F4F4F" fill-rule="evenodd"/></svg></a>
                <div class="more">
                    <div class="tb_is1090show"><a href="http://bbs.csdn.net" target="_blank">论坛</a></div>
                    <div class="tb_is1150show"><a href="http://ask.csdn.net" target="_blank">问答</a></div>
                    <div class="tb_is1210show"><a href="http://mall.csdn.net" target="_blank">商城</a></div>
                    <div class="tb_is1270show"><a href="http://download.csdn.net/vip_code" target="_blank">下载VIP</a></div>
                    <div class="tb_is1330show"><a href="http://huiyi.csdn.net/" target="_blank">活动</a></div>
                    <div class="tb_is1400show"><a href="http://job.csdn.net" target="_blank">招聘</a></div>
                    <div class="tb_is1452show"><a href="iteye" target="_blank">ITeye</a></div>
                    <div class="tb_is1513show"><a href="//www.gitee.com" target="_blank">码云</a></div>
                    <div class="tb_is1513show"><a href="csto" target="_blank">CSTO</a></div>
                </div>
            </li>
        </ul>
        <div class="pull-right login-wrap unlogin" id="logins">
            <ul class="btns">
                <li class="toolbar-tracking csdn-tracking-statistics tracking-click" data-mod="popu_369"><a href="#" style="padding:0"></a></li>
                <li>
                    <div class="search_bar csdn-tracking-statistics tracking-click" data-mod="popu_366">
                        <input type="text" class="input_search" name="">
                        <a href="//so.csdn.net/so/" target="_blank" class="btn-nobg-noborder btn-search"><i class="iconfont-toolbar toolbar-sousuo"></i></a>
                    </div>
                </li>
                <li class="write-bolg-btn csdn-tracking-statistics tracking-click" data-mod="popu_370"><a class="" href="http://mp.blog.csdn.net/postedit" target="_blank"><i class="iconfont-toolbar toolbar-icon_boke"></i><span>写博客</span></a></li>
                <li class="gitChat"><a class="" href="http://gitbook.cn/new/gitchat/activity?utm_source=csdnblog1" target="_blank"><i class="iconfont-toolbar toolbar-icon_gitchatx "></i><span>发Chat</span></a></li>
                <li class="userinfo"><a href="login">登录</a><span></span><a href="register">注册</a></li>
                <li class="userLogin">
                    <div class="loginCenter"><a href=""><img class="login_img" src="../../statics/${users.upicture}"><div class="toolbar-circle"></div></a></div>
                </li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var ll = ${error};
            console.log(ll);
        console.log(!ll);
        unlogin();
            function unlogin() {
                if(ll==true||ll==null){
                    $("#logins").addClass("unlogin")
                }else {
                    $("#logins").removeClass("unlogin");
                }
            }





    })

</script>
</body>
</html>
