<%--
  Created by IntelliJ IDEA.
  User: kgc
  Date: 2018/3/13
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!-- saved from url=(0027)https://www.csdn.net/nav/db -->
<html lang="en" style=""
      class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- <script charset="utf-8" src="./dbjs/b.js"></script>-->

    <!--<script src="./dbjs/hm.js"></script>-->
    <!--
        <script src="./dbjs/hm.js"></script>-->
    <!--    <script src="./dbjs/tingyun-rum.js" type="text/javascript"></script>-->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="referrer" content="always">
    <meta name="msvalidate.01" content="3189512127C34C46BC74BED5852D45E4">
    <title>数据库-CSDN</title>
    <link ref="canonical" href="https://www.csdn.net/nav/db">
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <!--  <script src="./dbjs/jquery-1.9.1.min.js" type="text/javascript"></script>-->
    <!--<script src="./dbjs/tracking-1.0.2.js" type="text/javascript" charset="utf-8"></script>
    <script src="./dbjs/main_flume.js"></script>-->
    <link rel="stylesheet" href="../../statics/dbcss/content_toolbar.css">
    <link rel="stylesheet" href="../../statics/dbcss/bootstrap.min.css">
    <link rel="stylesheet" href="../../statics/dbcss/avatar.css">
    <link href="../../statics/dbcss/csdn_feed.css" rel="stylesheet">
    <!--<script src="./dbjs/modernizr.js" type="text/javascript"></script>-->
    <style type="text/css"></style>
    <style type="text/css"></style>
    <style type="text/css"></style>
    <link rel="stylesheet" type="text/css" href="../../statics/dbcss/goTop.min.css">
    <!--<script src="./dbcss/get_ads.php" type="text/javascript"></script>-->
</head>
<body data-category="db" data-host_type="www">

<div class="csdn-toolbar csdn-toolbar tb_disnone  csdn-toolbar-skin-black ">
    <div class="container row center-block ">
        <ul class="pull-left left-menu clearfix">
            <li><a href="https://www.csdn.net/" title="CSDN首页" target="_blank">

            </a></li>
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
                <svg width="22" height="4" xmlns="http://www.w3.org/2000/svg">
                    <path d="M2 4a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm9 0a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm9 0a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"
                          fill="#4F4F4F" fill-rule="evenodd"></path>
                </svg>
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
        <div class="pull-right login-wrap unlogin">
            <ul class="btns">
                <li class="toolbar-tracking csdn-tracking-statistics tracking-click" data-mod="popu_369"><a
                        href="https://www.csdn.net/nav/db#" style="padding:0" target="_blank"></a></li>
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
                                                                                                src="../../statics/dbimage/100x100.jpg">
                        <div class="toolbar-circle"></div>
                    </a></div>
                    <div class="userControl">
                        <div><a href="http://blog.csdn.net/" target="_blank">我的博客</a></div>
                        <div><a class="xiaoxi" href="http://msg.csdn.net/" target="_blank">消息<span
                                class="toolbar-newsL">(3)</span></a></div>
                        <div><a href="http://my.csdn.net/my/account/changepwd" target="_blank">设置</a></div>
                        <div><a href="http://bbs.csdn.net/forums/Service" target="_blank">反馈</a></div>
                        <div><a href="http://oldblog.csdn.net/home/help.html" target="_blank">帮助</a></div>
                        <div><a href="https://passport.csdn.net/account/logout">退出</a></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--<script class="toolbar-s" type="text/javascript" src="./dbjs/iconfont.js"></script>
<script id="toolbar-tpl-scriptId" prod="download" skin="black" src="./dbjs/content_toolbar.js"
        type="text/javascript" domain="http://blog.csdn.net"></script>-->
