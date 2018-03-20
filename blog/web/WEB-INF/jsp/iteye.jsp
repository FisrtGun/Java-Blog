<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2018年3月9日,0009
Time: 21:58
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" dir="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>ITeye Java编程 Spring框架 Ajax技术 agile敏捷软件开发 ruby on rails实践 - ITeye做最棒的软件开发交流社区</title>
    <meta name="description"
          content="Java编程,Spring Struts Webwork框架深入,XMLHTTP Ajax开发,Java Web开发,Java企业应用,Java设计模式,Java开源框架,Java应用服务器,Rich Client讨论,Ruby编程,Ruby DSL开发,Ruby on rails实践,JavaScript编程,敏捷软件开发XP TDD,软件配置管理,软件测试,项目管理UML,数据库,C#/.net C/C++ Erlang/FP PHP/Linux平台,精通Hibernate"/>
    <meta name="keywords" content="Java编程 Spring框架 Ajax技术 agile敏捷软件开发 ruby on rails实践 ITeye深度技术社区"/>
    <meta name="baidu_union_verify" content="7b2a15d73dd1b1b6a67d7a4ddcfffa33"/>
    <link rel="shortcut icon" href="/statics/images/favicon.ico" type="image/x-icon"/>
    <link rel="search" type="application/opensearchdescription+xml" href="/open_search.xml" title="ITeye"/>
    <link href="/rss" rel="alternate" title="ITeye技术网站RSS频道订阅" type="application/rss+xml"/>
    <link href="../../statics/css/new_homepage.css" media="screen" rel="stylesheet" type="text/css"/>
    <script src="../../statics/js/application.js" type="text/javascript"></script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?e19a8b00cf63f716d774540875007664";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);


            //自动推送工具代码
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
    </script>


</head>
<body>
<div id="page">
    <div id="header">
        <!--全屏-->
        <script type="text/javascript" ads-src="js/fa3e061bf6094761a9d9e36f90007fe7.js"
                src="http://creatim.qtmojo.cn/td/AllyesDeliver.min.js" charset="gbk"></script>
        <!--全屏-->

        <!--浮标-->
        <script type="text/javascript" ads-src="js/f5dc464880f542e0a90f8990ac024e9d.js"
                src="http://creatim.qtmojo.cn/td/AllyesDeliver.min.js" charset="gbk"></script>
        <!--浮标-->
        <div class="clearfix">
            <div id="user_nav" style="display: inline-block">


                <!--<a href="http://passport.csdn.net/account/mobileregister?from=http://www.iteye.com">注册</a>-->
            </div>
            <script type="text/javascript">
                var ll =${error};
                var user_nav = document.getElementById("user_nav");
                if (ll) {
                    user_nav.innerHTML = "<a href=\"login\" class=\"welcome\" title=\"登录\">您还未登录 !</a>\n" +
                        "            <a href=\"login\">登录</a>\n" +
                        "            <a href=\"register\" class=\"nobg\">注册</a>";
                } else {
                    user_nav.innerHTML = "<a href=\"http://linss0621.iteye.com\" title=\"查看我的博客首页\" class=\"welcome\">欢迎${users.uname}</a>\n" +
                        "                <a id=\"notifications_count\" href=\"http://my.iteye.com/notifications\">0</a>\n" +
                        "                <a href=\"http://my.iteye.com/messages\" title=\"发送站内短信\">收件箱</a>\n" +
                        "                <a href=\"http://my.iteye.com\" title=\"我的应用首页\">我的应用</a>\n" +
                        "                <div class=\"quick_menu\" style=\"left: 746px; display: none;\">\n" +
                        "                    <a href=\"http://my.iteye.com/feed\" title=\"我关注的好友动态消息\">我的关注</a>\n" +
                        "                    <a href=\"http://my.iteye.com/mygroup\" title=\"我加入的群组最新话题\">我的群组</a>\n" +
                        "                    <a href=\"http://my.iteye.com/myresume\" title=\"我的个人简历\">我的简历</a>\n" +
                        "                    <a href=\"http://my.iteye.com/admin/album\" title=\"我的个人简历\">我的相册</a>\n" +
                        "                    <a href=\"http://my.iteye.com/admin/link\" title=\"我收藏的网络资源链接\">我的收藏</a>\n" +
                        "                    <a href=\"http://my.iteye.com/admin/code\" title=\"我收藏的代码\">我的代码</a>\n" +
                        "                    <a href=\"http://my.iteye.com/admin/weibo\" title=\"用微博发表简短的话题\">我的微博</a>\n" +
                        "                </div>\n" +
                        "                <a href=\"http://linss0621.iteye.com/admin\" title=\"管理我的博客\">我的博客</a>\n" +
                        "                <a href=\"http://my.iteye.com/profile\" title=\"修改我的个人设置\">设置</a>\n" +
                        "                <a href=\"iteyeExist\" class=\"nobg\" onclick=\"var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', '_method'); m.setAttribute('value', 'put'); f.appendChild(m);var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', 'Gw6JbEH3wcDfxRQtwvD6sQm4lwXRdmBre3PsW+fF7p0='); f.appendChild(s);f.submit();return false;\">退出</a>";
                }
            </script>

        </div>


    </div>
    <div class="clearfix">
        <div id="branding">
            <a href="http://www.iteye.com"><img alt="ITeye3.0" src="../../statics/ITeyeImages/logo.gif"
                                                title="ITeye-最棒的软件开发交流社区"/></a>
        </div>
        <div id="gg">
            <ins data-revive-zoneid="156" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
        </div>
    </div>
