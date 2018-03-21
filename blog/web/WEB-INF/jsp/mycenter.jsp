<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/3/15
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!-- saved from url=(0020)https://my.csdn.net/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- <script charset="utf-8" src="../../statics/myCenterJs/b.js"></script>-->

    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <link rel="stylesheet" href="../../statics/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../statics/css/content_toolbar.css">
    <link rel="stylesheet" href="../../statics/css/common1.css">
    <link rel="stylesheet" href="../../statics/css/jquery-ui-1.10.3.css">
    <!-- [if IE 7]-->
    <link rel="stylesheet" href="../../statics/css/font-awesome-ie7.min.css">
    <!-- [endif]-->
    <link rel="stylesheet" href="../../statics/css/persion_space_A.css">
    <link rel="stylesheet" href="../../statics/css/mini.css">
    <!--<script src="../../statics/myCenterJs/hm.js"></script>
    <script src="../../statics/myCenterJs/jquery-1.9.0.min.js" type="text/javascript"></script>
    <!-- [if lt IE 9]-->
    <!--<script src="../../statics/myCenterJs/html5shiv.min.js"></script>-->
    <!--<script src="../../statics/myCenterJs/flashcanvas.js"></script>-->
    <!-- [endif]-->
    <script type="text/javascript">
        var username = 'caibaozi0521';
        var oper_username = 'caibaozi0521';
        document.domain = "csdn.net";
    </script>
    <style>
        .csdn-toolbar .logo .img {
            background: url("//csdnimg.cn/release/my/images/f_name.png") left center no-repeat;
            float: left;
            height: 40px;
            margin-left: 10px;
            width: 120px;
        }

        .privacy {
            font-size: 14px;
            color: #2b81a9;
        }

        .main .persional_property .person-info .person-detail .info_null {
            color: #e9733a;
        }

        .mod_personal_info .info li em a {
            color: #428bca;
        }

        .mod_personal_info .info li em a:hover {
            color: #2a6496;
        }

        .main .persional_property .person-status .status .scores em {
            cursor: pointer;
        }

        .main .persion_section .person_education .education_list dd em, .main .persion_section .person_job .job_list dd em {
            display: none;
        }
    </style>
    <title>我的pg</title>
    <link ref="canonical" href="https://my.csdn.net/caibaozi0521">
    <!-- <script type="text/javascript" charset="utf-8" src="../../statics/myCenterJs/tracking-1.0.2.js"></script>
     <script type="text/javascript" charset="utf-8" src="../../statics/myCenterJs/main-1.0.2.js"></script>-->
    <link href="../../statics/css/WdatePicker.css" rel="stylesheet" type="text/css">
    <!--  <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
              data-requiremodule="config.mySpace.A" src="../../statics/myCenterJs/config.mySpace.A.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="apps/personalInfo" src="../../statics/myCenterJs/personalInfo.js"></script>-->
    <!--  <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/EditHeader"
              src="../../statics/myCenterJs/EditHeader.js"></script>
      <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
              data-requiremodule="apps/person_scores" src="../../statics/myCenterJs/person_scores.js"></script>
      <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/Medal"
              src="../../statics/myCenterJs/Medal.js"></script>
      <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
              data-requiremodule="apps/Fields.Tags" src="../../statics/myCenterJs/Fields.Tags.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/autoComplete" src="../../statics/myCenterJs/autoComplete.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/education.tags" src="../../statics/myCenterJs/education.tags.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/Tabs"
             src="../../statics/myCenterJs/Tabs.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/mod_my_connection" src="../../statics/myCenterJs/mod_my_connection.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/list"
             src="../../statics/myCenterJs/list.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/collect"
            src="../../statics/myCenterJs/collect.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="apps/Personal.perfect" src="../../statics/myCenterJs/Personal.perfect.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="apps/interest.me" src="../../statics/myCenterJs/interest.me.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/contact.me"
            src="../../statics/myCenterJs/contact.me.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="apps/mod_person_info" src="../../statics/myCenterJs/mod_person_info.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/PopUp"
            src="../../statics/myCenterJs/PopUp.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/CheckValid"
             src="../../statics/myCenterJs/CheckValid.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/personalInfo.getInfo" src="../../statics/myCenterJs/personalInfo.getInfo.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/personalInfo.region" src="../../statics/myCenterJs/personalInfo.region.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/personalInfo.checkNickName"
             src="../../statics/myCenterJs/personalInfo.checkNickName.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/personalInfo.fillBack" src="../../statics/myCenterJs/personalInfo.fillBack.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/CheckErr"
             src="../../statics/myCenterJs/CheckErr.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/More"
             src="../../statics/myCenterJs/More.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/Tooltip"
             src="../../statics/myCenterJs/Tooltip.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/class.name"
             src="../../statics/myCenterJs/class.name.js"></script>
     <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/checkErrMess" src="../../statics/myCenterJs/checkErrMess.js"></script>-->