<div class="container clearfix">
    <nav id="nav" class="clearfix">
        <div class="clearfix">
            <div class="nav_com">
                <ul>
                    <li class=""><a href="https://www.csdn.net/">推荐</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/newarticles">最新文章</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/news">资讯</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/ai">人工智能</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/cloud">云计算/大数据</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/blockchain">区块链</a></li>
                    <li class="active"><a href="https://www.csdn.net/nav/db">数据库</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/career">程序人生</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/game">游戏开发</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/engineering">研发管理</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/web">前端</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/mobile">移动开发</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/iot">物联网</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/ops">运维</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/fund">计算机基础</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/lang">编程语言</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/arch">架构</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/avi">音视频开发</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/sec">安全</a></li>
                    <li class=""><a href="https://www.csdn.net/nav/other">其他</a></li>
                </ul>

            </div>
        </div>
    </nav>
    <div class="fixed_content">
        <!--头部banner广告 begin-->
        <div class="banner-ad-box">
            <div class="J_adv" data-view="true" data-mod="ad_popu_291" data-mtp="2" data-order="719"
                 data-con="ad_content_3535" style="width: 760px; height: 90px;">
                <div style="line-height:0px;"><a target="_blank"
                                                 href="http://edu.csdn.net/topic/ai112?utm_source=home4"><img
                        width="760" height="90" src="../../statics/dbimage/201802111150492024.png"></a>
                    <div style="left: 0px; width: 26px; background: transparent url(&quot;//img-ads.csdn.net/2016/201608021757063065.png&quot;) no-repeat scroll right top; height: 16px;z-index: 12; position: relative; bottom: 16px;"></div>
                </div>
            </div>
            <div class="J_adv" data-view="true" data-mod="ad_popu_292" data-mtp="2" data-order="719"
                 data-con="ad_content_3570" style="width: 300px; height: 90px;">
                <div style="line-height:0px;"><a target="_blank"
                                                 href="https://edu.csdn.net/member?utm_source=button300..90"><img
                        width="300" height="90" src="../../statics/dbimage/201803011431321228.png"></a>
                    <div style="left: 0px; width: 26px; background: transparent url(&quot;//img-ads.csdn.net/2016/201608021757063065.png&quot;) no-repeat scroll right top; height: 16px;z-index: 12; position: relative; bottom: 16px;"></div>
                </div>
            </div>
        </div>
        <!--头部banner广告 end-->
        <main>
            <div class="feed-loading-box">
                <div class="loader-inner ball-clip-rotate-pulse">
                    <div></div>
                </div>
                <span class="loading-txt">在奔跑中</span>
            </div>
            <div>
                <div class="msg-tooltip">
                    <div class="update_counts"></div>
                </div>
            </div>
            <div class="feed-fix-box" style="display: block;">
                <div class="scroll-fixbar clearfix csdn-tracking-statistics" data-mod="popu_463" data-dsm="post"
                     style="left: 0px; width: 760px;">
                    <a class="txt txt-refrash-new" target="_blank">您有新的推荐内容，点击查看</a>
                    <button class="btn btn-nobg-noborder btn-nobg-noborder btn-close-fixbar">
                        <i class="icon-close"></i>
                    </button>
                </div>
            </div>
            <ul class="feedlist_mod" id="feedlist_id" shown-offset="1520822986806657" style="padding-top: 0px;">
                <li class="clearfix" data-type="blog" data-id="72624888">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="true" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/q383965374/article/details/72624888"
                                   target="_blank">
                                    动态联动select下拉框实现 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/q383965374" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_q383965374.jpg" alt="q383965374" title="q383965374">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/q383965374" target="_blank">
                                    张小凡vip </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/q383965374/article/details/72624888"
                                   target="_blank">
                                    05月22日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">3071</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="75452656">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="true" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/toto1297488504/article/details/75452656"
                                   target="_blank">
                                    lucene和elasticsearch的前世今生、elasticsearch的核心概念、elasticsearch核心概念 vs.
                                    数据库核心概念（来自学习资料） </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/toto1297488504" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_toto1297488504.jpg" alt="toto1297488504"
                                         title="toto1297488504">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/toto1297488504" target="_blank">
                                    toto1297488504 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/toto1297488504/article/details/75452656"
                                   target="_blank">
                                    07月20日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/toto1297488504/article/details/75452656#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    1 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">625</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <ins data-revive-zoneid="295" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-2"></ins>
                <li class="clearfix" data-type="blog" data-id="76175482">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="true" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/54powerman/article/details/76175482"
                                   target="_blank">
                                    Spring Boot集成JPA的Column注解命名字段无效的问题 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/54powerman" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_54powerman.jpg" alt="54powerman" title="54powerman">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/54powerman" target="_blank">
                                    54powerman </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/54powerman/article/details/76175482"
                                   target="_blank">
                                    07月27日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/54powerman/article/details/76175482#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    2 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">3728</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71512404">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="true" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/Jack__Frost/article/details/71512404"
                                   target="_blank">
                                    MySQL优化系列（二）--查找优化（1）（非索引设计） </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/Jack__Frost" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_jack__frost.jpg" alt="Jack__Frost" title="Jack__Frost">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/Jack__Frost" target="_blank">
                                    Jack__Frost </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/Jack__Frost/article/details/71512404"
                                   target="_blank">
                                    06月29日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">1813</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71215619">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="true" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/smile_lg/article/details/71215619"
                                   target="_blank">
                                    mybatis中动态sql常用的标签 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/smile_lg" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_smile_lg.jpg" alt="smile_lg" title="smile_lg">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/smile_lg" target="_blank">
                                    smile_lg </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/smile_lg/article/details/71215619"
                                   target="_blank">
                                    05月05日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/smile_lg/article/details/71215619#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    1 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">4404</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="72027209">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="true" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/BuquTianya/article/details/72027209"
                                   target="_blank">
                                    日志系统ELK使用详解(四)--kibana安装和使用 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/BuquTianya" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_buqutianya.jpg" alt="BuquTianya" title="BuquTianya">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/BuquTianya" target="_blank">
                                    不去天涯 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/BuquTianya/article/details/72027209"
                                   target="_blank">
                                    05月14日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">11480</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <ins data-revive-zoneid="296" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-3"></ins>
                <li class="clearfix" data-type="blog" data-id="70837736">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/u011277123/article/details/70837736"
                                   target="_blank">
                                    一个MySQL表真的最多只能够有24个字段吗？反正我不信 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/u011277123" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_u011277123.jpg" alt="u011277123" title="u011277123">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/u011277123" target="_blank">
                                    我是皇上 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/u011277123/article/details/70837736"
                                   target="_blank">
                                    04月27日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">2905</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71055170">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="new" href="http://blog.csdn.net/zhouxukun123/article/details/71055170"
                                   target="_blank">
                                    ORA-01732: 此视图的数据操纵操作非法 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        最新文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/zhouxukun123" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_zhouxukun123.jpg" alt="zhouxukun123"
                                         title="zhouxukun123">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/zhouxukun123" target="_blank">
                                    joexk </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="new" href="http://blog.csdn.net/zhouxukun123/article/details/71055170"
                                   target="_blank">
                                    05月01日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">2698</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71157940">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/BloodyMandoo/article/details/71157940"
                                   target="_blank">
                                    echarts3 地图应用 给背景地图上色（2）附：世界各大城市经纬度 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/BloodyMandoo" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_bloodymandoo.jpg" alt="BloodyMandoo"
                                         title="BloodyMandoo">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/BloodyMandoo" target="_blank">
                                    BloodyMandoo </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/BloodyMandoo/article/details/71157940"
                                   target="_blank">
                                    05月04日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/BloodyMandoo/article/details/71157940#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    6 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">5678</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="72152562">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="new" href="http://blog.csdn.net/sds15732622190/article/details/72152562"
                                   target="_blank">
                                    【MyCat】mycat目录结构以及主要配置文件解读 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        最新文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/sds15732622190" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_sds15732622190.jpg" alt="sds15732622190"
                                         title="sds15732622190">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/sds15732622190" target="_blank">
                                    你是人间四月天_ </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="new" href="http://blog.csdn.net/sds15732622190/article/details/72152562"
                                   target="_blank">
                                    05月15日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="new"
                                   href="http://blog.csdn.net/sds15732622190/article/details/72152562#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    20 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">379</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71403853">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/Crazyer0214/article/details/71403853"
                                   target="_blank">
                                    数据库、数据源、数据库连接池、JDBC，JNDI等知识点整理 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/Crazyer0214" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_crazyer0214.jpg" alt="Crazyer0214" title="Crazyer0214">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/Crazyer0214" target="_blank">
                                    Crazyer0214 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/Crazyer0214/article/details/71403853"
                                   target="_blank">
                                    05月08日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">632</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <ins data-revive-zoneid="297" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-4"></ins>
                <li class="clearfix" data-type="blog" data-id="71215539">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/u014082617/article/details/71215539"
                                   target="_blank">
                                    PageHelper分页插件源码及原理剖析 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/u014082617" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_u014082617.jpg" alt="u014082617" title="u014082617">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/u014082617" target="_blank">
                                    Optimistic_ </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/u014082617/article/details/71215539"
                                   target="_blank">
                                    05月05日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/u014082617/article/details/71215539#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    1 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">10533</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71436801">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/localhost01/article/details/71436801"
                                   target="_blank">
                                    【精】搭建redis cluster集群，JedisCluster带密码访问【解决当中各种坑】！ </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/localhost01" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_localhost01.jpg" alt="localhost01" title="localhost01">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/localhost01" target="_blank">
                                    冉椿林的博客 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/localhost01/article/details/71436801"
                                   target="_blank">
                                    05月09日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/localhost01/article/details/71436801#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    6 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">7377</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="70800985">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="new" href="http://blog.csdn.net/Reserved_person/article/details/70800985"
                                   target="_blank">
                                    Linux下安装MYSQL5.7 压缩包以及安装过程碰到报错处理 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        最新文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/Reserved_person" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_reserved_person.jpg" alt="Reserved_person"
                                         title="Reserved_person">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/Reserved_person" target="_blank">
                                    子知我非鱼 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="new" href="http://blog.csdn.net/Reserved_person/article/details/70800985"
                                   target="_blank">
                                    04月26日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">1334</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="70942016">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/shaoduo/article/details/70942016"
                                   target="_blank">
                                    Oracle 导入数据库dmp文件的几种方式 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/shaoduo" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_shaoduo.jpg" alt="shaoduo" title="shaoduo">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/shaoduo" target="_blank">
                                    shaoduo </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/shaoduo/article/details/70942016"
                                   target="_blank">
                                    04月28日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <dd class="common_num csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot"
                                   href="http://blog.csdn.net/shaoduo/article/details/70942016#comment_form"
                                   target="_blank">
                                    <svg>
                                        <path id="v0.2"
                                              d="M4,15V12H3a2,2,0,0,1-2-2V4A2,2,0,0,1,3,2H13a2,2,0,0,1,2,2v6a2,2,0,0,1-2,2H8ZM3,3A.94.94,0,0,0,2,4v6a.94.94,0,0,0,1,1H5v2l2.7-2H13a1.08,1.08,0,0,0,1-1V4a.94.94,0,0,0-1-1Z"
                                              transform="translate(-1 -2)"></path>
                                    </svg>
                                    1 </a>
                            </dd>
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">15242</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="72236085">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/qq13398600329/article/details/72236085"
                                   target="_blank">
                                    mybatis+mysql的批量更新 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/qq13398600329" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_qq13398600329.jpg" alt="qq13398600329"
                                         title="qq13398600329">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/qq13398600329" target="_blank">
                                    夜风断愁 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/qq13398600329/article/details/72236085"
                                   target="_blank">
                                    05月16日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">2640</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71941962">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/u013007459/article/details/71941962"
                                   target="_blank">
                                    Mysql数据库更新操作导致死锁问题 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/u013007459" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_u013007459.jpg" alt="u013007459" title="u013007459">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/u013007459" target="_blank">
                                    lost11-30 </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/u013007459/article/details/71941962"
                                   target="_blank">
                                    05月14日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">2428</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <ins data-revive-zoneid="298" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-5"></ins>
                <li class="clearfix" data-type="blog" data-id="71455701">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/arenn/article/details/71455701"
                                   target="_blank">
                                    UUID做主键，好还是不好？这是个问题。 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/arenn" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_arenn.jpg" alt="arenn" title="arenn">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/arenn" target="_blank">
                                    arenn </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/arenn/article/details/71455701"
                                   target="_blank">
                                    05月09日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">1080</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71157044">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="hot" href="http://blog.csdn.net/weeknd/article/details/71157044"
                                   target="_blank">
                                    oracle最强大函数之一decode函数的使用 </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        热门文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/weeknd" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_weeknd.jpg" alt="weeknd" title="weeknd">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/weeknd" target="_blank">
                                    weeknd </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="hot" href="http://blog.csdn.net/weeknd/article/details/71157044"
                                   target="_blank">
                                    05月04日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">12508</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="70888817">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                data-feed-show="false" data-dsm="post">
                                <a strategy="new" href="http://blog.csdn.net/zhang123456456/article/details/70888817"
                                   target="_blank">
                                    Nested loops、Hash join、Sort merge join（三种连接类型原理、使用要点） </a>
                            </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper">
                                    <i class="icon-close"></i>
                                    <div class="unin_reason_dialog">
                                        <h3>选择理由，精准屏蔽</h3>
                                        <ul>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">所属分类
                                                    <em>
                                                    </em> 不感兴趣</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank">推荐理由
                                                    <em>
                                                        最新文章 </em> 不准确</a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 旧闻、重复 </a>
                                            </li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462">
                                                <a target="_blank"> 内容质量差 </a>
                                            </li>
                                            <br>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt>
                                <a href="http://blog.csdn.net/zhang123456456" target="_blank" class="user_img">
                                    <img src="../../statics/dbimage/1_zhang123456456.jpg" alt="zhang123456456"
                                         title="zhang123456456">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="http://blog.csdn.net/zhang123456456" target="_blank">
                                    张冲andy </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                data-mod="popu_459">
                                <a strategy="new" href="http://blog.csdn.net/zhang123456456/article/details/70888817"
                                   target="_blank">
                                    04月28日 </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">243</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>

                <li class="tip_box clearfix" style="display: list-item;">
                    <button type="button" class="txt btn-feed-refresh">1分钟前阅读到这里，点击刷新</button>
                    <div class="read-here csdn-tracking-statistics" data-mod="popu_464" data-dsm="post">
                        <a target="_blank">刚刚阅读在这里，点击刷新</a>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71194677">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/qq1137623160/article/details/71194677"
                                                                                         target="_blank">java面试——Hibernate常见面试题</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/qq1137623160" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_qq1137623160.jpg" alt="闵浮龙" title="闵浮龙"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/qq1137623160" target="_blank">闵浮龙</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/qq1137623160/article/details/71194677"
                                                data-mod="popu_459" strategy="hot">05月05日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">7913</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71321911">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/u012475786/article/details/71321911"
                                                                                         target="_blank">学习NodeJS之数据库之Mysql安装篇</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/u012475786" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_u012475786.jpg" alt="Me_无名小卒" title="Me_无名小卒"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/u012475786" target="_blank">Me_无名小卒</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/u012475786/article/details/71321911"
                                                data-mod="popu_459" strategy="hot">05月07日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">1802</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="70917099">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/shi_yi_fei/article/details/70917099"
                                                                                         target="_blank">使用redis解决一些并发访问的问题</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/shi_yi_fei" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_shi_yi_fei.jpg" alt="铮亮不锈" title="铮亮不锈"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/shi_yi_fei" target="_blank">铮亮不锈</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/shi_yi_fei/article/details/70917099"
                                                data-mod="popu_459" strategy="hot">04月28日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">2487</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71212152">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/machihaoyu/article/details/71212152"
                                                                                         target="_blank">Oracle中IN参数个数超过1000的解决方案</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/machihaoyu" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_machihaoyu.jpg" alt="日本武汉" title="日本武汉"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/machihaoyu" target="_blank">日本武汉</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/machihaoyu/article/details/71212152"
                                                data-mod="popu_459" strategy="hot">05月05日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">781</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71500500">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="new"
                                                                                         href="http://blog.csdn.net/wangtaocsdn/article/details/71500500"
                                                                                         target="_blank">Java对对象按照其属性排序的两种方法</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>最新文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/wangtaocsdn" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_wangtaocsdn.jpg" alt="LIFE_R" title="LIFE_R"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/wangtaocsdn" target="_blank">LIFE_R</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/wangtaocsdn/article/details/71500500"
                                                data-mod="popu_459" strategy="new">05月09日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">3836</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71436558">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/Iloveyougirls/article/details/71436558"
                                                                                         target="_blank">laravel框架中的MySQL事务处理</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/Iloveyougirls" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_iloveyougirls.jpg" alt="iloveyougirls"
                                    title="iloveyougirls"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/Iloveyougirls"
                                                target="_blank">iloveyougirls</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/Iloveyougirls/article/details/71436558"
                                                data-mod="popu_459" strategy="hot">05月08日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">4576</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71597678">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/hexingen/article/details/71597678"
                                                                                         target="_blank">Android开发中SQLite存储时间和按日期函数查询</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/hexingen" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_hexingen.jpg" alt="新根" title="新根"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/hexingen" target="_blank">新根</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/hexingen/article/details/71597678"
                                                data-mod="popu_459" strategy="hot">05月10日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">3459</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="71302283">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/yooliee/article/details/71302283"
                                                                                         target="_blank">Python
                            实现淘宝秒杀</a></h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/yooliee" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_yooliee.jpg" alt="yooliee" title="yooliee"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/yooliee" target="_blank">yooliee</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/yooliee/article/details/71302283"
                                                data-mod="popu_459" strategy="hot">05月06日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">1357</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="72674080">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/u011275280/article/details/72674080"
                                                                                         target="_blank">在IDEA中连接数据库并生成实体类</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/u011275280" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_u011275280.jpg" alt="台风中的橘子" title="台风中的橘子"></a></dt>
                            <dd class="name"><a href="http://blog.csdn.net/u011275280" target="_blank">台风中的橘子</a></dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/u011275280/article/details/72674080"
                                                data-mod="popu_459" strategy="hot">05月24日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">1842</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
                <li class="clearfix" data-type="blog" data-id="72673371">
                    <div class="list_con">
                        <div class="title"><h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                               data-feed-show="false" data-dsm="post"><a strategy="hot"
                                                                                         href="http://blog.csdn.net/huoyuanshen/article/details/72673371"
                                                                                         target="_blank">zabbix监控tomcat和相关模板(导入直接可用),一个主机监控多个tomcat</a>
                        </h2>
                            <div class="close_tag">
                                <div class="unin_reason_dialog_wrapper"><i class="icon-close"></i>
                                    <div class="unin_reason_dialog"><h3>选择理由，精准屏蔽</h3>
                                        <ul class="csdn-tracking-statistics" data-poputype="feed" data-feed-show="false"
                                            data-dsm="post" data-mod="">
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>推荐理由 <em>热门文章</em>
                                                不准确 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                旧闻、重复 </a></li>
                                            <br>
                                            <li class="unin_item csdn-tracking-statistics" data-poputype="feed"
                                                data-feed-show="false" data-dsm="post" data-mod="popu_462"><a>
                                                内容质量差 </a></li>
                                            <br></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <dl class="list_userbar">
                            <dt><a href="http://blog.csdn.net/huoyuanshen" target="_blank" class="user_img"><img
                                    src="../../statics/dbimage/1_huoyuanshen.jpg" alt="huoyuanshen" title="huoyuanshen"></a>
                            </dt>
                            <dd class="name"><a href="http://blog.csdn.net/huoyuanshen" target="_blank">huoyuanshen</a>
                            </dd>
                            <dd class="time"><a target="_blank" class="csdn-tracking-statistics tracking-click"
                                                href="http://blog.csdn.net/huoyuanshen/article/details/72673371"
                                                data-mod="popu_459" strategy="hot">05月24日</a></dd>
                        </dl>
                        <div class="read_num"><p class="num">1707</p>
                            <p class="text">阅读量</p></div>
                    </div>
                </li>
            </ul>
            <div class="feed_loading" style="display: none;">
                <img src="../../statics/dbimage/feedLoading.gif" alt="I&#39;m loading" title="I&#39;m loading">
            </div>
        </main>

        <aside>
            <!-- 右侧轮播广告 begin -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="293" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-6"></ins>
            </div>
            <!-- 右侧轮播广告 end -->
            <div class="right_box">
                <h3 class="feed_new_tit">
                    <span class="line"></span><span class="txt">今日推荐</span>
                </h3>
                <div class="feed_company csdn-tracking-statistics" data-mod="popu_474" data-dsm="post">
                    <ul class="company_list">
                        <li>
                            <div class="img_box"><a
                                    href="http://blog.csdn.net/blockchain_lemon/article/details/79466131"
                                    target="_blank"><img src="../../statics/dbimage/354e2786e7c7d22860e4dc683ab0db5d.png"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/blockchain_lemon/article/details/79466131"
                                        target="_blank">区块链开发实战：如何从零打造一个去中心化应用</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://blog.csdn.net/blockchain_lemon/article/details/79492430"
                                    target="_blank"><img src="../../statics/dbimage/af8a709a82143a435c2505c1fe9acc97.png"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/blockchain_lemon/article/details/79492430"
                                        target="_blank">1分钟链圈 | 比特币跌穿10000美元</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/79488152"
                                    target="_blank"><img src="../../statics/dbimage/36a508d94ba797fc252b67261cf4fde9.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/79488152"
                                        target="_blank">李开复：十年后中国AI市场将占据半壁江山，我已退掉</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/78302688"
                                    target="_blank"><img src="../../statics/dbimage/633575ce3e5cdf77ff89a22e747b5bb3.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/78302688"
                                        target="_blank">数据依赖症：当今AI领域的核心风险</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://blog.csdn.net/csdnnews/article/details/79492272"
                                                    target="_blank"><img
                                    src="../../statics/dbimage/78796413571a6b082225072853cf3839.jpg" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/csdnnews/article/details/79492272" target="_blank">区块链技术人才严重不足，平均薪资
                                    2.58 万</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://blog.csdn.net/csdnnews/article/details/79492276"
                                                    target="_blank"><img
                                    src="../../statics/dbimage/3248274de2648727b1a677771acf4081.jpg" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/csdnnews/article/details/79492276" target="_blank">弃用微软
                                    C++ 编译器，Win 版 Chrome</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://blog.csdn.net/csdnsevenn/article/details/79154295"
                                                    target="_blank"><img
                                    src="../../statics/dbimage/80f783d3a86393bd2bfa091c9c9d9323.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/csdnsevenn/article/details/79154295" target="_blank">职场泥潭
                                    | 这样的IT公司绝对不宜久留</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://blog.csdn.net/csdnsevenn/article/details/79506761"
                                                    target="_blank"><img
                                    src="../../statics/dbimage/62105f7c32ace884d10dbf5d38003607.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/csdnsevenn/article/details/79506761" target="_blank">你以为技术圈只有女汉子
                                    我们用颜值和才艺征服你</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://gitbook.cn/gitchat/activity/5a73da727648740c4c24ada0?utm_source=sy18030901"
                                    target="_blank"><img src="../../statics/dbimage/70d8dfd3ba8c89236c747f181ea71b16.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://gitbook.cn/gitchat/activity/5a73da727648740c4c24ada0?utm_source=sy18030901"
                                        target="_blank">【互联网金融】通用架构师应该如何把控迁移技术方案？</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://gitbook.cn/gitchat/geekbook/5a9cb0c0a80c047e76c23c4f?utm_source=sy18030801"
                                    target="_blank"><img src="../../statics/dbimage/a7f37fbad97f3cdb0ee36c0fcd9628ae.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a9cb0c0a80c047e76c23c4f?utm_source=sy18030801"
                                        target="_blank">算法图解：像小说一样有趣的算法入门书</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="https://edu.csdn.net/topic/php115?utm_source=home4"
                                                    target="_blank"><img
                                    src="../../statics/dbimage/72b5210ece63547c5b2ebb64df1efbc8.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="https://edu.csdn.net/topic/php115?utm_source=home4"
                                                            target="_blank">为什么说PHP仍是一匹黑马？</a></h3>
                                <p class="txt oneline">为什么说PHP仍是一匹黑马？</p>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="https://edu.csdn.net/course/detail/5458?utm_source=home4"
                                                    target="_blank"><img
                                    src="../../statics/dbimage/2855af910af5cfbfd0eef8ccee8740cb.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="https://edu.csdn.net/course/detail/5458?utm_source=home4" target="_blank">数据赋能背后的黑科技</a>
                                </h3>
                                <p class="txt oneline">如今的人工智能是赋予机器反应和适应能力以优化产出。</p>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://qualcomm.csdn.net/" target="_blank"><img
                                    src="../../statics/dbimage/481f31224e31a114adbf35cbdde4b24b.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://qualcomm.csdn.net/" target="_blank">详解骁龙X24：何止是快，是意义非凡</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://ibmuniversity.csdn.net/" target="_blank"><img
                                    src="../../statics/dbimage/fef6fa64e5d526bc9bc9e1522b9d020d.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://ibmuniversity.csdn.net/" target="_blank">人工智能、机器学习和认知计算入门指南</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://10086id.csdn.net/" target="_blank"><img
                                    src="../../statics/dbimage/9b4ea6a8403891f274d3f8b714658744.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://10086id.csdn.net/" target="_blank">与其花大钱做营销
                                    不如用1.5秒的改变留住用户</a></h3>
                            </div>
                        </li>
                    </ul>
                    <div class="other_company clearfix">
                        <a href="http://baidudeveloper.csdn.net/" target="_blank">百度技术专区</a>
                        <a href="http://intel.csdn.net/" target="_blank">英特尔开发者专区</a>
                        <a href="http://aws.csdn.net/" target="_blank">AWS中文技术专区</a>
                        <a href="http://powerlinux.csdn.net/" target="_blank">PowerLinux技术社区</a>
                        <a href="http://vuforia.csdn.net/" target="_blank">Vuforia中文社区</a>
                        <a href="http://primeton.csdn.net/" target="_blank">普元云计算</a>
                        <a href="http://huawei.csdn.net/" target="_blank">华为云计算</a>
                        <a href="http://g.csdn.net/5271587" target="_blank">腾讯云技术社区</a>
                    </div>
                </div>
            </div>
            <div class="right_box csdn-tracking-statistics" data-mod="popu_470" data-dsm="post">
                <div class="feed_viewpoint" style="background-image: url(/images/viewpoint_bg.png)">
                    <a href="http://blog.csdn.net/pk.html?id=10570" target="_blank">
                        <img src="../../statics/dbimage/mod_viewpoint.png" class="viewpoint_img" alt="csdn_viewpoint"
                             title="csdn_viewpoint">
                        <h3>激光雷达与摄像头，未来哪种会成为自动驾驶的核心传感器呢？</h3>
                    </a>
                </div>
                <div class="feed_vote">
                    <dl>
                        <dt>激光雷达</dt>
                        <dd>75%</dd>
                    </dl>
                    <a type="button" class="btn btn-border-red btn-lg30" href="http://blog.csdn.net/pk.html?id=10570"
                       target="_blank">投票参与</a>
                    <dl>
                        <dt>摄像头</dt>
                        <dd>25%</dd>
                    </dl>
                </div>
                <ul class="feed_new_arrlist">
                    <li class="clearfix">
                        <span class="arr"><i class="icon CSDN_iconfont Feed-arrowup"></i></span>
                        <span class="txt"><a href="http://blog.csdn.net/pk.html?id=10568" target="_blank">又到一年跳槽季，你更看重什么样的公司？</a></span>
                    </li>
                    <li class="clearfix">
                        <span class="arr"><i class="icon CSDN_iconfont Feed-arrowup"></i></span>
                        <span class="txt"><a href="http://blog.csdn.net/pk.html?id=10558" target="_blank">基于手机SIM卡的一键登录身份验证将颠覆传统短信验证，你认同吗？</a></span>
                    </li>
                </ul>
            </div>
            <div class="right_box magazine_box">
                <h3 class="feed_new_tit">
                    <span class="txt">《程序员》杂志</span>
                    <div class="opt-box">
                        <a class="carousel-control" href="https://www.csdn.net/nav/db#magzCarousel" role="button"
                           data-slide="prev">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zm3-11.5L9.5 3l-5 5 5 5 1.5-1.5L7.5 8 11 4.5z"
                                      fill-rule="evenodd"></path>
                            </svg>
                        </a>
                        <a class="carousel-control" href="https://www.csdn.net/nav/db#magzCarousel" role="button"
                           data-slide="next">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zM5 4.5L8.5 8 5 11.5 6.5 13l5-5-5-5L5 4.5z"
                                      fill-rule="evenodd"></path>
                            </svg>
                        </a>
                    </div>
                    <a href="http://www.programmer.com.cn/" class="how_to" target="_blank">我要订阅</a>
                </h3>
                <div class="carousel_magazine_box slide" id="magzCarousel" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="feed_devmagazine_box item carousel-item clearfix active left">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a3c7879902f0f2223e2526d?utm_source=sy18030802"
                                   target="_blank">
                                    <img src="../../statics/dbimage/09a514f3769fffdc701c64cf58b74e6a.png"
                                         alt="AI 工程师职业指南【限时特惠中】">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a3c7879902f0f2223e2526d?utm_source=sy18030802"
                                        target="_blank">AI 工程师职业指南【限时特惠中】</a></h3>
                                <p class="txt">我们请来 AI 技术一线的专家，请他们从实践的角度来解析 AI 领域各技术岗位的合格工程师都是怎样炼成的。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix next left">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a5c5e6a2be8c361148234e6?utm_source=sy18030102"
                                   target="_blank">
                                    <img src="../../statics/dbimage/e1dfe3f73feaf3884fa39c99d412c587.png" alt="人工智能学术前沿">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a5c5e6a2be8c361148234e6?utm_source=sy18030102"
                                        target="_blank">人工智能学术前沿</a></h3>
                                <p class="txt">这个栏目将帮助大家筛选出人工智能和机器学习领域，每年各大顶级会议和研讨班上有意思的论文，解读出论文的核心思想，为精读提供阅读指导。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a5eb07bdff55721bc1dcaee?utm_source=sy18030101"
                                   target="_blank">
                                    <img src="../../statics/dbimage/bd25fdc660dd7173d7619b5141c852fc.png" alt="深入浅出区块链">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a5eb07bdff55721bc1dcaee?utm_source=sy18030101"
                                        target="_blank">深入浅出区块链</a></h3>
                                <p class="txt">本期我们梳理了2017年区块链发展现状，从关键技术原理与实际应用出发，带你深入浅出探索区块链技术的方方面面。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a7fe8eb194d786ae0b18956?utm_source=sy18022802"
                                   target="_blank">
                                    <img src="../../statics/dbimage/5498c4fa03b53244787741b4402c706e.png"
                                         alt="《 程序员 2017 精华本 》         【新书上架 · 全年精粹尽览】">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a7fe8eb194d786ae0b18956?utm_source=sy18022802"
                                        target="_blank">《 程序员 2017 精华本 》 【新书上架 · 全年精粹尽览】</a></h3>
                                <p class="txt">16个主题，200余篇文章，180万字——不容错过的前沿技术、工具尽在其中，亲历者领域案例剖析</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 右侧图片广告 -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="294" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-7"></ins>
            </div>
            <div class="fixed24" style="left: 966.5px;">
                <div class="right_box">
                    <h3 class="feed_new_tit">
                        <span class="line"></span><span class="txt">活动日历</span>
                    </h3>
                    <div class="feed_activiey_calendar">
                        <ul class="csdn-tracking-statistics" data-mod="popu_593" data-dsm="post">
                            <li>
                                <div class="date">
                                    <strong>14</strong>
                                    <p class="month">03月</p>
                                    <p></p>
                                </div>
                                <div class="content">
                                    <h3 class="activity_name"><a
                                            href="http://huiyi.csdn.net/activity/product/goods_list?project_id=3759"
                                            target="_blank">2018 TOKENSKY区块链大会</a></h3>
                                    <p class="status">首尔</p>
                                </div>
                            </li>
                            <li>
                                <div class="date">
                                    <strong>20</strong>
                                    <p class="month">03月</p>
                                    <p></p>
                                </div>
                                <div class="content">
                                    <h3 class="activity_name"><a href="https://edu.csdn.net/huiyiCourse/detail/664"
                                                                 target="_blank">TreeOS 结合 IBM IoT 云平台教你如何自动写物联网代码</a>
                                    </h3>
                                    <p class="status">在线</p>
                                </div>
                            </li>
                            <li>
                                <div class="date">
                                    <strong>24</strong>
                                    <p class="month">03月</p>
                                    <p></p>
                                </div>
                                <div class="content">
                                    <h3 class="activity_name"><a
                                            href="http://huiyi.csdn.net/activity/product/goods_list?project_id=3762"
                                            target="_blank">IBM 开发者物联网沙龙</a></h3>
                                    <p class="status">北京·中关村软件园</p>
                                </div>
                            </li>
                            <li>
                                <div class="date">
                                    <strong>30</strong>
                                    <p class="month">03月</p>
                                    <p></p>
                                </div>
                                <div class="content">
                                    <h3 class="activity_name"><a href="http://bss.csdn.net/m/topic/blockchain2018"
                                                                 target="_blank">2018 中国区块链技术暨应用大会</a></h3>
                                    <p class="status">北京</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="persion_article">
                    <div class="right_box footer_box csdn-tracking-statistics" data-mod="popu_475" data-dsm="post"><h3
                            class="feed_new_tit"><span class="line"></span><span class="txt">联系我们</span></h3>
                        <div class="contact-box">
                            <div class="img-box"><img src="../../statics/dbimage/csdn_cs_qr.png" alt="客服"></div>
                            <div class="contact-info"><h4>请扫描二维码联系客服</h4>
                                <p>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2.167 2h11.666C14.478 2 15 2.576 15 3.286v9.428c0 .71-.522 1.286-1.167 1.286H2.167C1.522 14 1 13.424 1 12.714V3.286C1 2.576 1.522 2 2.167 2zm-.164 3v1L8 10l6-4V5L8 9 2.003 5z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="mailto:webmaster@csdn.net" target="_blank"><span class="txt">webmaster@csdn.net</span></a>
                                </p>
                                <p>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.999 13.355a.603.603 0 0 1-.609.645H1.61a.603.603 0 0 1-.609-.645l.139-1.47c.021-.355.25-.845.51-1.088 0 0 3.107-2.827 3.343-2.909 0 0-.029-2.46 1.2-2.46h3.635c1.112 0 1.202 2.469 1.202 2.469l3.32 2.9c.26.243.489.733.51 1.088l.139 1.47zM7 10a1 1 0 0 0 0 2h2a1 1 0 0 0 0-2H7zm7.806-5.674c.105.135.191.384.19.554l-.003 2.811c0 .17-.133.26-.295.2l-2.462-.999a.478.478 0 0 1-.296-.416V5.445c0-2.07-7.878-2.225-7.878 0v1.21c0 .17-.135.352-.3.404L1.3 7.904c-.165.052-.3-.044-.3-.213V4.88c0-.17.086-.42.191-.554C1.191 4.326 2.131 2 8 2s6.807 2.326 6.807 2.326z"
                                              fill="#B3B3B3"></path>
                                    </svg>
                                    <span class="txt"> 400-660-0108</span></p>
                                <p>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.496 10.35c-.301-1.705-1.565-2.822-1.565-2.822.18-1.548-.481-1.823-.481-1.823C12.31.915 8.089.998 8 1 7.91.998 3.689.915 3.55 5.705c0 0-.662.275-.481 1.823 0 0-1.264 1.117-1.565 2.822 0 0-.16 2.882 1.445.353 0 0 .36.96 1.022 1.823 0 0-1.183.392-1.083 1.412 0 0-.04 1.136 2.527 1.058 0 0 1.805-.137 2.347-.882h.476c.542.745 2.347.882 2.347.882 2.566.078 2.527-1.058 2.527-1.058.1-1.02-1.083-1.412-1.083-1.412a7.986 7.986 0 0 0 1.022-1.823c1.604 2.529 1.445-.353 1.445-.353z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2431299880&amp;site=qq&amp;menu=yes"
                                       target="_blank"><span class="txt">QQ客服</span></a>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M7.325 13.965a6.5 6.5 0 1 1 7.175-6.4C14.467 11.677 11.346 15 7.5 15c-.514 0-1.015-.06-1.498-.172.488-.178.922-.48 1.323-.863zM4 7.5a4 4 0 1 0 8 0 .5.5 0 1 0-1 0 3 3 0 1 1-6 0 .5.5 0 0 0-1 0z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="http://bbs.csdn.net/forums/Service" target="_blank"><span
                                            class="txt">客服论坛</span></a></p>
                            </div>
                        </div>
                        <div class="bg-gray">
                            <div class="feed_copyright">
                                <p><a class="right-dotte" href="https://www.csdn.net/company/about.html"
                                      target="_blank">关于</a><a href="https://www.csdn.net/company/recruit.html"
                                                               target="_blank" class="right-dotte">招聘</a><a
                                        href="https://www.csdn.net/company/marketing.html" target="_blank"
                                        class="right-dotte">广告服务</a> <a href="https://zn.baidu.com/" target="_blank"
                                                                        class="footer_baidu">
                                    <svg width="13" height="14" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8.392 7.013c1.014 1.454 2.753 2.8 2.753 2.8s1.303 1.017.47 2.98c-.833 1.962-3.876.942-3.876.942s-1.122-.36-2.424-.072c-1.303.291-2.426.181-2.426.181s-1.523.037-1.957-1.888c-.434-1.927 1.52-2.982 1.666-3.161.145-.183 1.159-.873 1.81-1.963.653-1.09 2.608-1.962 3.984.181zm1.23 5.706V9.346H8.64v2.534h-.937s-.3-.044-.356-.285V9.33l-.925.015v2.518s.042.627.925.855h2.277zm-3.685.013V7.951l-.896-.014v1.295H3.987s-1.054.086-1.422 1.28c-.129.798.114 1.266.156 1.368.043.099.383.682 1.238.852h1.978zm-2.433-1.45c-.087-.286.013-.613.057-.741.042-.128.228-.427.61-.54h.855v1.948h-.797s-.555-.029-.725-.668zm6.877-8.775c-.143.909-.865 2.108-1.99 1.962-1.121-.144-1.375-1.16-1.267-2.179C7.214 1.458 8.21.18 9.007.364c.796.18 1.52 1.235 1.374 2.143zm-4.09-.345c0 1.197-.68 2.164-1.52 2.164S3.25 3.36 3.25 2.162C3.25.967 3.932 0 4.77 0c.842 0 1.52.967 1.52 2.162zm4.854 2.09c1.34 0 1.701 1.309 1.701 1.743 0 .438.182 2.29-1.485 2.326-1.667.037-1.737-1.126-1.737-1.96 0-.874.179-2.11 1.52-2.11zm-7.93.581c.045.398.253 2.217-1.27 2.544C.427 7.704-.14 5.947.028 5.124c0 0 .18-1.78 1.412-1.89.98-.085 1.7.986 1.774 1.6z"
                                              fill="#999" fill-rule="evenodd"></path>
                                    </svg>
                                    <em> 百度</em></a></p>
                                <p class="fz12">©1999-2018 CSDN版权所有</p>
                                <p class="fz12"><a href="http://www.miibeian.gov.cn/" target="_blank" class="ml14">京ICP证09002463号</a>
                                </p></div>
                            <div class="allow-info-box"><p><a
                                    href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001032100010"
                                    target="_blank"><span>经营性网站备案信息</span></a></p>
                                <p><a href="http://www.cyberpolice.cn/" target="_blank"><span>网络110报警服务</span></a></p>
                                <p><a href="http://www.12377.cn/" target="_blank"><span>中国互联网举报中心</span></a></p>
                                <p><a href="http://www.bjjubao.org/" target="_blank"><span>北京互联网违法和不良信息举报中心</span></a>
                                </p></div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
    </div>