</div>
<div id="content" class="clearfix" style="display: inline-block;width: 950px">
    <div id="main">
        <div id="news">

            <div class="news_picture">
                <div>
                    <table class="ge" id="ge" cellspacing="0" cellpadding="0">
                        <tbody>
                        <tr>
                            <td class="pic" id="bimg">

                                <div id="top_pictures">
                                    <div class="dis" id="top_picture_image_0" style="">
                                        <a href="http://download.csdn.net/album" target="_blank" title="下载精品专辑"><img
                                                alt="下载专辑" src="../../statics/images/fg.png"/></a>
                                    </div>
                                </div>
                                <table id="font_hd" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td class="lkff" id="info">
                                            <div class="dis" id="top_picture_title_0" style="">
                                                <a href="http://download.csdn.net/album" target="_blank" title="下载精品专辑">下载精品专辑</a>
                                            </div>
                                        </td>
                                        <td id="simg">
                                            <div id="simg-wrap">
                                                <div class="dis " id="top_picture_button_0">
                                                    1
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <script type="text/javascript">
                        (function () {
                            var total = 1;
                            var current = 0;
                            var auto_play_on = true;

                            $('bimg').observe('mouseover', function () {
                                auto_play_on = false;
                            });
                            $('bimg').observe('mouseout', function () {
                                auto_play_on = true;
                            });

                            var showPicture = function (index) {
                                if (current !== index) {
                                    new Effect.Fade('top_picture_image_' + current);
                                    new Effect.Appear('top_picture_image_' + index);
                                    $('top_picture_title_' + current).hide();
                                    $('top_picture_title_' + index).show();
                                    $('top_picture_button_' + current).addClassName('f1');
                                    $('top_picture_button_' + index).removeClassName('f1');
                                    current = index;
                                }
                            };

                            for (var i = 0; i < total; i++) {
                                $('top_picture_button_' + i).observe('click', (function (i) {
                                    return function (ev) {
                                        showPicture(i);
                                    }
                                })(i));
                            }
                            ;

                            var autoPlay = function () {
                                if (total !== 0 && auto_play_on) {
                                    var next = (current < (total - 1)) ? (current + 1) : 0;
                                    showPicture(next);
                                }
                            };
                            setInterval(autoPlay, 5000);
                        })();
                    </script>
                </div>
            </div>


            <div class="news_content">
                <h3><span>热点聚焦</span></h3>
                <dl>
                    <c:forEach items="${list}" var="informationlist" varStatus="i">
                        <c:if test="${i.count<4}">
                            <dt><a href="http://www.iteye.com/news/32925" target="_blank"
                                   title="Java 程序员开发常用的工具">${informationlist.ititle}</a></dt>
                            <dd>
                                  <span style="display:inline-block;height: 50px;width:300px;overflow:hidden;text-overflow:ellipsis;white-space: nowrap">  ${informationlist.iconten}</span>
                                <a href="http://www.iteye.com/news/32925" target="_blank"
                                   title="Java 程序员开发常用的工具">[详情]</a>
                            </dd>
                        </c:if>
                    </c:forEach>
                </dl>
            </div>

        </div>

        <div class="tuiguang">
            <ins data-revive-zoneid="157" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
        </div>
        <div class="after">

            <div class="main_left">
                <h3>
                    <a href="/news" target="_blank">每日资讯</a>
                    <a href="/news" class="more" target="_blank">[更多]</a>
                </h3>
                <ul>
                    <c:forEach items="${list}" var="informationlist" varStatus="i">
                        <c:if test="${i.count<8}">
                        <li class="title">
                            <a href="/news/32925" target="_blank" title="Java 程序员开发常用的工具">${informationlist.ititle}</a>
                        </li>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>


            <div class="main_right">
                <h3>
                    <a href="/blogs" target="_blank">博文推荐</a>
                    <a href="/blogs" class="more" target="_blank">[更多]</a>
                </h3>
                <ul>
                    <c:forEach items="${newsList}" var="newsList" varStatus="c">
                        <li class="title">
                            <a href="/personal/personblog?nid=${newsList.nid}" target="_blank"
                               title="快速开发 HTML5 WebGL 的 3D 斜面拖拽生成模型">${newsList.ntitle}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>

        </div>
        <div class="tuiguang">

        </div>

        <div id="column">
            <h3>
                <a href="/forums/hot_topics" target="_blank">热门讨论</a>
                <a href="/forums/hot_topics" class="more" target="_blank">[更多]</a>
            </h3>
            <ul class='column_left'>
                <c:forEach items="${grouplist}" var="grouplist" varStatus="">
                    <li><a href="http://www.iteye.com/topic/1147193" target="_blank" title="springboot--如何优雅的使用mybatis">${grouplist.gtopic}</a>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <div id="column">
            <h3>
                <a href="/groups/all_topics" target="_blank">群组热门讨论</a>
                <a href="/groups/all_topics" class="more" target="_blank">[更多]</a>
            </h3>
            <table class="grid">
                <thead>
                <tr>
                    <td style="width:400px;">话题</td>
                    <td style="width:120px;">群组</td>
                    <td style="width:80px;">回复/点击</td>
                    <td style="width:100px;">最后回复</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${grouplist}" var="grouplist" varStatus="g">
                <tr onmouseover="$(this).addClassName('mouse_over');"
                    onmouseout="$(this).removeClassName('mouse_over');">
                    <td>
                        <a href='http://software.group.iteye.com/group/topic/125524' title='经过验证的项目管理实践分享-跨越敏捷的那些坑'
                           target='_blank'>${grouplist.gtopic} ...</a>
                    </td>
                    <td class="group"><a href="http://software.group.iteye.com" target="_blank">${grouplist.gname}</a>
                    </td>
                    <td class="group">1 / ${grouplist.nview}</td>
                    <td class="date">${grouplist.gRecoveryTime} <a
                            href="http://software.group.iteye.com/group/topic/125524/post/356770"
                            target="_blank"><img alt="浏览最新的文章"
                                                 src="../../statics/ITeyeImages/icon_last_post.gif"/></a>
                    </td>
                    </c:forEach>
                </tr>
                <tr onmouseover="$(this).addClassName('mouse_over');"
                    onmouseout="$(this).removeClassName('mouse_over');">
                    <td>
                        <a href='http://sa.group.iteye.com/group/topic/125521' title='2018 国内 DevOps 趋势分析与实践分享'
                           target='_blank'>2018 国内 DevOps 趋势分析与实践分享</a>
                    </td>
                    <td class="group"><a href="http://sa.group.iteye.com" target="_blank">系统架构与架构应用</a></td>
                    <td class="group">1 / 493</td>
                    <td class="date">2018-02-26 <a href="http://sa.group.iteye.com/group/topic/125521/post/356765"
                                                   target="_blank"><img alt="浏览最新的文章"
                                                                        src="../../statics/ITeyeImages/icon_last_post.gif"/></a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>


    </div>
    <div id="local">
        <div class="search column">
            <form action="/search" method="get">
                <input type="hidden" name="type" value="all"/>
                <input type="text" name="query" class="text" id="query" style="width: 152px; *width:145px; "/>
                <input type="submit" value="搜索" class="submit"/>
            </form>
        </div>
        <div class="tuiguang">
            <ins data-revive-zoneid="159" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
        </div>


        <div id="recommend" class="box ">
            <h3>推荐精华文章</h3>
            <ul>
                <c:forEach items="${newsList}" var="newsList" varStatus="i">
                    <c:if test="${i.count<7}">
                        <li><a href="/magazines/134-IDE-Comparison" target="_blank"
                               title="编程语言 IDE 对比">${newsList.ntitle}</a>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>


        <div class="tuiguang">
            <ins data-revive-zoneid="160" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
        </div>

        <div class="tuiguang">

        </div>


        <div id="groups" class="box">
            <h3>活跃群组</h3>
            <c:forEach items="${grouplist}" var="grouplist" varStatus="g">
                <c:if test="${g.count<6}">
                    <div class="group">
                        <div class='logo'><a href='http://javaeye-water.group.iteye.com' target='_blank'><img
                                src='../../statics/images/fg.png' alt='灌水乐园群组'
                                title='灌水乐园: ITeye的灌水乐园......' height='48' width='48'/></a></div>
                        <span>
                    <a href="http://javaeye-water.group.iteye.com"
                       target="_blank"><strong>${grouplist.gname}</strong></a>
                    <br/>成员：${grouplist.gnum}人
                  </span>
                    </div>
                </c:if>
            </c:forEach>
        </div>


        <div id="groups" class="box">
            <h3>热门专栏</h3>
            <div class="group">
                <div class='logo'>
                    <a href="/blogs/subjects/sparrow-java" target="_blank"><img
                            alt="877aca81-daac-33c8-8bf9-3a886cebc6c3" height="48"
                            src="../../statics/ITeyeImages/877aca81-daac-33c8-8bf9-3a886cebc6c3.jpg" width="48"/></a>
                </div>
                <span>
                    <a href="/blogs/subjects/sparrow-java" target="_blank">自己动手写java 框架</a><br/>
                    创建者：zh_harry
                  </span>
            </div>
            <c:forEach items="${newsList}" var="newsList" varStatus="n">
                <c:if test="${n.count<6}">
            <div class="group">
                <div class='logo'>
                    <a href="/blogs/subjects/AngularJS-LIUXU" target="_blank"><img
                            alt="${newsList.npicture}" height="48"
                            src="${newsList.npicture}" width="48"/></a>
                </div>
                <span>
                    <a href="/blogs/subjects/AngularJS-LIUXU" target="_blank">${newsList.ntitle}</a><br/>
                    创建者：${newsList.nauthor}
                  </span>
            </div>
                </c:if>
            </c:forEach>
        </div>


        <div id="groups" class="box">
            <h3>推荐博主</h3>

            <div class="group">
                <div class="logo"><a href='http://570109268.iteye.com' target='_blank'><img alt="青春..荒唐的博客" class="logo"
                                                                                            src="../../statics/ITeyeImages/55ec8664-6609-3631-a27e-4b70e9ef53c3-thumb.jpg"
                                                                                            title="青春..荒唐的博客: 全栈笔录"
                                                                                            width="48px"/></a></div>
                <span>
                    <a href='http://570109268.iteye.com' target='_blank' title='青春..荒唐'>青春..荒唐</a><br/>
                    浏览量：37640
                  </span>
            </div>

            <div class="group">
                <div class="logo"><a href='http://ericchunli.iteye.com' target='_blank'><img alt="ericchunli的博客"
                                                                                             class="logo"
                                                                                             src="../../statics/ITeyeImages/user-logo-thumb.gif"
                                                                                             title="ericchunli的博客: "
                                                                                             width="48px"/></a></div>
                <span>
                    <a href='http://ericchunli.iteye.com' target='_blank' title='ericchunli'>ericchunli</a><br/>
                    浏览量：40646
                  </span>
            </div>

            <div class="group">
                <div class="logo"><a href='http://i042416.iteye.com' target='_blank'><img alt="i042416的博客" class="logo"
                                                                                          src="../../statics/ITeyeImages/ab7db218-a9cd-31c9-89a3-d02b57c38663-thumb.jpg"
                                                                                          title="i042416的博客: Java"
                                                                                          width="48px"/></a></div>
                <span>
                    <a href='http://i042416.iteye.com' target='_blank' title='i042416'>i042416</a><br/>
                    浏览量：4305
                  </span>
            </div>

            <div class="group">
                <div class="logo"><a href='http://342104628.iteye.com' target='_blank'><img alt="高级架构师的博客" class="logo"
                                                                                            src="../../statics/ITeyeImages/user-logo-thumb.gif"
                                                                                            title="高级架构师的博客: "
                                                                                            width="48px"/></a></div>
                <span>
                    <a href='http://342104628.iteye.com' target='_blank' title='高级架构师'>高级架构师</a><br/>
                    浏览量：3366
                  </span>
            </div>

            <div class="group">
                <div class="logo"><a href='http://wiselyman.iteye.com' target='_blank'><img alt="wiselyman的博客"
                                                                                            class="logo"
                                                                                            src="../../statics/ITeyeImages/5eba0aee-0492-3f5e-bf11-565204dbad88-thumb.png"
                                                                                            title="wiselyman的博客: 汪云飞记录本"
                                                                                            width="48px"/></a></div>
                <span>
                    <a href='http://wiselyman.iteye.com' target='_blank' title='wiselyman'>wiselyman</a><br/>
                    浏览量：1326725
                  </span>
            </div>

        </div>


    </div>

    <div id="nav">
        <div class="wrapper">
            <ul>
                <li><a href="http://www.iteye.com/" class='selected'>首页</a></li>
                <li><a href="http://www.iteye.com/news">资讯</a></li>
                <li><a href="http://www.iteye.com/magazines">精华</a></li>
                <li><a href="http://www.iteye.com/forums">论坛</a></li>
                <li><a href="http://www.iteye.com/ask">问答</a></li>
                <li><a href="http://www.iteye.com/blogs">博客</a></li>
                <li><a href="http://www.iteye.com/blogs/subjects">专栏</a></li>
                <li><a href="http://www.iteye.com/groups">群组</a></li>
                <!-- <li><a target="_blank" href="http://job.iteye.com/iteye">招聘</a></li>-->
                <li class="last"><a href="http://www.iteye.com/search">搜索</a></li>
            </ul>
        </div>
    </div>