</head>
<body style="zoom: 1;">
<jsp:include page="common.jsp" flush="true"></jsp:include>
<%--<div class="csdn-toolbar csdn-toolbar tb_disnone  csdn-toolbar-skin-black ">
    <div class="container row center-block ">
        <ul class="pull-left left-menu clearfix">
            <li><a href="https://www.csdn.net/" title="3月14日 π Day" target="_blank"><img
                    src="../../statics/myCenterImage/paidaylogo.png"></a></li>
            <li><a href="https://blog.csdn.net/" class="toolbar_to_feed" title="博客" target="_blank">博客</a></li>
            <li><a href="https://edu.csdn.net/" title="学院" target="_blank">学院</a></li>
            <li><a href="http://download.csdn.net/" title="下载" target="_blank">下载</a></li>
            <li><a href="http://gitbook.cn/?ref=csdn" title="GitChat" target="_blank">GitChat</a></li>
            <li class="tb_is1090hide"><a href="http://bbs.csdn.net/" title="论坛" target="_blank">论坛</a></li>
            <li class="tb_is1150hide"><a href="http://ask.csdn.net/" title="问答" target="_blank">问答</a></li>
            <li class="tb_is1210hide"><a href="http://mall.csdn.net/" title="商城" target="_blank">商城</a></li>
            <li class="tb_is1270hide"><a href="http://download.csdn.net/vip_code" title="下载VIP" target="_blank">VIP</a>
            </li>
            <li class="tb_is1330hide"><a href="http://huiyi.csdn.net/" title="活动" target="_blank">活动</a></li>
            <li class="tb_is1400hide"><a href="http://job.csdn.net/" title="招聘" target="_blank">招聘</a></li>
            <li class="tb_is1452hide"><a href="http://www.iteye.com/" title="ITeye" target="_blank">ITeye</a></li>
            <li class="tb_is1513hide"><a href="https://www.gitee.com/" title="码云" target="_blank">码云</a></li>
            <li class="tb_is1513hide"><a href="http://www.csto.com/" title="CSTO" target="_blank">CSTO</a></li>
            <li class="show-more"><a href="javascript:;" class="show-more-a">

            </a>
                <div class="more">
                    <div class="tb_is1090show"><a href="http://bbs.csdn.net/" target="_blank">论坛</a></div>
                    <div class="tb_is1150show"><a href="http://ask.csdn.net/" target="_blank">问答</a></div>
                    <div class="tb_is1210show"><a href="http://mall.csdn.net/" target="_blank">商城</a></div>
                    <div class="tb_is1270show"><a href="http://download.csdn.net/vip_code" target="_blank">下载VIP</a>
                    </div>
                    <div class="tb_is1330show"><a href="http://huiyi.csdn.net/" target="_blank">活动</a></div>
                    <div class="tb_is1400show"><a href="http://job.csdn.net/" target="_blank">招聘</a></div>
                    <div class="tb_is1452show"><a href="http://www.iteye.com/" target="_blank">ITeye</a></div>
                    <div class="tb_is1513show"><a href="https://www.gitee.com/" target="_blank">码云</a></div>
                    <div class="tb_is1513show"><a href="http://www.csto.com/" target="_blank">CSTO</a></div>
                </div>
            </li>
        </ul>
        <div class="pull-right login-wrap ">
            <ul class="btns">
                <li class="toolbar-tracking csdn-tracking-statistics tracking-click" data-mod="popu_369"><a
                        href="https://my.csdn.net/#" style="padding:0" target="_blank"></a></li>
                <li>
                    <div class="search_bar csdn-tracking-statistics tracking-click" data-mod="popu_366"><input
                            type="text" class="input_search" name=""> <a href="https://so.csdn.net/so/" target="_blank"
                                                                         class="btn-nobg-noborder btn-search"><i
                            class="iconfont-toolbar toolbar-sousuo"></i></a></div>
                </li>
                <li class="write-bolg-btn csdn-tracking-statistics tracking-click" data-mod="popu_370"><a class=""
                                                                                                          href="http://mp.blog.csdn.net/postedit"
                                                                                                          target="_blank"><i
                        class="iconfont-toolbar toolbar-icon_boke"></i><span>写博客</span></a></li>
                <li class="gitChat"><a class="" href="http://gitbook.cn/new/gitchat/activity?utm_source=csdnblog1"
                                       target="_blank"><i
                        class="iconfont-toolbar toolbar-icon_gitchatx"></i><span>发Chat</span></a></li>
                <li class="userinfo"><a href="https://passport.csdn.net/account/login">登录</a><span></span><a
                        href="https://passport.csdn.net/account/mobileregister?action=mobileRegister">注册</a></li>
                <li class="userLogin">
                    <div class="loginCenter"><a href="http://my.csdn.net/" target="_blank"><img class="login_img"
                                                                                                src="../../statics/myCenterImage/2_caibaozi0521.jpg">


                    </a>

                    </div>
                    <div class="toolbar-circle" style="display: block;"></div>
                    <div class="userControl" style="display: none;">
                        <div><a href="http://blog.csdn.net/caibaozi0521" target="_blank">我的博客</a></div>
                        <div><a class="xiaoxi" href="http://msg.csdn.net/" target="_blank">消息<span class="toolbar-newsL"
                                                                                                   style="margin-left: 4px; display: inline;">(2)</span></a>
                        </div>
                        <div><a href="http://my.csdn.net/my/account/changepwd" target="_blank">设置</a></div>
                        <div><a href="http://bbs.csdn.net/forums/Service" target="_blank">反馈</a></div>
                        <div><a href="http://oldblog.csdn.net/home/help.html" target="_blank">帮助</a></div>
                        <div><a href="https://passport.csdn.net/account/logout">退出</a></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>--%>
<script class="toolbar-s" type="text/javascript" src="../../statics/myCenterJs/iconfont.js."></script>
<script id="toolbar-tpl-scriptId" skin="black" fixed="true" prod="my" src="../../statics/myCenterJs/content_toolbar.js"
        type="text/javascript"></script>
