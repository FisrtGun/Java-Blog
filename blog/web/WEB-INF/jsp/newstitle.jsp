<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/12
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!-- saved from url=(0036)https://www.csdn.net/nav/newarticles -->
<html lang="en" style=""
      class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="referrer" content="always">
    <meta name="msvalidate.01" content="3189512127C34C46BC74BED5852D45E4">
    <title>最新文章-FG</title>
    <link ref="canonical" href="https://www.csdn.net/nav/newarticles">
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <link rel="stylesheet" href="../../statics/css/content_toolbar.css">
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../statics/css/avatar.css">
    <link href="../../statics/css/csdn_feed.css" rel="stylesheet">
    <style type="text/css"></style>
    <style type="text/css"></style>
    <style type="text/css"></style>
    <link rel="stylesheet" type="text/css" href="../../statics/css/goTop.min.css">
    <script src="../../statics/css/get_ads.php" type="text/javascript"></script>
</head>
<body data-category="newarticles" data-host_type="www">
<svg aria-hidden="true" style="position: absolute; width: 0px; height: 0px; overflow: hidden;"></svg>
<jsp:include page="common.jsp" flush="true"></jsp:include>
<div class="container clearfix">
    <nav id="nav" class="clearfix">
        <div class="clearfix">
            <div class="nav_com">
                <ul>
                    <li class=""><a href="/mainController/index">推荐</a></li>
                    <li class="active"><a href="/mainController/index">最新文章</a></li>
                    <li class=""><a href="/mainController/index">资讯</a></li>
                    <li class=""><a href="/mainController/index">人工智能</a></li>
                    <li class=""><a href="/mainController/index">云计算/大数据</a></li>
                    <li class=""><a href="/mainController/index">区块链</a></li>
                    <li class=""><a href="/mainController/index">数据库</a></li>
                    <li class=""><a href="/mainController/index">程序人生</a></li>
                    <li class=""><a href="/mainController/index">游戏开发</a></li>
                    <li class=""><a href="/mainController/index">研发管理</a></li>
                    <li class=""><a href="/mainController/index">前端</a></li>
                    <li class=""><a href="/mainController/index">移动开发</a></li>
                    <li class=""><a href="/mainController/index">物联网</a></li>
                    <li class=""><a href="/mainController/index">运维</a></li>
                    <li class=""><a href="/mainController/index">计算机基础</a></li>
                    <li class=""><a href="/mainController/index">编程语言</a></li>
                    <li class=""><a href="/mainController/index">架构</a></li>
                    <li class=""><a href="/mainController/index">音视频开发</a></li>
                    <li class=""><a href="/mainController/index">安全</a></li>
                    <li class=""><a href="other">其他</a></li>
                </ul>

            </div>
        </div>
    </nav>
    <div class="fixed_content">
        <!--头部banner广告 begin-->
        <div class="banner-ad-box">
            <div class="J_adv" data-view="true" data-mod="ad_popu_366" data-mtp="2" data-order="719"
                 data-con="ad_content_3535" style="width: 760px; height: 90px;">
                <div style="line-height:0px;"><a href="http://edu.csdn.net/topic/ai112?utm_source=home4">
                    <img width="760" height="90" src="../../statics/newsImages/201802111150492024.png"></a>
                </div>
            </div>
            <div class="J_adv" data-view="true" data-mod="ad_popu_367" data-mtp="2" data-order="719"
                 data-con="ad_content_3570" style="width: 300px; height: 90px;">
                <div style="line-height:0px;"><a
                        href="https://edu.csdn.net/member?utm_source=button300..90"><img
                        width="300" height="90" src="../../statics/newsImages/201803011431321228.png"></a>
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
            <div class="feed-fix-box">
                <div class="scroll-fixbar clearfix csdn-tracking-statistics" data-mod="popu_463" data-dsm="post"
                     style="left: 0px; width: 760px;">
                    <a class="txt txt-refrash-new">您有新的推荐内容，点击查看</a>
                    <button class="btn btn-nobg-noborder btn-nobg-noborder btn-close-fixbar">
                        <i class="icon-close"></i>
                    </button>
                </div>
            </div>
            <ul class="feedlist_mod" id="feedlist_id" shown-offset="1520820244000000">
                <c:forEach items="${newsList}" var="newsList" varStatus="s">
                    <li class="clearfix" data-type="blog" data-id="79523301">
                        <div class="list_con">
                            <div class="title">
                                <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                    data-feed-show="true" data-dsm="post">
                                    <a strategy="newarticles" href="/personal/personblog?nid=${newsList.nid}">
                                            ${newsList.ntitle} </a>
                                </h2>
                            </div>
                            <dl class="list_userbar">
                                <dt>
                                    <a href="http://blog.csdn.net/nodeman" class="user_img">
                                        <img src="../../statics/newsImages/1_nodeman.jpg" alt="nodeman" title="nodeman">
                                    </a>
                                </dt>
                                <dd class="name">
                                    <a href="http://blog.csdn.net/nodeman">
                                            ${newsList.nauthor} </a>
                                </dd>
                                <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                    data-mod="popu_459">
                                    <a strategy="newarticles"
                                       href="http://blog.csdn.net/nodeman/article/details/79523301"
                                    >
                                        <fmt:formatDate value="${newsList.ncreateTime}" type="date" pattern="MM月dd日"/>
                                    </a>
                                </dd>
                                <!--新增评论数+阅读 begin-->
                                <div class="read_num">
                                    <p class="num">${newsList.nview}</p>
                                    <p class="text">阅读量</p>
                                </div>
                                <!--新增评论数+阅读 end-->
                            </dl>
                            <!--阅读 begin-->
                            <!--阅读 end-->
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <div class="feed_loading" style="display: none;">
                <img src="../../statics/newsImages/feedLoading.gif" alt="I&#39;m loading" title="I&#39;m loading">
            </div>
        </main>

        <aside>
            <!-- 右侧轮播广告 begin -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="368" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-6"></ins>
            </div>
            <!-- 右侧轮播广告 end -->
            <div class="right_box">
                <h3 class="feed_new_tit">
                    <span class="line"></span><span class="txt">今日推荐</span>
                </h3>
                <div class="feed_company csdn-tracking-statistics" data-mod="popu_474" data-dsm="post">
                    <ul class="company_list">
                        <c:forEach items="${groom}" var="groom" varStatus="s">
                            <li>
                                <div class="img_box"><a href="http://mp.weixin.qq.com/s/ds82pMExGu9qjwk9Mx5YEQ"
                                                        target="_blank"><img src="${groom.npicture}" alt=""></a></div>
                                <div class="content">
                                    <h3 class="company_name"><a href="http://mp.weixin.qq.com/s/ds82pMExGu9qjwk9Mx5YEQ"
                                                                target="_blank">${groom.ntitle}</a></h3>
                                    <p class="txt oneline">${groom.nauthor}</p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="other_company clearfix">
                        <a href="http://baidudeveloper.csdn.net/">百度技术专区</a>
                        <a href="http://intel.csdn.net/">英特尔开发者专区</a>
                        <a href="http://aws.csdn.net/">AWS中文技术专区</a>
                        <a href="http://powerlinux.csdn.net/">PowerLinux技术社区</a>
                        <a href="http://vuforia.csdn.net/">Vuforia中文社区</a>
                        <a href="http://primeton.csdn.net/">普元云计算</a>
                        <a href="http://huawei.csdn.net/">华为云计算</a>
                        <a href="http://g.csdn.net/5271587">腾讯云技术社区</a>
                    </div>
                </div>
            </div>
            <div class="right_box csdn-tracking-statistics" data-mod="popu_470" data-dsm="post">
                <div class="feed_viewpoint"
                     style="background-image: url(../../statics/newsImages/633575ce3e5cdf77ff89a22e747b5bb3.jpg)">
                    <a href="http://blog.csdn.net/pk.html?id=10570">
                        <img src="../../statics/newsImages/mod_viewpoint.png" class="viewpoint_img" alt="csdn_viewpoint"
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
                    >投票参与</a>
                    <dl>
                        <dt>摄像头</dt>
                        <dd>25%</dd>
                    </dl>
                </div>
                <ul class="feed_new_arrlist">
                    <li class="clearfix">
                        <span class="arr"><i class="icon CSDN_iconfont Feed-arrowup"></i></span>
                        <span class="txt"><a href="http://blog.csdn.net/pk.html?id=10568">又到一年跳槽季，你更看重什么样的公司？</a></span>
                    </li>
                    <li class="clearfix">
                        <span class="arr"><i class="icon CSDN_iconfont Feed-arrowup"></i></span>
                        <span class="txt"><a href="http://blog.csdn.net/pk.html?id=10558">基于手机SIM卡的一键登录身份验证将颠覆传统短信验证，你认同吗？</a></span>
                    </li>
                </ul>
            </div>
            <div class="right_box magazine_box">
                <h3 class="feed_new_tit">
                    <span class="txt">《程序员》杂志</span>
                    <div class="opt-box">
                        <a class="carousel-control" href="https://www.csdn.net/nav/newarticles#magzCarousel"
                           role="button" data-slide="prev">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zm3-11.5L9.5 3l-5 5 5 5 1.5-1.5L7.5 8 11 4.5z"
                                      fill-rule="evenodd"></path>
                            </svg>
                        </a>
                        <a class="carousel-control" href="https://www.csdn.net/nav/newarticles#magzCarousel"
                           role="button" data-slide="next">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zM5 4.5L8.5 8 5 11.5 6.5 13l5-5-5-5L5 4.5z"
                                      fill-rule="evenodd"></path>
                            </svg>
                        </a>
                    </div>
                    <a href="http://www.programmer.com.cn/" class="how_to">我要订阅</a>
                </h3>
                <div class="carousel_magazine_box slide" id="magzCarousel" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="feed_devmagazine_box item carousel-item clearfix active">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a3c7879902f0f2223e2526d?utm_source=sy18030802"
                                >
                                    <img src="../../statics/newsImages/09a514f3769fffdc701c64cf58b74e6a.png"
                                         alt="AI 工程师职业指南【限时特惠中】">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a3c7879902f0f2223e2526d?utm_source=sy18030802"
                                >AI 工程师职业指南【限时特惠中】</a></h3>
                                <p class="txt">我们请来 AI 技术一线的专家，请他们从实践的角度来解析 AI 领域各技术岗位的合格工程师都是怎样炼成的。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a5c5e6a2be8c361148234e6?utm_source=sy18030102"
                                >
                                    <img src="../../statics/newsImages/e1dfe3f73feaf3884fa39c99d412c587.png"
                                         alt="人工智能学术前沿">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a5c5e6a2be8c361148234e6?utm_source=sy18030102"
                                >人工智能学术前沿</a></h3>
                                <p class="txt">这个栏目将帮助大家筛选出人工智能和机器学习领域，每年各大顶级会议和研讨班上有意思的论文，解读出论文的核心思想，为精读提供阅读指导。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a5eb07bdff55721bc1dcaee?utm_source=sy18030101"
                                >
                                    <img src="../../statics/newsImages/bd25fdc660dd7173d7619b5141c852fc.png"
                                         alt="深入浅出区块链">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a5eb07bdff55721bc1dcaee?utm_source=sy18030101"
                                >深入浅出区块链</a></h3>
                                <p class="txt">本期我们梳理了2017年区块链发展现状，从关键技术原理与实际应用出发，带你深入浅出探索区块链技术的方方面面。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a7fe8eb194d786ae0b18956?utm_source=sy18022802"
                                >
                                    <img src="../../statics/newsImages/5498c4fa03b53244787741b4402c706e.png"
                                         alt="《 程序员 2017 精华本 》         【新书上架 · 全年精粹尽览】">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a7fe8eb194d786ae0b18956?utm_source=sy18022802"
                                >《 程序员 2017 精华本 》 【新书上架 · 全年精粹尽览】</a></h3>
                                <p class="txt">16个主题，200余篇文章，180万字——不容错过的前沿技术、工具尽在其中，亲历者领域案例剖析</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 右侧图片广告 -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="369" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-7"></ins>
            </div>
            <div class="fixed24" style="left: 963.5px;">
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
                                    >2018 TOKENSKY区块链大会</a></h3>
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
                                    >TreeOS 结合 IBM IoT 云平台教你如何自动写物联网代码</a>
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
                                    >IBM 开发者物联网沙龙</a></h3>
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
                                    >2018 中国区块链技术暨应用大会</a></h3>
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
                            <div class="img-box"><img src="../../statics/newsImages/csdn_cs_qr.png" alt="客服"></div>
                            <div class="contact-info"><h4>请扫描二维码联系客服</h4>
                                <p>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2.167 2h11.666C14.478 2 15 2.576 15 3.286v9.428c0 .71-.522 1.286-1.167 1.286H2.167C1.522 14 1 13.424 1 12.714V3.286C1 2.576 1.522 2 2.167 2zm-.164 3v1L8 10l6-4V5L8 9 2.003 5z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="mailto:webmaster@csdn.net"><span class="txt">webmaster@csdn.net</span></a>
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
                                    ><span class="txt">QQ客服</span></a>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M7.325 13.965a6.5 6.5 0 1 1 7.175-6.4C14.467 11.677 11.346 15 7.5 15c-.514 0-1.015-.06-1.498-.172.488-.178.922-.48 1.323-.863zM4 7.5a4 4 0 1 0 8 0 .5.5 0 1 0-1 0 3 3 0 1 1-6 0 .5.5 0 0 0-1 0z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="http://bbs.csdn.net/forums/Service"><span
                                            class="txt">客服论坛</span></a></p>
                            </div>
                        </div>
                        <div class="bg-gray">
                            <div class="feed_copyright">
                                <p><a class="right-dotte" href="https://www.csdn.net/company/about.html"
                                >关于</a><a href="https://www.csdn.net/company/recruit.html"
                                          class="right-dotte">招聘</a><a
                                        href="https://www.csdn.net/company/marketing.html"
                                        class="right-dotte">广告服务</a> <a href="https://zn.baidu.com/"
                                                                        class="footer_baidu">
                                    <svg width="13" height="14" xmlns="http://www.w3.org/2000/svg"></svg>
                                    <em> 百度</em></a></p>
                                <p class="fz12">©1999-2018 CSDN版权所有</p>
                                <p class="fz12"><a href="http://www.miibeian.gov.cn/" class="ml14">京ICP证09002463号</a>
                                </p></div>
                            <div class="allow-info-box"><p><a
                                    href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001032100010"
                            ><span>经营性网站备案信息</span></a></p>
                                <p><a href="http://www.cyberpolice.cn/"><span>网络110报警服务</span></a></p>
                                <p><a href="http://www.12377.cn/"><span>中国互联网举报中心</span></a></p>
                                <p><a href="http://www.bjjubao.org/"><span>北京互联网违法和不良信息举报中心</span></a>
                                </p></div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
    </div>
</div>

<div style="position:fixed; top:0; left:0; overflow:hidden;">
    <input style="position:absolute; left:-300px;" type="text" value="" id="focus_retriever" readonly="true"></div>
<div class="meau-gotop-box" style="right: 8px; bottom: 40px; z-index: 110;"><a
        href="https://www.csdn.net/nav/newarticles#" id="backtop" class="btn-meau" title="返回顶部">
    <svg xmlns="http://www.w3.org/2000/svg" width="19" height="12">
        <path d="M9.314 0l9.313 9.314-2.12 2.121-7.193-7.192-7.193 7.192L0 9.314z" fill="#FFF"
              fill-rule="evenodd"></path>
    </svg>
</a></div>
</body>
</html>
