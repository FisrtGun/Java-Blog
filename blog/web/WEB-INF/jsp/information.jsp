<%--
  Created by IntelliJ IDEA.
  User: kgc
  Date: 2018/3/13
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
                    <li class=""><a href="front-end">前端</a></li>
                    <li class=""><a href="javascript:void(0);">移动开发</a></li>
                    <li class=""><a href="javascript:void(0);">物联网</a></li>
                    <li class=""><a href="javascript:void(0);">运维</a></li>
                    <li class=""><a href="javascript:void(0);">计算机基础</a></li>
                    <li class=""><a href="javascript:void(0);">编程语言</a></li>
                    <li class=""><a href="javascript:void(0);">架构</a></li>
                    <li class=""><a href="javascript:void(0);">音视频开发</a></li>
                    <li class=""><a href="javascript:void(0);">安全</a></li>
                    <li class=""><a href="other">其他</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="fixed_content">
        <main>
            <ul class="feedlist_mod" id="feedlist_id" shown-offset="1520758965663287" style="padding-top: 0px;">
                <c:forEach items="${informationList}" var="infoMessage" varStatus="start">
                <li class="clearfix" data-type="blog" data-id="79314305">
                    <div class="list_con">
                        <div class="title">
                            <h2 class="csdn-tracking-statistics" data-mod="popu_459" data-poputype="feed" data-feed-show="true" data-dsm="post">
                                <a strategy="new" href="/personal/personblog03?iId=${infoMessage.iId}" target="_blank">
                                    ${infoMessage.iTitle} </a>
                            </h2>
                        </div>
                        <dl class="list_userbar">
                            <%--<dd class="tag">
                                <a href="/nav/blockchain" target="_blank">
                                        ${infoMessage.iTab}                               </a>
                            </dd>--%>
                            <dt>
                                <a href="" target="_blank" class="user_img">
                                    <img src="${infoMessage.iImg}" alt="wireless_com" title="wireless_com">
                                </a>
                            </dt>
                            <dd class="name">
                                <a href="" target="_blank">
                                        ${infoMessage.iAuthor}                           </a>
                            </dd>
                            <dd class="time csdn-tracking-statistics tracking-click" data-poputype="feed" data-mod="popu_459">
                                <a strategy="recommend" href="" target="_blank">
                                    <fmt:formatDate value="${infoMessage.iCreateTime}" type="date" pattern="MM月dd日"/>
                                </a>
                            </dd>
                            <!--新增评论数+阅读 begin-->
                            <!--新增评论数+阅读 end-->
                        </dl><%--../../statics/picture/1_zlj925.jpg--%>
                        <!--阅读 begin-->
                        <div class="read_num">
                            <p class="num">${infoMessage.iReads}</p>
                            <p class="text">阅读量</p>
                        </div>
                        <!--阅读 end-->
                    </div>
                </li>
                </c:forEach>
                <%--<li class="clearfix" data-type="blog" data-id="79314305">
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
                </li>--%>
            </ul>
        </main>
        <aside>
            <!-- 右侧轮播广告 begin -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="318" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-6"></ins>
            </div>
            <!-- 右侧轮播广告 end -->
            <div class="right_box">
                <h3 class="feed_new_tit">
                    <span class="line"></span><span class="txt">今日推荐</span>
                </h3>
                <div class="feed_company csdn-tracking-statistics" data-mod="popu_474" data-dsm="post">
                    <ul class="company_list">

                        <c:forEach items="${groomList}" var="groom" varStatus="start">
                        <li>
                            <div class="img_box"><a href=""
                                                    target="_blank"><img
                                    src="${groom.iImg}" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href=""
                                                            target="_blank">${groom.iTitle}</a></h3>
                                <%--<p class="txt oneline">${groom.iAuthor}</p>--%>
                            </div>
                        </li>
                        </c:forEach>

                        <%--<li>
                            <div class="img_box"><a href="http://mp.weixin.qq.com/s/ds82pMExGu9qjwk9Mx5YEQ"
                                                    target="_blank"><img
                                    src="png/280574d4ca0f081d2751b723c6efc9c2.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://mp.weixin.qq.com/s/ds82pMExGu9qjwk9Mx5YEQ"
                                                            target="_blank">为什么说去中心化很重要</a></h3>
                                <p class="txt oneline">在互联网的第一个时代，我们看到了去中心化系统的价值。</p>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://mp.weixin.qq.com/s/gYVOtagdddkOYf27oE-F0Q"
                                                    target="_blank"><img
                                    src="../../statics/png/af8a709a82143a435c2505c1fe9acc97.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://mp.weixin.qq.com/s/gYVOtagdddkOYf27oE-F0Q"
                                                            target="_blank">1分钟链圈 | 币安悬赏25万美元通缉黑客</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/79488152"
                                    target="_blank"><img src="../../statics/jpg/36a508d94ba797fc252b67261cf4fde9.jpg"
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
                                    target="_blank"><img src="../../statics/jpg/633575ce3e5cdf77ff89a22e747b5bb3.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/78302688"
                                        target="_blank">数据依赖症：当今AI领域的核心风险</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://mp.weixin.qq.com/s/0WVRK5XloDB3bCO8IabOTA"
                                                    target="_blank"><img
                                    src="../../statics/jpg/f1c9aca64561ae2b6d26ea3d6abc4588.jpg" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://mp.weixin.qq.com/s/0WVRK5XloDB3bCO8IabOTA"
                                                            target="_blank">摩托罗拉再裁员！仍坚守模块化手机业务</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://mp.weixin.qq.com/s/ztMJc-bRAUpaze31hsVxGQ"
                                                    target="_blank"><img
                                    src="../../statics/jpg/3b1fca6be181efb23a9d75629a46c755.jpg" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://mp.weixin.qq.com/s/ztMJc-bRAUpaze31hsVxGQ"
                                                            target="_blank">区块链的爆发仍为时尚早</a></h3>
                                <p class="txt oneline">如今，“区块链”一经出现就火爆异常。虽然科技行业大多对充满波动性的加密货币持悲观态度，但对其所涉及的底层技术仍然热情高涨。</p>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://blog.csdn.net/csdnsevenn/article/details/79154295"
                                                    target="_blank"><img
                                    src="../../statics/png/80f783d3a86393bd2bfa091c9c9d9323.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/csdnsevenn/article/details/79154295" target="_blank">职场泥潭
                                    | 这样的IT公司绝对不宜久留</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://blog.csdn.net/csdnsevenn/article/details/79506761"
                                                    target="_blank"><img
                                    src="png/62105f7c32ace884d10dbf5d38003607.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://blog.csdn.net/csdnsevenn/article/details/79506761" target="_blank">你以为技术圈只有女汉子
                                    我们用颜值和才艺征服你</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="http://gitbook.cn/gitchat/activity/5a73da727648740c4c24ada0?utm_source=sy18030901"
                                    target="_blank"><img src="../../statics/jpg/70d8dfd3ba8c89236c747f181ea71b16.jpg"
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
                                    target="_blank"><img src="../../statics/jpg/a7f37fbad97f3cdb0ee36c0fcd9628ae.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="http://gitbook.cn/gitchat/geekbook/5a9cb0c0a80c047e76c23c4f?utm_source=sy18030801"
                                        target="_blank">算法图解：像小说一样有趣的算法入门书</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="https://edu.csdn.net/course/detail/6408?utm_source=home4"
                                                    target="_blank"><img
                                    src="../../statics/jpg/d53977a1da22a0ba27f38bf71f16d4f3.jpg" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="https://edu.csdn.net/course/detail/6408?utm_source=home4" target="_blank">互联网职业选择时应该注意什么？</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a
                                    href="https://mp.weixin.qq.com/s?__biz=MzA4NDY3ODAwNA==&amp;mid=2651229425&amp;idx=4&amp;sn=c581cbba1d20c7d8b01ffdb9c0d698a1&amp;chksm=8411a8eab36621fc94bb989d233b6f55eee472e52a37c601840af0de9f89c7265cca52184573&amp;scene=0#rd?utm_source=home4"
                                    target="_blank"><img src="../../statics/jpg/fd7c5c8fd40a537feb63fb44df8cf5ea.jpg"
                                                         alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a
                                        href="https://mp.weixin.qq.com/s?__biz=MzA4NDY3ODAwNA==&amp;mid=2651229425&amp;idx=4&amp;sn=c581cbba1d20c7d8b01ffdb9c0d698a1&amp;chksm=8411a8eab36621fc94bb989d233b6f55eee472e52a37c601840af0de9f89c7265cca52184573&amp;scene=0#rd?utm_source=home4"
                                        target="_blank">2018软考(上半年)报考指南—报名时间及备考</a></h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://10086id.csdn.net/" target="_blank"><img
                                    src="../../statics/png/9b4ea6a8403891f274d3f8b714658744.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://10086id.csdn.net/" target="_blank">每次登录都要验证，解密行业最新认证能力</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://qualcomm.csdn.net/" target="_blank"><img
                                    src="../../statics/png/481f31224e31a114adbf35cbdde4b24b.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://qualcomm.csdn.net/" target="_blank">详解骁龙X24：何止是快，是意义非凡</a>
                                </h3>
                            </div>
                        </li>
                        <li>
                            <div class="img_box"><a href="http://ibmuniversity.csdn.net/" target="_blank"><img
                                    src="../../statics/png/fef6fa64e5d526bc9bc9e1522b9d020d.png" alt=""></a></div>
                            <div class="content">
                                <h3 class="company_name"><a href="http://ibmuniversity.csdn.net/" target="_blank">人工智能、机器学习和认知计算入门指南</a>
                                </h3>
                            </div>
                        </li>--%>
                    </ul>
                    <div class="other_company clearfix">
                        <a href="javascript:void(0);" target="_blank">百度技术专区</a>
                        <a href="javascript:void(0);" target="_blank">英特尔开发者专区</a>
                        <a href="javascript:void(0);" target="_blank">AWS中文技术专区</a>
                        <a href="javascript:void(0);" target="_blank">PowerLinux技术社区</a>
                        <a href="javascript:void(0);" target="_blank">Vuforia中文社区</a>
                        <a href="javascript:void(0);" target="_blank">普元云计算</a>
                        <a href="javascript:void(0);" target="_blank">华为云计算</a>
                        <a href="javascript:void(0);" target="_blank">腾讯云技术社区</a>
                    </div>
                </div>
            </div>
            <div class="right_box csdn-tracking-statistics" data-mod="popu_470" data-dsm="post">
                <div class="feed_viewpoint" style="background-image: url(../../statics/images/viewpoint_bg.png)">
                    <a href="javascript:void(0);" target="_blank">
                        <img src="../../statics/picture/mod_viewpoint.png" class="viewpoint_img" alt="csdn_viewpoint" title="csdn_viewpoint">
                        <h3>激光雷达与摄像头，未来哪种会成为自动驾驶的核心传感器呢？</h3>
                    </a>
                </div>
                <div class="feed_vote">
                    <dl>
                        <dt>激光雷达</dt>
                        <dd>75%</dd>
                    </dl>
                    <a type="button" class="btn btn-border-red btn-lg30" href="javascript:void(0);" target="_blank">投票参与</a>
                    <dl>
                        <dt>摄像头</dt>
                        <dd>25%</dd>
                    </dl>
                </div>
                <ul class="feed_new_arrlist">
                    <li class="clearfix">
                        <span class="arr"><i class="icon CSDN_iconfont Feed-arrowup"></i></span>
                        <span class="txt"><a href="javascript:void(0);" target="_blank">又到一年跳槽季，你更看重什么样的公司？</a></span>
                    </li>
                    <li class="clearfix">
                        <span class="arr"><i class="icon CSDN_iconfont Feed-arrowup"></i></span>
                        <span class="txt"><a href="javascript:void(0);" target="_blank">基于手机SIM卡的一键登录身份验证将颠覆传统短信验证，你认同吗？</a></span>
                    </li>
                </ul>
            </div>
            <div class="right_box magazine_box">
                <h3 class="feed_new_tit">
                    <span class="txt">《程序员》杂志</span>
                    <div class="opt-box">
                        <a class="carousel-control" href="javascript:void(0);" role="button"
                           data-slide="prev">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zm3-11.5L9.5 3l-5 5 5 5 1.5-1.5L7.5 8 11 4.5z"
                                      fill-rule="evenodd"></path>
                            </svg>
                        </a>
                        <a class="carousel-control" href="javascript:void(0);" role="button"
                           data-slide="next">
                            <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zM5 4.5L8.5 8 5 11.5 6.5 13l5-5-5-5L5 4.5z"
                                      fill-rule="evenodd"></path>
                            </svg>
                        </a>
                    </div>
                    <a href="javascript:void(0);" class="how_to" target="_blank">我要订阅</a>
                </h3>
                <div class="carousel_magazine_box slide" id="magzCarousel" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="javascript:void(0);"
                                   target="_blank">
                                    <img src="../../statics/png/09a514f3769fffdc701c64cf58b74e6a.png"
                                         alt="AI 工程师职业指南【限时特惠中】">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="javascript:void(0);"
                                        target="_blank">AI 工程师职业指南【限时特惠中】</a></h3>
                                <p class="txt">我们请来 AI 技术一线的专家，请他们从实践的角度来解析 AI 领域各技术岗位的合格工程师都是怎样炼成的。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="javascript:void(0);"
                                   target="_blank">
                                    <img src="../../statics/png/e1dfe3f73feaf3884fa39c99d412c587.png" alt="人工智能学术前沿">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="javascript:void(0);"
                                        target="_blank">人工智能学术前沿</a></h3>
                                <p class="txt">这个栏目将帮助大家筛选出人工智能和机器学习领域，每年各大顶级会议和研讨班上有意思的论文，解读出论文的核心思想，为精读提供阅读指导。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix active">
                            <div class="img_box">
                                <a href="javascript:void(0);"
                                   target="_blank">
                                    <img src="../../statics/png/bd25fdc660dd7173d7619b5141c852fc.png" alt="深入浅出区块链">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="javascript:void(0);"
                                        target="_blank">深入浅出区块链</a></h3>
                                <p class="txt">本期我们梳理了2017年区块链发展现状，从关键技术原理与实际应用出发，带你深入浅出探索区块链技术的方方面面。</p>
                            </div>
                        </div>
                        <div class="feed_devmagazine_box item carousel-item clearfix">
                            <div class="img_box">
                                <a href="javascript:void(0);"
                                   target="_blank">
                                    <img src="png/5498c4fa03b53244787741b4402c706e.png"
                                         alt="《 程序员 2017 精华本 》         【新书上架 · 全年精粹尽览】">
                                </a>
                            </div>
                            <div class="content">
                                <h3 class="tit"><a
                                        href="javascript:void(0);"
                                        target="_blank">《 程序员 2017 精华本 》 【新书上架 · 全年精粹尽览】</a></h3>
                                <p class="txt">16个主题，200余篇文章，180万字——不容错过的前沿技术、工具尽在其中，亲历者领域案例剖析</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 右侧图片广告 -->
            <div class="right_extension slide-outer">
                <ins data-revive-zoneid="319" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-7"></ins>
            </div>
            <div class="fixed24" style="left: 906px;">
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
                                            href="javascript:void(0);"
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
                                    <h3 class="activity_name"><a href="javascript:void(0);"
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
                                            href="javascript:void(0);"
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
                                    <h3 class="activity_name"><a href="javascript:void(0);"
                                                                 target="_blank">区块链技术及应用峰会(BTA) · 中国</a></h3>
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
                            <div class="img-box"><img src="../../statics/png/csdn_cs_qr.png" alt="客服"></div>
                            <div class="contact-info"><h4>请扫描二维码联系客服</h4>
                                <p>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2.167 2h11.666C14.478 2 15 2.576 15 3.286v9.428c0 .71-.522 1.286-1.167 1.286H2.167C1.522 14 1 13.424 1 12.714V3.286C1 2.576 1.522 2 2.167 2zm-.164 3v1L8 10l6-4V5L8 9 2.003 5z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="javascript:void(0);" target="_blank"><span class="txt">webmaster@csdn.net</span></a>
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
                                    <a href="javascript:void(0);"
                                       target="_blank"><span class="txt">QQ客服</span></a>
                                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M7.325 13.965a6.5 6.5 0 1 1 7.175-6.4C14.467 11.677 11.346 15 7.5 15c-.514 0-1.015-.06-1.498-.172.488-.178.922-.48 1.323-.863zM4 7.5a4 4 0 1 0 8 0 .5.5 0 1 0-1 0 3 3 0 1 1-6 0 .5.5 0 0 0-1 0z"
                                              fill="#B3B3B3" fill-rule="evenodd"></path>
                                    </svg>
                                    <a href="javascript:void(0);" target="_blank"><span
                                            class="txt">客服论坛</span></a></p>
                            </div>
                        </div>
                        <div class="bg-gray">
                            <div class="feed_copyright">
                                <p><a class="right-dotte" href="javascript:void(0);"
                                      target="_blank">关于</a><a href="javascript:void(0);"
                                                               target="_blank" class="right-dotte">招聘</a><a
                                        href="javascript:void(0);" target="_blank"
                                        class="right-dotte">广告服务</a> <a href="javascript:void(0);" target="_blank"
                                                                        class="footer_baidu">
                                    <svg width="13" height="14" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8.392 7.013c1.014 1.454 2.753 2.8 2.753 2.8s1.303 1.017.47 2.98c-.833 1.962-3.876.942-3.876.942s-1.122-.36-2.424-.072c-1.303.291-2.426.181-2.426.181s-1.523.037-1.957-1.888c-.434-1.927 1.52-2.982 1.666-3.161.145-.183 1.159-.873 1.81-1.963.653-1.09 2.608-1.962 3.984.181zm1.23 5.706V9.346H8.64v2.534h-.937s-.3-.044-.356-.285V9.33l-.925.015v2.518s.042.627.925.855h2.277zm-3.685.013V7.951l-.896-.014v1.295H3.987s-1.054.086-1.422 1.28c-.129.798.114 1.266.156 1.368.043.099.383.682 1.238.852h1.978zm-2.433-1.45c-.087-.286.013-.613.057-.741.042-.128.228-.427.61-.54h.855v1.948h-.797s-.555-.029-.725-.668zm6.877-8.775c-.143.909-.865 2.108-1.99 1.962-1.121-.144-1.375-1.16-1.267-2.179C7.214 1.458 8.21.18 9.007.364c.796.18 1.52 1.235 1.374 2.143zm-4.09-.345c0 1.197-.68 2.164-1.52 2.164S3.25 3.36 3.25 2.162C3.25.967 3.932 0 4.77 0c.842 0 1.52.967 1.52 2.162zm4.854 2.09c1.34 0 1.701 1.309 1.701 1.743 0 .438.182 2.29-1.485 2.326-1.667.037-1.737-1.126-1.737-1.96 0-.874.179-2.11 1.52-2.11zm-7.93.581c.045.398.253 2.217-1.27 2.544C.427 7.704-.14 5.947.028 5.124c0 0 .18-1.78 1.412-1.89.98-.085 1.7.986 1.774 1.6z"
                                              fill="#999" fill-rule="evenodd"></path>
                                    </svg>
                                    <em> 百度</em></a></p>
                                <p class="fz12">©1999-2018 CSDN版权所有</p>
                                <p class="fz12"><a href="javascript:void(0);" target="_blank" class="ml14">京ICP证09002463号</a>
                                </p></div>
                            <div class="allow-info-box"><p><a
                                    href="javascript:void(0);"
                                    target="_blank"><span>经营性网站备案信息</span></a></p>
                                <p><a href="javascript:void(0);" target="_blank"><span>网络110报警服务</span></a></p>
                                <p><a href="javascript:void(0);" target="_blank"><span>中国互联网举报中心</span></a></p>
                                <p><a href="javascript:void(0);" target="_blank"><span>北京互联网违法和不良信息举报中心</span></a>
                                </p></div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="../../statics/css/pub_footer_1.0.3.css">
<div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;" type="text"
                                                                    value="" id="focus_retriever" readonly="true"></div>
</body>
</html>