<script type="text/javascript">
    var protocol = window.location.protocol;
    document.write('<script type="text/javascript" src="' + protocol + '//csdnimg.cn/pubfooter/js/repoAddr2.js?v=' + Math.random() + '"></' + 'script>');
</script>
<script type="text/javascript" src="../../statics/myCenterJs/repoAddr2.js"></script>
<div class="nav">
    <div class="nav_content">
        <ul>
            <li class="active"><a href="https://my.csdn.net/">个人中心</a></li>
            <li><a href="http://msg.csdn.net/letters">我的消息</a></li>
            <li><a href="https://my.csdn.net/my/score">C币</a></li>
            <li><a href="https://my.csdn.net/my/account/changepwd">账号</a></li>
            <li><a target="_blank" href="http://mp.blog.csdn.net/">我的博客</a></li>
            <li><a target="_blank" href="http://bbs.csdn.net/user/point">我的论坛</a></li>
            <li><a target="_blank" href="http://download.csdn.net/my/downloads">我的下载</a></li>
            <li><a target="_blank" href="http://edu.csdn.net/mycollege">我的学院</a></li>
            <li><a target="_blank" href="http://ask.csdn.net/my">我的问答</a></li>
            <li><a target="_blank" href="http://order.csdn.net/myorder">我的订单</a></li>
        </ul>
    </div>
</div>

<!--
<div id="my-nav" role="banner" class="navbar navbar-static-top">
  <nav role="navigation" class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">首页</a></li>
      <li ><a href="/my/album">相册</a></li>
      <li ><a href="/my/favorite">收藏</a></li>
      <li ><a href="/my/follow">关系</a></li>
      <li ><a href="http://msg.csdn.net/letters">私信</a></li>
      <li ><a href="/my/feed">动态</a></li>

    </ul>
    <div class="pull-right"><a href="https://my.csdn.net/my/account/changepwd" title="帐号设置" class="btn btn-cfg"></a></div>
  </nav>
</div>
 -->


