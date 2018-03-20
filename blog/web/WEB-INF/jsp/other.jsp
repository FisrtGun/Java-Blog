<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2018年3月9日,0009
Time: 21:58
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <script src='../../statics/js/tingyun-rum.js' type='text/javascript'></script>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="referrer" content="always">
    <meta name="msvalidate.01" content="3189512127C34C46BC74BED5852D45E4"/>
    <title>其他-CSDN</title>
    <link ref="canonical" href="https://www.csdn.net/nav/other">
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <script src="../../statics/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../../statics/js/tracking-1.0.2.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../statics/js/main_flume.js"></script>
    <link rel="stylesheet" href="../../statics/css/content_toolbar.css">
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../statics/css/avatar.css">
    <link href='../../statics/css/csdn_feed.css' rel='stylesheet'/>
    <script src='../../statics/js/modernizr.js' type='text/javascript'></script>
</head>
<body data-category="other" data-host_type="www">
<jsp:include page="common.jsp" flush="true"></jsp:include>
<div class="container clearfix">
    <nav id="nav" class="clearfix">
        <div class="clearfix">
            <div class="nav_com">
                <ul>
                    <li class="active"><a href="index">推荐</a></li>
                    <li class=""><a href="newstitle">最新文章</a></li>
                    <li class=""><a href="information">资讯</a></li>
                    <li cl ass=""><a href="#">人工智能</a></li>
                    <li class=""><a href="#">云计算/大数据</a></li>
                    <li class=""><a href="#">区块链</a></li>
                    <li class=""><a href="db">数据库</a></li>
                    <li class=""><a href="#">程序人生</a></li>
                    <li class=""><a href="#">游戏开发</a></li>
                    <li class=""><a href="#">研发管理</a></li>
                    <li class=""><a href="front">前端</a></li>
                    <li class=""><a href="#">移动开发</a></li>
                    <li class=""><a href="#">物联网</a></li>
                    <li class=""><a href="#">运维</a></li>
                    <li class=""><a href="#">计算机基础</a></li>
                    <li class=""><a href="#">编程语言</a></li>
                    <li class=""><a href="#">架构</a></li>
                    <li class=""><a href="#">音视频开发</a></li>
                    <li class=""><a href="#">安全</a></li>
                    <li class=""><a href="other">其他</a></li>
                </ul>

            </div>
        </div>
    </nav>
    <div class="fixed_content">
        <!--头部banner广告 begin-->
        <div class="banner-ad-box">
            <ins data-revive-zoneid="366" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            <ins data-revive-zoneid="367" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
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
                <div class="scroll-fixbar clearfix csdn-tracking-statistics" data-mod="popu_463" data-dsm="post">
                    <a class="txt txt-refrash-new">您有新的推荐内容，点击查看</a>
                    <button class="btn btn-nobg-noborder btn-nobg-noborder btn-close-fixbar">
                        <i class="icon-close"></i>
                    </button>
                </div>
            </div>
            <ul class="feedlist_mod" id="feedlist_id" shown-offset="1520907872324386">
                <c:forEach items="${otherList}" var="list" varStatus="o">
                    <li class="clearfix" data-type="blog" data-id="79017958">
                        <div class="list_con">
                            <div class="title">
                                <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed"
                                    data-feed-show="false" data-dsm="post">
                                    <a strategy="new" href="Amazon?nid=${list.nid}">
                                          ${list.ntitle}   </a>
                                </h2>
                            </div>
                            <dl class="list_userbar">
                                <dt>
                                    <a href="http://blog.csdn.net/McIl9G4065Q" target="_blank" class="user_img">
                                        <img src="../../statics/picture/1_mcil9g4065q.jpg" alt="McIl9G4065Q"
                                             title="McIl9G4065Q">
                                    </a>
                                </dt>
                                <dd class="name">
                                    <a href="http://blog.csdn.net/McIl9G4065Q" target="_blank">
                                            ${list.nauthor} </a>
                                </dd>
                                <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed"
                                    data-mod="popu_459">
                                    <a strategy="new" href="http://blog.csdn.net/McIl9G4065Q/article/details/79017958"
                                       target="_blank">
                                        <fmt:formatDate value="${list.ncreateTime}" type="date" pattern="MM月dd日"/> </a>
                                </dd>
                                <!--新增评论数+阅读 begin-->
                                <!--新增评论数+阅读 end-->
                            </dl>
                            <!--阅读 begin-->
                            <div class="read_num">
                                <p class="num">${list.nview}</p>
                                <p class="text">阅读量</p>
                            </div>
                            <!--阅读 end-->
                        </div>
                    </li>
                </c:forEach>
                <div id="ggg"></div>
                <li  id="last" style="font: 14px arial;color: red;width: 100%;text-align: center"><a style="font: 14px arial;color: red;width: 100%;text-align: center">刚刚阅读在这里，点击刷新</a>
                </li>
            </ul>
            <script type="text/javascript">
                var pageInt=1;
                var totalPage=${pageUtils.totalPage}
                    $(document).ready(function () {
                        $("#last").on("click",function () {
                            if(totalPage!=pageInt){
                                pageInt=pageInt+1;
                                $.ajax({
                                    "url": "/mainController/indexPage",//要提交的路径
                                    "Type": "get",//提交方式
                                    "data": "index=" + pageInt,//发送到服务器的数据
                                    "dataType": "json",//指定返回的数据格式
                                    beforeSend: function () {
                                        $("#gg").html("<div class=\"feed_loading\">\n" +
                                            "                <img src=\"../../statics/picture/feedloading.gif\" alt=\"I'm loading\" title=\"I'm loading\">\n" +
                                            "            </div>");
                                    }, //加载执行方法
                                    "success": function (data) {
                                        var otherPage = eval(data); //数组
                                        var news = "";
                                        $.each(newsList, function (p) {
                                            var nid = newsList[p].nid;
                                            var ntitle = newsList[p].ntitle;
                                            var ntab = newsList[p].ntab;
                                            var nauthor = newsList[p].nauthor;
                                            var ncreateTime = newsList[p].ncreateTime;
                                            var nreads = newsList[p].nreads;
                                            var npicture = newsList[p].npicture;


                                            var newdemo = " <li class=\"clearfix\" data-type=\"blog\" data-id=\"79442462\" id=\"new\">\n" +
                                                "        <div class=\"list_con\">\n" +
                                                "            <div class=\"title\">\n" +
                                                "                <h2 class=\"csdn-tracking-statistics\" data-mod=\"popu_459\" data-poputype=\"feed\"\n" +
                                                "                    data-feed-show=\"false\" data-dsm=\"post\">\n" +
                                                "                    <a strategy=\"recommend\" href=\"/personal/personblog?" + nid + "\" target=\"_blank\">" + ntitle + "</a>" +
                                                " </h2> <div class=\"close_tag\">\n" +
                                                "                    <div class=\"unin_reason_dialog_wrapper\">\n" +
                                                "                        <i class=\"icon-close\"></i>\n" +
                                                "                        <div class=\"unin_reason_dialog\">\n" +
                                                "                        </div>\n" +
                                                "                    </div>\n" +
                                                "                </div>\n" +
                                                "            </div>\n" +
                                                "            <dl class=\"list_userbar\">\n" +
                                                "                <dd class=\"tag\">\n" +
                                                "                    <a href=\"/nav/blockchain\" target=\"_blank\">\n" +
                                                "                        ntab </a>\n" +
                                                "                </dd>\n" +
                                                "                <dt>\n" +
                                                "                    <a href=\"http://blog.csdn.net/wireless_com\" target=\"_blank\" class=\"user_img\">\n" +
                                                "                        <img src="+npicture+" alt=\"\"\n" +
                                                "                             title=\"wireless_com\">\n" +
                                                "                    </a>\n" +
                                                "                </dt>\n" +
                                                "                <dd class=\"name\">\n" +
                                                "                    <a href=\"http://blog.csdn.net/wireless_com\" target=\"_blank\">" + nauthor + "</a>" +
                                                "</dd>" +
                                                " <dd class=\"time csdn-tracking-statistics tracking-click\" data-poputype=\"feed\"\n" +
                                                "                    data-mod=\"popu_459\">\n" +
                                                "                    <a strategy=\"recommend\"\n" +
                                                "                       href=\"http://blog.csdn.net/wireless_com/article/details/79442462\"\n" +
                                                "                       target=\"_blank\">\n" + ncreateTime +
                                                "</a> " +
                                                "</dd>\n" +
                                                "                <dd class=\"strategy\">\n" +
                                                "                    运营精选\n" +
                                                "                </dd>\n" +
                                                "                <!--新增评论数+阅读 begin-->\n" +
                                                "                <!--新增评论数+阅读 end-->\n" +
                                                "            </dl>\n" +
                                                "            <!--阅读 begin-->\n" +
                                                "            <div class=\"read_num\">\n" +
                                                "                <p class=\"num\">" + nreads +
                                                "</p>" +
                                                "<p class=\"text\">阅读量</p>\n" +
                                                "            </div>\n" +
                                                "            <!--阅读 end-->\n" +
                                                "        </div>\n" +
                                                "    </li>";
                                            news=newdemo+news;
                                            // alert(newdemo);

                                        });
                                        $("#ggg").append(news);
                                    },//响应成功后要执行代码
                                    "error": function () { //请求失败后要执行代码
                                        alert("错误！");
                                    }
                                });
                            }else {
                                $("#last").remove();
                                alert("已经到头了");
                            }
                        });
                    });
                //     $(document).ready(function () {
                //         var pageInt=1;
                //     $("#feedlist_id").on("click","li button",function () {
                //         pageInt=pageInt+1;
                //         alert("页:"+pageInt);
                //
                //         ajaxs(pageInt);
                // });
                //     });
            </script>
        </main>

        <aside>
            <!-- 右侧轮播广告 begin -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="368" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
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
                <div class="feed_viewpoint" style="background-image: url(../../statics/images/viewpoint_bg.png)">
                    <a href="http://blog.csdn.net/pk.html?id=10570" target="_blank">
                        <img src="../../statics/picture/mod_viewpoint.png" class="viewpoint_img" alt="csdn_viewpoint"
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
                        <a class="carousel-control" href="#magzCarousel" role="button" data-slide="prev">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zm3-11.5L9.5 3l-5 5 5 5 1.5-1.5L7.5 8 11 4.5z"
                                      fill-rule="evenodd"/>
                            </svg>
                        </a>
                        <a class="carousel-control" href="#magzCarousel" role="button" data-slide="next">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zM5 4.5L8.5 8 5 11.5 6.5 13l5-5-5-5L5 4.5z"
                                      fill-rule="evenodd"/>
                            </svg>
                        </a>
                    </div>
                    <a href="http://www.programmer.com.cn/" class="how_to" target="_blank">我要订阅</a>
                </h3>
                <div class="carousel_magazine_box slide" id="magzCarousel" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="feed_devmagazine_box item carousel-item clearfix active">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a3c7879902f0f2223e2526d?utm_source=sy18030802"
                                   target="_blank">
                                    <img src="../../statics/picture/09a514f3769fffdc701c64cf58b74e6a.png"
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
                        <div class="feed_devmagazine_box item carousel-item clearfix ">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a5c5e6a2be8c361148234e6?utm_source=sy18030102"
                                   target="_blank">
                                    <img src="../../statics/picture/e1dfe3f73feaf3884fa39c99d412c587.png"
                                         alt="人工智能学术前沿">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a5c5e6a2be8c361148234e6?utm_source=sy18030102"
                                        target="_blank">人工智能学术前沿</a></h3>
                                <p class="txt">这个栏目将帮助大家筛选出人工智能和机器学习领域，每年各大顶级会议和研讨班上有意思的论文，解读出论文的核心思想，为精读提供阅读指导。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix ">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a5eb07bdff55721bc1dcaee?utm_source=sy18030101"
                                   target="_blank">
                                    <img src="../../statics/picture/bd25fdc660dd7173d7619b5141c852fc.png" alt="深入浅出区块链">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a5eb07bdff55721bc1dcaee?utm_source=sy18030101"
                                        target="_blank">深入浅出区块链</a></h3>
                                <p class="txt">本期我们梳理了2017年区块链发展现状，从关键技术原理与实际应用出发，带你深入浅出探索区块链技术的方方面面。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix ">
                            <div class="img_box">
                                <a href="http://gitbook.cn/gitchat/geekbook/5a7fe8eb194d786ae0b18956?utm_source=sy18022802"
                                   target="_blank">
                                    <img src="../../statics/picture/5498c4fa03b53244787741b4402c706e.png"
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
                <ins data-revive-zoneid="369" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            </div>
            <div class="fixed24">
                <div class="right_box">
                    <h3 class="feed_new_tit">
                        <span class="line"></span><span class="txt">活动日历</span>
                    </h3>
                    <div class="feed_activiey_calendar">
                        <ul class="csdn-tracking-statistics" data-mod="popu_593" data-dsm="post">
                            <li>
                                <div class="date">
                                    <strong>14</strong>
                                    <p class="month">03月</p></p>
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
                                    <p class="month">03月</p></p>
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
                                    <p class="month">03月</p></p>
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
                                    <p class="month">03月</p></p>
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
                <div class="persion_article"></div>
            </div>
        </aside>
    </div>
</div>
<script src="../../statics/js/bootstrap.min.js" type="text/javascript"></script>

<script src="../../statics/js/async-1.0.1.js"></script>
</body>
<script src="../../statics/js/tracking-1.0.1.js" type="text/javascript"></script>
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

<!--<script src='../../statics/js/publib_footer-1.0.3.js' data-isfootertrack="false"></script>-->
<script src='../../statics/js/csdn_feed.min.js' type='text/javascript'></script>
<script src='../../statics/js/ab.plus.js'></script>
<script>
    adhoc('init', {
        appKey: 'ADHOC_3f25bcb4-f154-4b7c-8a82-f79b81816578'
    })
</script>
<script src='../../statics/js/gotop-v1.0.min.js'></script>
</html>