</div>
<!--<script src="./dbjs/bootstrap.min.js" type="text/javascript"></script>

<script src="./dbjs/async-1.0.1.js"></script>

<script src="./dbjs/tracking-1.0.1.js" type="text/javascript"></script>-->
<script language="javascript" type="text/javascript">
    // Traffic Stats of the entire Web site By baidu
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?6bcd52f51e9b3dce32bec4a3997715ac";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    // Traffic Stats of the entire Web site By baidu end
</script>

<!--<script src="./dbjs/publib_footer-1.0.3.js" data-isfootertrack="false"></script>-->
<link rel="stylesheet" type="text/css" href="../../statics/dbcss/pub_footer_1.0.3.css"><!--
<script src="./dbjs/csdn_feed.min.js" type="text/javascript"></script>
<script src="./dbjs/ab.plus.js"></script>-->
<script>
    adhoc('init', {
        appKey: 'ADHOC_3f25bcb4-f154-4b7c-8a82-f79b81816578'
    })
</script>
<!--<script src="./dbjs/goTop-v1.0.min.js"></script>-->

<div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;" type="text"
                                                                    value="" id="focus_retriever" readonly="true"></div>
<div class="meau-gotop-box" style="right: 8px; bottom: 40px; z-index: 110;"><a href="https://www.csdn.net/nav/db#"
                                                                               id="backtop" class="btn-meau"
                                                                               title="返回顶部">
    <svg xmlns="http://www.w3.org/2000/svg" width="19" height="12">
        <path d="M9.314 0l9.313 9.314-2.12 2.121-7.193-7.192-7.193 7.192L0 9.314z" fill="#FFF"
              fill-rule="evenodd"></path>
    </svg>
</a></div>
</body>
</html>