<div class="main clearfix">
    <div class="persional_property">
        <div class="person_info_con"><i class="icon-edit icon-large person-info-edit"></i><a name="M_base"></a>
            <dl class="person-photo">
                <dt><a href="javascript:;"><img src="../../statics/myCenterImage/1_caibaozi0521.jpg" class="header"><span
                        class="edit_person_pic"></span></a></dt>


                <dd class="focus_num"><b><a href="https://my.csdn.net/my/follow" target="_blank">${mycenter.attention}</a></b>关注</dd>
                <dd class="fans_num"><b><a href="https://my.csdn.net/my/fans" target="_blank">${mycenter.fans}</a></b>粉丝</dd>
            </dl>

            <dl class="person-info">
                <dt class="person-nick-name">
                    <span>${mycenter.userName}</span></dt>
                <dd class="person-detail">
                    <span class="info_null">${mycenter.industry}</span><span>|</span><span class="info_null">${mycenter.job}</span><span>|</span><span
                        class="info_null">${mycenter.userName}</span><span>|</span>${mycenter.address}<span>|</span><span class="info_null">${mycenter.sex}</span><span>|</span><span
                        class="info_null">${mycenter.birthday}</span></dd>
                <dd class="person-sign">个人简介</dd>
                <dd style="margin: 10px 0px">
                    <div class="person-status clearfix">
                        <div class="status"><span>
                        <a href="javascript:;" class="cb">0</a>
                        <i>币</i>
                        <a href="http://mall.csdn.net/cbuy?ref=my" class="rechargeBtn">充值</a>
                    </span><span class="scores">
                        <em class="blog blog2"
                            onclick="javascript:window.open(&#39;http://blog.csdn.net/caibaozi0521&#39;,&#39;_blank&#39;)"
                            title="等级: 2，积分: 251"></em>



                    </span>

                            <span class="medals">
	                        <div class="wraper" style="width: auto"><i class="medal m304" title="博客:持之以恒"></i></div>
                        </span>

                        </div>
                        <form action="" enctype="multipart/form-data" method="post">
                            <input type="file" name="picfile">  <input type="submit" value="头像上传">
                        </form>
                    </div>
                </dd>
            </dl>

        </div>
    </div>
    <div class="persion_section">
        <div class="mod_product">
            <div class="prod_fans">
                <div style="left: 34px" nodetype="box_1" id="box_1" class="box box_1">
                    <div nodetype="ie-fans" class="IE-fans"></div>
                    <div nodetype="fanInfo" class="info level orange">V1</div>
                    <a href="http://blog.csdn.net/caibaozi0521" target="_blank" nodetype="fanText"
                       class="box_title">博客</a>
                    <div class="wraper_right fanOrange">
                        <div nodetype="moveFan-right" class="fan"></div>
                    </div>
                    <div class="wraper_left fanOrange">
                        <div nodetype="moveFan-left" class="fan"></div>
                    </div>
                </div>
                <div style="left: 209px" nodetype="box_2" id="box_2" class="box box_2">
                    <div nodetype="ie-fans" class="IE-fans"></div>
                    <div nodetype="fanInfo" class="info level green">V1</div>
                    <a href="http://download.csdn.net/my" target="_blank" nodetype="fanText" class="box_title">下载</a>
                    <div class="wraper_right fanGreen">
                        <div nodetype="moveFan-right" class="fan"></div>
                    </div>
                    <div class="wraper_left fanGreen">
                        <div nodetype="moveFan-left" class="fan"></div>
                    </div>
                </div>
                <div style="left: 384px" nodetype="box_3" id="box_3" class="box box_3">
                    <div nodetype="ie-fans" class="IE-fans"></div>
                    <div nodetype="fanInfo" class="info level blue">V1</div>
                    <a href="http://bbs.csdn.net/" target="_blank" nodetype="fanText" class="box_title">论坛</a>
                    <div class="wraper_right fanBlue">
                        <div nodetype="moveFan-right" class="fan"></div>
                    </div>
                    <div class="wraper_left fanBlue">
                        <div nodetype="moveFan-left" class="fan"></div>
                    </div>
                </div>
                <div style="left: 559px" nodetype="box_4" id="box_4" class="box box_4">
                    <div nodetype="ie-fans" class="IE-fans"></div>
                    <div nodetype="fanInfo" class="info level blueDark">V1</div>
                    <a href="https://code.csdn.net/dashboard/index" target="_blank" nodetype="fanText"
                       class="box_title">CODE</a>
                    <div class="wraper_right fanBlueDark">
                        <div nodetype="moveFan-right" class="fan"></div>
                    </div>
                    <div class="wraper_left fanBlueDark">
                        <div nodetype="moveFan-left" class="fan"></div>
                    </div>
                </div>
                <div style="left: 734px" nodetype="box_5" id="box_5" class="box box_5">
                    <div nodetype="ie-fans" class="IE-fans"></div>
                    <div nodetype="fanInfo" class="info level greenDark">V1</div>
                    <a href="http://student.csdn.net/" target="_blank" nodetype="fanText" class="box_title">高校</a>
                    <div class="wraper_right fanGreenDark">
                        <div nodetype="moveFan-right" class="fan"></div>
                    </div>
                    <div class="wraper_left fanGreenDark">
                        <div nodetype="moveFan-left" class="fan"></div>
                    </div>
                </div>
            </div>
            <div class="money">
                <ul class="clearfix">
                    <li>C币<a href="https://my.csdn.net/#" target="_blank" class="cb">0</a></li>
                    <li>勋章<span class="medals"></span></li>
                </ul>
            </div>
        </div>
        <div class="person_detail_tab">
            <ul>
                <li data-modal="tab" class="current_detail">我的博客</li>
                <li data-modal="tab">我的收藏</li>
                <li data-modal="tab" class="my_information">我的资料</li>
                <li data-modal="tab" class="lastli">我的关系</li>
            </ul>
        </div>
        <div class="aboutMe" style="display: block">
            <div nodetype="myBlog" nodeindex="my4" data-modal="tab-layer" class="myBlog current_content">
                <div class="mod-my-collect">
                    <div class="silder-wraper">
                        <div class="operate clearfix"><a style="font-size:16px;color: #e9733a;"
                                                         href="http://write.blog.csdn.net/postlist"
                                                         target="_blank">文章管理</a></div>
                    </div>
                    <div class="silder-content">
                        <ul>
                            <c:forEach items="${myblog.newsTitle}" var="myblog" varStatus="s">
                                <li id="79164269" data-bind="ids">
                                <span class="content">
                                    <a href="http://blog.csdn.net/caibaozi0521/article/details/79164269" target="_blank"
                                       data-bind="cont">${myblog.ntitle}</a>
                                    <em data-bind="tags" class="tags"></em>
                                </span>
                                    <span class="operate">
                                    <em data-bind="time" class="time">

                                        <fmt:formatDate value="${myblog.ncreateTime}" type="date" pattern="yyy-MM-dd"/>
                                    </em>

                                </span>
                                </li>

                                <%--<li id="79164161" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79164161" target="_blank"
                                           data-bind="cont">SpringMVC 控制层类的三种写法</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-25 17:06:40                                    </em>
                                    </span>
                                </li>
                                <li id="79163566" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79163566" target="_blank"
                                           data-bind="cont">Spring MVC搭建环境与 注解</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-25 16:47:40                                    </em>
                                    </span>
                                </li>
                                <li id="79152321" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79152321" target="_blank"
                                           data-bind="cont">Spring 结合Mybatis应用</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-24 16:40:34                                    </em>
                                    </span>
                                </li>
                                <li id="79141949" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79141949" target="_blank"
                                           data-bind="cont">Spring_AOP无注解 与 AOP注解</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-23 17:15:27                                    </em>
                                    </span>
                                </li>
                                <li id="79138456" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79138456" target="_blank"
                                           data-bind="cont">Spring--注解</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-23 13:19:13                                    </em>
                                    </span>
                                </li>
                                <li id="79077119" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79077119" target="_blank"
                                           data-bind="cont">mybatis--多对多关联</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-16 17:27:48                                    </em>
                                    </span>
                                </li>
                                <li id="79072163" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79072163" target="_blank"
                                           data-bind="cont">MyBatis--动态语句，对一关联</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-16 10:48:48                                    </em>
                                    </span>
                                </li>
                                <li id="79050752" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79050752" target="_blank"
                                           data-bind="cont">框架-MyBatis动态sql语句</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-13 13:13:02                                    </em>
                                    </span>
                                </li>
                                <li id="79036615" data-bind="ids">
                                    <span class="content">
                                        <a href="http://blog.csdn.net/caibaozi0521/article/details/79036615" target="_blank"
                                           data-bind="cont">MyBatis--搭建环境及增删改</a>
                                        <em data-bind="tags" class="tags"></em>
                                    </span>
                                    <span class="operate">
                                        <em data-bind="time" class="time">
                                            2018-01-11 17:27:14                                    </em>
                                    </span>
                                </li>--%>
                            </c:forEach>
                        </ul>
                    </div>
                    <input type="hidden" value="1" id="blog_page">
                    <a href="javascript:void(0);" class="more" onclick="get_more_blog(&#39;caibaozi0521&#39;,this)">显示更多<i
                            class="icon-angle-down"></i></a>
                    <script type="text/javascript">

                        function get_more_blog(username, obj) {
                            var blog_page = parseInt($('#blog_page').val());

                            $.ajax({
                                type: "GET",
                                url: '/my/home/get_more_blog',
                                data: {username: username, page: blog_page + 1},
                                dataType: 'json',
                                success: function (data) {
                                    if (data.length == 0) {
                                        $(obj).html("已全部加载");
                                    } else {
                                        for (var i in data) {
                                            var item = data[i];
                                            var d = new Date(parseInt(item.PostTime.replace("/Date(", "").replace(")/", "")));
                                            var str = "<li id='" + item.ArticleId + "' data-bind='ids'><span class='content'> <a href='http://blog.csdn.net/" + item.UserName + "/article/details/" + item.ArticleId + "' target='_blank' data-bind='cont'>" + item.Title + "</a><em data-bind='tags' class='tags'></em></span><span class='operate'><em data-bind='time' class='time'>" + d.Format('yyyy-MM-dd HH:mm:ss') + "</em></span></li>";
                                            $(".myBlog").find('ul').append(str);
                                        }
                                        $('#blog_page').val(blog_page + 1);
                                    }
                                }
                            })
                        }

                    </script>

                </div>
            </div>


            <div nodetype="myCollect" nodeindex="my3" data-modal="tab-layer" class="myCollect">
                <div data-bind="collect" class="mod-my-collect">
                    <div class="silder-wraper">
                        <div class="silder" style="display: none;"><i class="active"></i>
                            <div class="wraper">
                                <ul data-bind="menu" class="clearfix">
                                    <li data-bind="menuItem"><em></em><span data-bind="menuText"
                                                                            class="J-menu">我的收藏</span></li>

                                    <li data-bind="menuItem"><em></em><span data-bind="menuText"
                                                                            class="J-menu">知识图谱</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="operate clearfix"><a style="font-size:16px;color: #e9733a;"
                                                         href="http://my.csdn.net/my/favorite" target="_blank">按标签查看</a>
                            <!--        <span class="right icon-caret-left none J-right"></span><span class="left icon-caret-right J-left"></span>  -->
                        </div>
                    </div>
                    <div class="silder-content">
                        <ul data-bind="list">
                            <li class="icon-th-list no-mess"><span>暂无收藏</span></li>
                        </ul>
                        <ul class="J-more"></ul>
                    </div>
                    <a href="https://my.csdn.net/#" class="more" style="display: none;">显示更多<i
                            class="icon-angle-down"></i></a>
                </div>
            </div>

            <div nodetype="myDetails" nodeindex="my0" data-modal="tab-layer" class="myDetails">
                <div class="mod_field_skill">
                    <div class="field">
                        <h3>熟悉的领域</h3>
                        <div class="tags clearfix">
                            <div class="tag addTag">+</div>
                        </div>
                    </div>
                </div>
                <div class="mod_field_skill">
                    <div class="skill">
                        <h3>专业技能</h3>
                        <div class="tags clearfix">


                            <div class="tag addTag">+</div>
                        </div>
                    </div>
                </div>
                <div class="person_education"><a name="M_more"></a>
                    <h3><span>教育经历</span><i class="icon-plus add-icon"></i></h3>
                    <div class="no-mess icon-th-list" style="display: inherit;"><span>暂无教育经历</span></div>
                </div>
                <div class="person_job">
                    <h3><span>工作经历</span><i class="icon-plus add-icon"></i></h3>
                    <div class="no-mess icon-th-list" style="display: inherit;"><span>暂无工作经历</span></div>
                </div>
                <div class="mod_contact"><a href="https://my.csdn.net/#" nodetype="contact-modify"
                                            class="modify icon-edit"></a>
                    <h3>联系方式 <a class="privacy"
                                onclick="javascript:window.open(&#39;https://my.csdn.net/my/account/privacy&#39;,&#39;_blank&#39;)"
                                href="https://my.csdn.net/#">仅自己可见</a></h3>
                    <ul class="clearfix">
                        <li><i>电子邮箱：</i><span nodetype="mail" class="email  mail"></span></li>
                        <li><i>手机号码：</i><span nodetype="mobile" class="mobile"></span></li>
                        <li><i>QQ号码：</i><span nodetype="qq" class="qq"></span></li>
                        <li><i>微信号：</i><span nodetype="weixin" class="weixin"></span></li>
                    </ul>
                    <!--
                  <ul class="clearfix">
                    <li>电子邮箱：<span nodeType="mail" class="email  mail"></span></li>
                    <li>手机号码：<span nodeType="mobile" class="mobile"></span></li>
                    <li>QQ号码：<span nodeType="qq" class="qq"></span></li>
                    <li>微信号：<span nodeType="weixin" class="weixin"></span></li>
                  </ul>
                   -->
                </div>
            </div>

            <div nodetype="myConnection" nodeindex="my2" data-modal="tab-layer" class="myConnection">
                <div class="connection_title_con">
                    <ul>
                        <li id="btnMyFocus" class="current_foucus">我关注的(0)</li>
                        <li class="interval_line"></li>
                        <li id="btnFocusMe">关注我的(0)</li>
                        <li class="interval_line"></li>
                        <li id="btnRelation">相互关注(0)</li>
                    </ul>
                    <div class="connection_search_form">
                        <form>
                            <input id="txtSearchC" type="text" placeholder="搜索..." class="input_text">
                            <input id="btnStartSearch" type="submit" value="" class="connection_search">
                        </form>
                    </div>
                </div>
                <div class="connection_list_con clearfix">
                    <ul id="myConnect" class="my_connections clearfix">
                        <li class="icon-th-list no-mess" style="margin-bottom: 0; height: auto;"><span>暂时还没有关注关系</span>
                        </li>
                    </ul>
                    <div id="c_more" class="more" style="display: none;"><span class="icon-angle-down"></span><a
                            href="https://my.csdn.net/#">显示更多</a></div>
                </div>
            </div>

        </div>
    </div>
    <!--      <div class="persion_article">-->
    <!--        <div class="mod_personal_info">-->
    <!--          <div class="per_info clearfix">-->
    <!--            <div class="percentage"><em nodetype="percentage">0</em><span>%</span></div>-->
    <!--            <div class="prog">-->
    <!--              <div class="prog_bg"></div>-->
    <!--              <div nodetype="prog_fg" class="prog_fg"></div>-->
    <!--            </div>-->
    <!--          </div>-->
    <!--          <div class="money_info">-->
    <!--            <div nodetype="modify" class="modify"><span class="info">完善资料 可获奖励</span><span class="money"><em class="icon-angle-left"></em><span>5</span><em class="icon"></em><span class="fix">币</span></span></div>-->
    <!--            <div nodetype="perfect" class="perfect"><span class="info complate">资料完整度100% 奖励<i>5<em></em>币</i></span><a href="#" nodetype="receive" class="receive">立即领取</a></div>-->
    <!--          </div>-->
    <!--          <div class="info">-->
    <!--            <ul>-->
    <!--              <li><i class="icon-exclamation-sign"></i>个人头像：<em nodetype="atHeader">未设置</em></li>-->
    <!--              <li><i class="icon-exclamation-sign"></i>基本资料：<em nodetype="atBase"><a href="#M_base">未填写完整</a></em></li>-->
    <!--              <li><i class="icon-exclamation-sign"></i>详细资料：<em nodetype="atMore"><a href="javascript:void(0)" onclick="$('.person_detail_tab').find('.my_information').click();window.location = '#M_more'">未填写完整</a></em></li>-->
    <!--            </ul>-->
    <!--          </div>-->
    <!--        </div>-->
    <!--        <div class="interested_con">-->
    <!--          <h3>最近访客</h3>-->
    <!--          <ul nodetype="inter-list" data-bind="list" class="clearfix">-->
    <!--            <li><a href="#" target="_blank" data-bind="headerHref"><img src="" username="" data-bind="headerSrc"></a></li>-->
    <!--          </ul>-->
    <!--          <div class="count-and-more"><span>最近一周被访问了<em data-bind="times"></em>次</span><a href="/my/visitor/index" target="_blank">查看全部</a>-->
    <!--          </div>-->
    <!--        </div>-->
    <!--      </div>-->
    <div class="pop_edit edit_intro">
        <h3>编辑简介</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div style="background: #f3f3f3; border:1px solid #DCDCDC; margin:0 10px  20px;color:#333; font-size:16px; line-height:30px; padding:0 5px;">
            <span>用户名 : </span><span style="color: #666666;">caibaozi0521</span>
        </div>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <ul>
                    <li class="mp_dl"><em class="red">*</em><span>昵称：
                  <input name="nickname" nodetype="nickName" important="yes" type="text" placeholder="支持中文、英文、数字、_、-"
                         maxlen="20" class="nick_name mp_field1" readonly="readonly">
                        <!--em.nick_tip 昵称已被使用，请重新输入。--></span><span nodetype="realName" class="realName mp_label">实名：
                  <input name="realname" nodetype="userName" type="text" maxlen="15" class="user_name mp_field2"><i
                                class="mp_em_i">已认证</i></span></li>
                    <li><span>职位：
                  <input name="curjob" nodetype="job" type="text" maxlen="20" class="job mp_field1"></span><span
                            class="mp_label">性别：
                  <input name="gender" type="radio" value="1" class="radio_sex">男
                  <input name="gender" type="radio" value="2" class="radio_sex">女</span></li>
                    <li><span>生日：
                  <input name="birthday" nodetype="birthday" type="text" onclick="WdatePicker()"
                         class="birthday Wdate mp_field1"></span><span>行业：
                  <select name="industrytype" class="industry">
                    <option value="0">选择行业</option>
                  </select></span></li>
                    <li class="region">地区：
                        <select name="country" type="region" class="country">
                            <option value="0">国家</option>
                        </select>
                        <select name="province" type="region" class="prov">
                            <option value="0">省级</option>
                        </select>
                        <select name="city" type="region" class="city">
                            <option value="0">市级</option>
                        </select>
                        <select name="district" type="region" class="district">
                            <option value="0"></option>
                        </select>
                    </li>
                    <li>简述：
                        <textarea name="selfdesc" nodetype="selfdesc" placeholder="300字以内" maxlen="300"
                                  class="intro_info mp_wid" style="width:560px"></textarea>
                        <span class="info-alert">您还可以输入<em>300</em>个字符</span>
                    </li>
                </ul>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
    <div class="pop_edit edit_edu">
        <h3>编辑教育经历</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <ul>
                    <li>学校：<em class="red">*</em>
                        <input name="schoolname" nodetype="school" important="yes" type="text" maxlen="20"
                               class="school" autocomplete="off">
                        <div class="autocomplete-suggestions"
                             style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
                    </li>
                    <li><em class="red">*</em><span>专业：
                  <input name="majorstr" nodetype="pro" important="yes" type="text" maxlen="20" class="pro"
                         autocomplete="off"><div class="autocomplete-suggestions"
                                                 style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div></span><span>学历：
                  <select name="degree" nodetype="edu" class="edu">
                    <option value="1">中专</option>
                    <option value="2">大专</option>
                    <option value="3">本科</option>
                    <option value="4">硕士</option>
                    <option value="5">MBA</option>
                    <option value="6">博士</option>
                    <option value="7">博士后</option>
                    <option value="-15">初中</option>
                    <option value="-10">高中</option>
                    <option value="-5">中技</option>
                  </select></span></li>
                    <li><em class="red">*</em><span style="padding-right: 0 ">时间：
                  <input id="edustartdate" name="edustartdate" nodetype="date" important="yes" type="text"
                         onclick="WdatePicker({maxDate:&#39;#F{$dp.$D(\&#39;eduenddate\&#39;)}&#39;})"
                         readonly="readonly" class="date Wdate"></span><span class="time">-</span>
                        <input id="eduenddate" name="eduenddate" nodetype="date" important="yes" type="text"
                               onclick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;edustartdate\&#39;)}&#39;})"
                               readonly="readonly" class="date Wdate">
                        <input name="now" nodetype="now" type="checkbox" class="now"><i>现在</i>
                    </li>
                </ul>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
    <div class="pop_edit edit_job">
        <h3>编辑工作经历</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <ul>
                    <li><em class="red">*</em><span>单位：
                  <input name="orgname" nodetype="school" important="yes" type="text" maxlen="20" class="school"></span>
                    </li>
                    <li><em class="red">*</em><span>职位：
                  <input name="job" nodetype="job" type="text" maxlen="20" important="yes" class="job"></span></li>
                    <li><em class="red">*</em><span style="padding-right: 0">时间：
                  <input id="workbegindate" name="workbegindate" nodetype="date" important="yes" type="text"
                         onclick="WdatePicker({maxDate:&#39;#F{$dp.$D(\&#39;workenddate\&#39;)}&#39;})"
                         readonly="readonly" class="date Wdate"></span><span class="time">-</span>
                        <input id="workenddate" name="workenddate" nodetype="date" important="yes" type="text"
                               onclick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;workbegindate\&#39;)}&#39;})"
                               readonly="readonly" class="date Wdate">
                        <input name="now" nodetype="now" type="checkbox" class="now"><i>现在</i>
                    </li>
                    <li><em style="margin-top: -65px" class="red">*</em><span>简述：
                  <textarea name="workdesc" important="yes" placeholder="300字以内" maxlen="300"
                            class="intro_info"></textarea></span><span class="textara_Mes"></span></li>
                </ul>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
    <div class="pop_edit edit_contact">
        <h3>编辑联系方式 <a href="https://my.csdn.net/my/account/privacy" class="privacy" target="_blank">仅自己可见</a></h3><a
            href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <ul>
                    <li>QQ号码：
                        <input name="qq" nodetype="qq" type="text" class="qq">
                    </li>
                    <li>微信号：
                        <input name="weixin" nodetype="weixin" type="text" class="weixin">
                    </li>
                </ul>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
    <div class="pop_edit add_fields">
        <h3>新增我熟悉的领域</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <input name="areaname" nodetype="add-fields" type="text" maxlen="10" class="fields" autocomplete="off">
                <div class="autocomplete-suggestions"
                     style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
    <div class="pop_edit add_pro">
        <h3>新增专业技能</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <input name="skillname" nodetype="add-pro" type="text" maxlen="10" class="pro" autocomplete="off">
                <select name="skilllevel" nodetype="add-stars" class="add_stars">
                    <option value="0">选择星级</option>
                    <option value="1">1星</option>
                    <option value="2">2星</option>
                    <option value="3">3星</option>
                    <option value="4">4星</option>
                    <option value="5">5星</option>
                </select>
                <div class="autocomplete-suggestions"
                     style="position: absolute; display: none; max-height: 300px; z-index: 9999;"></div>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
    <div class="pop_edit edit_header">
        <div class="context">
            <form id="form" nodetype="form-popup" class="form" method="post" enctype="multipart/form-data">
                <a href="https://my.csdn.net/#" class="change"><span class="icon-picture"></span>选择照片
                    <input id="file" type="file" name="tmp_avatar_file" class="file">
                </a>
                <div class="des">仅支持JPG,GIF,PNG格式;文件小于5M</div>
                <div class="headers clearfix">
                    <div id="big" nodetype="big" style="position: relative; line-height: 250px;" class="big"><img
                            crossorigin="anonymous" src="../../statics/myCenterImage/1_caibaozi0521.jpg" id="source-image"
                            class="cut-img">
                        <canvas width="250" height="250" style="display: none;"></canvas>
                    </div>
                    <div class="pic">
                        <div nodetype="multiImage" class="p150 multiImage">
                            <canvas width="150" height="150"></canvas>
                        </div>
                        <span>150 X 150</span>
                    </div>
                    <div class="pic">
                        <div nodetype="multiImage" class="p75 multiImage">
                            <canvas width="75" height="75"></canvas>
                        </div>
                        <span>75 X 75</span>
                    </div>
                    <div class="pic">
                        <div nodetype="multiImage" class="p50 multiImage">
                            <canvas width="50" height="50"></canvas>
                        </div>
                        <span>50 X 50</span>
                    </div>
                </div>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="editHeader-cancel"
                                class="cancel editHeader-cancel">取消</a><a href="https://my.csdn.net/#"
                                                                          nodetype="editHeader-ok"
                                                                          class="ok editHeader-ok">保存</a></div>
    </div>
    <div class="pop_edit del_confirm">
        <h3>确认删除</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <div class="del_content">您确认删除此信息吗？</div>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="del" class="ok">确认</a></div>
    </div>
    <div class="pop_edit edit-myCollect">
        <h3>编辑收藏</h3><a href="https://my.csdn.net/#" nodetype="close" class="close">×</a>
        <div class="context">
            <form id="form" nodetype="form-popup" class="form">
                <ul>
                    <li>
                        <input type="hidden" name="id"><em>*</em>网址：
                        <input type="text" name="url">
                    </li>
                    <li><em>*</em>标题：
                        <input type="text" name="title">
                    </li>
                    <li>标签：
                        <input type="text" placeholder="多个标签用逗号或空格间隔" name="txt_tag">
                    </li>
                </ul>
            </form>
        </div>
        <div class="success"><a href="https://my.csdn.net/#" nodetype="cancel" class="cancel">取消</a><a
                href="https://my.csdn.net/#" nodetype="ok" class="ok">保存</a></div>
    </div>