</div>
<div id="footer">
    <div id="site_nav">
        <ul>
            <li><a href="/index/service">广告服务</a></li>
            <li><a href="http://webmaster.iteye.com">ITeye黑板报</a></li>
            <li><a href="/index/contactus">联系我们</a></li>
            <li class="last"><a href="/index/friend_links">友情链接</a></li>
        </ul>
    </div>
    <div id="copyright">
        &copy; 2003-2018 ITeye.com. [ <a href="http://www.miibeian.gov.cn">京ICP证070598号</a> 京公网安备11010502027441 ]<br/>
        北京创新乐知信息技术有限公司 版权所有<br/>
    </div>
</div>
<center><a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202012082400500"><img
        src="../../statics/ITeyeImages/biaoshi.gif"/></a></center>
</div>
<script type="text/javascript">
    document.write("<img src='../../statics/ITeyeImages/2e339482d6df40ba8a00e00e9c51e2e0.gif" + encodeURIComponent(document.location.href) + "&referrer=" + encodeURIComponent(document.referrer) + "&user_id=' width='0' height='0' />");
</script>


<script type="text/javascript">
    function pongoad57(url_list) {
        var html = "";
        for (var i = 0; i < url_list.length; i++) {
            var url = url_list[i];
            var li = "<a href='<orgurl>' target='_blank'><cityname>:<orgname></a>"
                .replace("<orgurl>", encodeURI(url.orgurl.escapeHTML()))
                .replace("<orgname>", url.orgname.escapeHTML())
                .replace("<joburl>", encodeURI(url.joburl.escapeHTML()))
                .replace("<cityname>", url.cityname.escapeHTML());
            if (url.jobname != null) {
                li += "<a target='_blank' href='" + encodeURI(url.joburl) + "'> 诚聘" + url.jobname.escapeHTML() + "</a>";
            }
            html += "<li>" + li + "</li>";
        }
        $$("#recommended ul").first().innerHTML = html;
    }
</script>

<script type="text/javascript">
    var url = encodeURIComponent(document.location.href);
    var id = 57;
    var callbackfun = "pongoad57";
    //document.write(unescape('%3Cscript src="http://a.pongo.cn/Job/GetAdForIteyeCallBack%3Fid%3D'+id+'%26Url%3D'+encodeURIComponent(url)+'%26&CallBack%3D'+callbackfun+'" type="text/javascript"%3E%3C/script%3E'));
</script>
<script src="../../statics/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="../../statics/js/tracking-1.0.1.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="../../statics/js/async-1.0.1.js"></script>
<script src="../../statics/js/tracking-1.0.3.js" type="text/javascript"></script>
<script type="text/javascript">var $csdn_iteye_jq = jQuery.noConflict();// 解决jq与prototype.js命名空间冲突的问题</script>
</body>
</html>
