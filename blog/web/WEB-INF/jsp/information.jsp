<%--
  Created by IntelliJ IDEA.
  User: kgc
  Date: 2018/3/13
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0029)https://www.csdn.net/nav/news -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="referrer" content="always">
    <meta name="msvalidate.01" content="3189512127C34C46BC74BED5852D45E4">
    <title>资讯-CSDN</title>
    <link ref="canonical" href="https://www.csdn.net/nav/news">
    <link href="https://csdnimg.cn/public/favicon.ico" rel="SHORTCUT ICON">
    <link rel="stylesheet" href="../../statics/css/content_toolbar.css">
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../statics/css/avatar.css">
    <link href="../../statics/css/csdn_feed.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../statics/css/goTop.min.css">
</head>
<body data-category="news" data-host_type="www">
<jsp:include page="common.jsp" flush="true"></jsp:include>
<!--<div class="csdn-toolbar csdn-toolbar tb_disnone  csdn-toolbar-skin-black ">
    <div class="container row center-block ">
        <ul class="pull-left left-menu clearfix">
            <li><a href="javascript:void(0);" title="首页" target="_blank">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#toolbar-csdnlogo"></use>
                </svg>
            </a></li>
            <li><a href="javascript:void(0);" class="toolbar_to_feed" title="博客" target="_blank">博客</a></li>
            <li><a href="javascript:void(0);" title="学院" target="_blank">学院</a></li>
            <li><a href="javascript:void(0);" title="下载" target="_blank">下载</a></li>
            <li><a href="GitChat" title="GitChat" target="_blank">GitChat</a></li>
            <li class="tb_is1090hide"><a href="javascript:void(0);" title="论坛" target="_blank">论坛</a></li>
            <li class="tb_is1150hide"><a href="javascript:void(0);" title="问答" target="_blank">问答</a></li>
            <li class="tb_is1210hide"><a href="javascript:void(0);" title="商城" target="_blank">商城</a></li>
            <li class="tb_is1270hide"><a href="vip" title="下载VIP" target="_blank">VIP</a></li>
            <li class="tb_is1330hide"><a href="javascript:void(0);" title="活动" target="_blank">活动</a></li>
            <li class="tb_is1400hide"><a href="javascript:void(0);" title="招聘" target="_blank">招聘</a></li>
            <li class="tb_is1452hide"><a href="iteye" title="ITeye" target="_blank">ITeye</a></li>
            <li class="tb_is1513hide"><a href="javascript:void(0);" title="码云" target="_blank">码云</a></li>
            <li class="tb_is1513hide"><a href="csto" title="CSTO" target="_blank">CSTO</a></li>
        </ul>
        <div class="pull-right login-wrap unlogin">
            <ul class="btns">
                <li>
                    <div class="search_bar csdn-tracking-statistics tracking-click" data-mod="popu_366"><input
                            type="text" class="input_search" name=""> <a href="javascript:void(0);" target="_blank" class="btn-nobg-noborder btn-search"><i
                            class="iconfont-toolbar toolbar-sousuo"></i></a></div>
                </li>
                <li class="write-bolg-btn csdn-tracking-statistics tracking-click" data-mod="popu_370"><a class="" href="javascript:void(0);" target="_blank">
                    <i class="iconfont-toolbartoolbar-icon_boke"></i><span>写博客</span></a></li>
                <li class="gitChat"><a class="" href="javascript:void(0);" target="_blank">
                    <i class="iconfont-toolbartoolbar-icon_gitchatx"></i><span>发Chat</span></a></li>
                <li class="userinfo"><a href="javascript:void(0);">登录</a><span></span><a
                        href="javascript:void(0);">注册</a></li>
                <li class="userLogin">
                    <div class="loginCenter"><a href="javascript:void(0);" target="_blank"><img class="login_img" src="./images/100x100.jpg">
                        <div class="toolbar-circle"></div>
                    </a></div>
                </li>
            </ul>
        </div>
    </div>
</div>-->
<div class="container clearfix">
    <nav id="nav" class="clearfix">
        <div class="clearfix">
            <div class="nav_com">
                <ul>
                    <li class=""><a href="index">推荐</a></li>
                    <li class=""><a href="newstitle">最新文章</a></li>
                    <li class="active"><a href="javascript:void(0);">资讯</a></li>
                    <li class=""><a href="javascript:void(0);">人工智能</a></li>
                    <li class=""><a href="javascript:void(0);">云计算/大数据</a></li>
                    <li class=""><a href="javascript:void(0);">区块链</a></li>
                    <li class=""><a href="javascript:void(0);">数据库</a></li>
                    <li class=""><a href="javascript:void(0);">程序人生</a></li>
                    <li class=""><a href="javascript:void(0);">游戏开发</a></li>
                    <li class=""><a href="javascript:void(0);">研发管理</a></li>
                    <li class=""><a href="javascript:void(0);">前端</a></li>
                    <li class=""><a href="javascript:void(0);">移动开发</a></li>
                    <li class=""><a href="javascript:void(0);">物联网</a></li>
                    <li class=""><a href="javascript:void(0);">运维</a></li>
                    <li class=""><a href="javascript:void(0);">计算机基础</a></li>
                    <li class=""><a href="javascript:void(0);">编程语言</a></li>
                    <li class=""><a href="javascript:void(0);">架构</a></li>
                    <li class=""><a href="javascript:void(0);">音视频开发</a></li>
                    <li class=""><a href="javascript:void(0);">安全</a></li>
                    <li class=""><a href="javascript:void(0);">其他</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="fixed_content">
        <main>
            <ul class="feedlist_mod" id="feedlist_id" shown-offset="1520758965663287" style="padding-top: 0px;">
                <li class="clearfix" data-type="blog" data-id="79314305">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed" data-feed-show="true" data-dsm="post">
                                <a strategy="new" href="javascript:void(0);" target="_blank">
                                    今年春运新增的这些“黑科技” 你感受到了吗？ </a>
                            </h2>
                        </div>
                        <dl class="list_userbar">
                            <dd class="name">
                                <a href="javascript:void(0);" target="_blank">
                                    中国财经IT </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed" data-mod="popu_459">
                                <a strategy="new" href="javascript:void(0);" target="_blank">02月12日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">194</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
            </ul>
        </main>
        <aside>
            <!-- 右侧轮播广告 end -->
            <div class="right_box">
                <h3 class="feed_new_tit">
                    <span class="line"></span><span class="txt">今日推荐</span>
                </h3>
                <ul class="company_list" style="height: 800px">
                </ul>
            </div>
        </aside>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="../../statics/css/pub_footer_1.0.3.css">
<div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;" type="text"
                                                                    value="" id="focus_retriever" readonly="true"></div>
</body>
</html>