</div>
<!--<script type="text/javascript" src="../../statics/myCenterJs/publib_footer-1.0.2.js"></script>-->
<link rel="stylesheet" type="text/css" href="../../statics/css/pub_footer_2014.css">
<div class="pub_fo">
    <div id="pub_footerall" class="pub_footer_new">
        <dl>
            <dt></dt>
            <dd class="foot_sub_menu"><a href="http://www.csdn.net/company/about.html"
                                         target="_blank">公司简介</a><span>|</span><a
                    href="http://www.csdn.net/company/recruit.html" target="_blank">招贤纳士</a><span>|</span><a
                    href="http://www.csdn.net/company/marketing.html" target="_blank">广告服务</a><span>|</span><a
                    href="http://www.csdn.net/company/contact.html" target="_blank">联系方式</a><span>|</span><a
                    href="http://www.csdn.net/company/statement.html" target="_blank">版权声明</a><span>|</span><a
                    href="http://www.csdn.net/company/layer.html" target="_blank">法律顾问</a><span>|</span><a
                    href="mailto:webmaster@csdn.net">问题报告</a><span>|</span><a target="_blank"
                                                                              href="http://www.csdn.net/friendlink.html">合作伙伴</a><span>|</span><a
                    href="http://bbs.csdn.net/forums/Service" target="_blank">论坛反馈</a></dd>
            <dd class="foot_contact"><a href="https://my.csdn.net/#" target="_blank" class="qq qqcustomer_s">网站客服</a><a
                    href="http://wpa.qq.com/msgrd?v=3&amp;uin=2251809102&amp;site=qq&amp;menu=yes" target="_blank"
                    class="qq">杂志客服</a><a href="http://e.weibo.com/csdnsupport/profile" target="_blank" class="weibo">微博客服</a><a
                    href="mailto:webmaster@csdn.net" class="email" title="联系邮箱">webmaster@csdn.net</a><span
                    class="phone" title="服务热线">400-660-0108</span><span class="interval">|</span><span>北京创新乐知信息技术有限公司 版权所有</span><span
                    class="interval">|</span><span>江苏知之为计算机有限公司</span><span
                    class="interval">|</span><span>江苏乐知网络技术有限公司</span></dd>
            <dd class="foot_copyright"><span>京&nbsp;ICP&nbsp;证&nbsp;09002463&nbsp;号</span><span
                    class="interval">|</span><span>Copyright © 1999-2018, CSDN.NET, All Rights Reserved&nbsp;</span><a
                    href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001032100010" target="_blank"><img
                    src="../../statics/myCenterImage/gongshang_logos.gif" alt="GongshangLogo" title=""></a></dd>
        </dl>
    </div>
</div>
<!--<script id="noticeScript" type="text/javascript" btnid="header_notice_num" wrapid="note1" count="5" subcount="5"
        src="../../statics/myCenterJs/notify.js"></script>-->
<input type="hidden" id="aa_g_data_ids">
<!--    <script type="text/javascript" src="http://c.csdnimg.cn/public/common/toolbar/js/toolbar.js"></script>-->
<!--<script src="../../statics/myCenterJs/jquery-ui-1.10.3.min.js"></script>
<script src="../../statics/myCenterJs/jquery.form.js" type="text/javascript"></script>
<script src="../../statics/myCenterJs/jquery-migrate-1.2.1.js" type="text/javascript"></script>
<script src="../../statics/myCenterJs/transparency.min.js" type="text/javascript"></script>
<script src="../../statics/myCenterJs/WdatePicker.js" type="text/javascript"></script>-->

<!--<script src="../../statics/myCenterJs/jquery.autocomplete.js" type="text/javascript"></script>
<script src="../../statics/myCenterJs/screen_shot.js"></script>
<script data-main="//csdnimg.cn/release/my/assets2/js/config.mySpace.A.js" src="../../statics/myCenterJs/require.js"></script>
<script src="../../statics/myCenterJs/mini.js"></script>-->
<script>
    showMini(".my_connections");
</script>

<div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;" type="text"
                                                                    value="" id="focus_retriever" readonly="true"></div>
</body>
</html>
