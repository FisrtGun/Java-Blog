<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年3月11日,0011
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" dir="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ITeye Java编程 Spring框架 Ajax技术 agile敏捷软件开发 ruby on rails实践 - ITeye做最棒的软件开发交流社区</title>
    <meta name="description" content="Java编程,Spring Struts Webwork框架深入,XMLHTTP Ajax开发,Java Web开发,Java企业应用,Java设计模式,Java开源框架,Java应用服务器,Rich Client讨论,Ruby编程,Ruby DSL开发,Ruby on rails实践,JavaScript编程,敏捷软件开发XP TDD,软件配置管理,软件测试,项目管理UML,数据库,C#/.net C/C++ Erlang/FP PHP/Linux平台,精通Hibernate" />
    <meta name="keywords"  content="Java编程 Spring框架 Ajax技术 agile敏捷软件开发 ruby on rails实践 ITeye深度技术社区" />
    <meta name="baidu_union_verify" content="7b2a15d73dd1b1b6a67d7a4ddcfffa33" />
    <link rel="shortcut icon" href="../../statics/iteye/www.iteye.com/images/favicon.ico" type="image/x-icon" />
    <link rel="search" type="application/opensearchdescription+xml" href="../../statics/iteye/open_search.xml" title="ITeye" />
    <link href="../../statics/iteye/rss" rel="alternate" title="ITeye技术网站RSS频道订阅" type="application/rss+xml" />
    <link href="../../statics/iteye/www.iteye.com/stylesheets/new_homepage.css-1517972557.css" tppabs="http://www.iteye.com/stylesheets/new_homepage.css?1517972557" media="screen" rel="stylesheet" type="text/css" />
    <script src="../../statics/iteye/www.iteye.com/javascripts/application.js-1448702469" tppabs="http://www.iteye.com/javascripts/application.js?1448702469" type="text/javascript"></script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "../../statics/iteye/hm.baidu.com/hm.js-e19a8b00cf63f716d774540875007664"/*tpa=http://hm.baidu.com/hm.js?e19a8b00cf63f716d774540875007664*/;
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);


            //自动推送工具代码
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = '../../statics/iteye/zz.bdstatic.com/linksubmit/push.js'/*tpa=https://zz.bdstatic.com/linksubmit/push.js*/;
            }
            else {
                bp.src = '../../statics/iteye/push.zhanzhang.baidu.com/push.js'/*tpa=http://push.zhanzhang.baidu.com/push.js*/;
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
        <script type="text/javascript" ads-src="../../statics/iteye/csdnim.qtmojo.com/main/s-user=allyestest-allyestest-allyestest0410&db=csdnim&border=0&local=yes&js=ie" tppabs="http://csdnim.qtmojo.com/main/s?user=allyestest|allyestest|allyestest0410&db=csdnim&border=0&local=yes&js=ie" src="../creatim.qtmojo.cn/td/AllyesDeliver.min.js" tppabs="http://creatim.qtmojo.cn/td/AllyesDeliver.min.js" charset="gbk"></script>
        <!--全屏-->

        <!--浮标-->
        <script type="text/javascript" ads-src="../../statics/iteye/csdnim.qtmojo.com/main/s-user=csdn-homepage-floating_1&db=csdnim&border=0&local=yes&js=ie" tppabs="http://csdnim.qtmojo.com/main/s?user=csdn|homepage|floating_1&db=csdnim&border=0&local=yes&js=ie" src="../creatim.qtmojo.cn/td/AllyesDeliver.min.js" tppabs="http://creatim.qtmojo.cn/td/AllyesDeliver.min.js" charset="gbk"></script>
        <!--浮标-->
        <div class="clearfix"><div id="user_nav">

            <a href="http://www.iteye.com/login" class="welcome" title="登录">您还未登录 !</a>
            <a href="http://www.iteye.com/login">登录</a>
            <a href="http://www.iteye.com/signup" class="nobg">注册</a>
            <!--<a href="http://passport.csdn.net/account/mobileregister?from=http://www.iteye.com">注册</a>-->
        </div>
        </div>
        <div class="clearfix">
            <div id="branding">
                <a href="../../statics/iteyeindex.htm" tppabs="http://www.iteye.com/"><img alt="ITeye3.0" src="images/logo.gif-1448702469.gif" tppabs="http://www.iteye.com/images/logo.gif?1448702469" title="ITeye-最棒的软件开发交流社区" /></a>
            </div>
            <div id="gg">
                <ins data-revive-zoneid="156" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            </div>
        </div>
    </div>
    <div id="content" class="clearfix">
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
                                            <a href="http://download.csdn.net/album" target="_blank" title="下载精品专辑"><img alt="下载专辑" src="../../statics/iteye/www.iteye.com/upload/top_picture/0000/0150/下载专辑.jpg-1519460572.jpg" tppabs="http://www.iteye.com/upload/top_picture/0000/0150/下载专辑.jpg?1519460572" /></a>
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
                                                    <div class="dis " id="top_picture_button_0" >
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
                            (function(){
                                var total = 1;
                                var current = 0;
                                var auto_play_on = true;

                                $('bimg').observe('mouseover', function() {auto_play_on = false;});
                                $('bimg').observe('mouseout', function() {auto_play_on = true;});

                                var showPicture = function(index) {
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
                                    $('top_picture_button_' + i).observe('click', (function(i) {
                                        return function(ev) {
                                            showPicture(i);
                                        }
                                    })(i));
                                };

                                var autoPlay = function() {
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



                <div class="news_content" >
                    <h3><span>热点聚焦</span></h3>
                    <dl>
                        <dt><a href="#" tppabs="http://www.iteye.com/news/32920" target="_blank" title="JavaScript反调试技巧">JavaScript反调试技巧</a></dt>
                        <dd>
                            在这篇文章中，我打算跟大家总结一下关于JavaScript反调试技巧方面的内容。值得一提的是，其中有些方法已经被网络犯罪分子广泛应用到恶意软件之中了。
                            <a href="#" tppabs="http://www.iteye.com/news/32920" target="_blank" title="JavaScript反调试技巧">[详情]</a>
                        </dd>
                        <dt><a href="#" tppabs="http://www.iteye.com/news/32918" target="_blank" title="TIOBE 3 月排行榜：Ruby 重回前十，Kotlin 突围">TIOBE 3 月排行榜：Ruby 重回前十，Kotlin 突围</a></dt>
                        <dd>
                            TIOBE刚刚发布了3月编程语言排行榜。Ruby现在似乎正在重新受到关注，排名连续几个月上升，本月位居第9名。Julia和Kotlin ，在本月突围进入了前40名
                            <a href="#" tppabs="http://www.iteye.com/news/32918" target="_blank" title="TIOBE 3 月排行榜：Ruby 重回前十，Kotlin 突围">[详情]</a>
                        </dd>
                        <dt><a href="http://www.iteye.com/news/32916" target="_blank" title="如何向小白讲述软件架构发展历程？ ">如何向小白讲述软件架构发展历程？ </a></dt>
                        <dd>
                            软件架构是一个用于指导系统实现的草图，这个草图越详细对于系统实现的指导意义越重大，贯穿于软件的整个生命周期。
                            <a href="http://www.iteye.com/news/32916" target="_blank" title="如何向小白讲述软件架构发展历程？ ">[详情]</a>
                        </dd>
                    </dl>
                </div>

            </div>

            <div class="tuiguang">
                <ins data-revive-zoneid="157" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            </div>
            <div class="after">

                <div class="main_left">
                    <h3>
                        <a href="http://www.iteye.com/news" target="_blank">每日资讯</a>
                        <a href="http://www.iteye.com/news" class="more" target="_blank">[更多]</a>
                    </h3>
                    <ul>
                        <li class="title">
                            <a href="#" tppabs="http://www.iteye.com/news/32920" target="_blank" title="JavaScript反调试技巧">JavaScript反调试技巧</a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32917" target="_blank" title="16个富有创意的HTML5 Canvas动画特效集合">16个富有创意的HTML5 Canvas动画特效集合</a>
                        </li>
                        <li class="title">
                            <a href="#" target="_blank" title="TIOBE 3 月排行榜：Ruby 重回前十，Kotlin 突围">TIOBE 3 月排行榜：Ruby 重回前十，Kotlin ...</a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32916" target="_blank" title="如何向小白讲述软件架构发展历程？ ">如何向小白讲述软件架构发展历程？ </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32914" target="_blank" title="iOS微信内存监控 ">iOS微信内存监控 </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32912" target="_blank" title="Hybris平台Web架构模式演变：前后端分离">Hybris平台Web架构模式演变：前后端分离</a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32911" target="_blank" title="3 月全球数据库排名：PostgreSQL 再迎暴涨">3 月全球数据库排名：PostgreSQL 再迎暴涨</a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32907" target="_blank" title="如何用 Python 从 0 开始创建一个区块链？">如何用 Python 从 0 开始创建一个区块链？</a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32906" target="_blank" title="谷歌确认将限制Android非SDK接口使用了 ">谷歌确认将限制Android非SDK接口使用了 </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32905" target="_blank" title="Spring Boot 2.0正式发布，新特性解读 ">Spring Boot 2.0正式发布，新特性解读 </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32904" target="_blank" title="2018 编程语言关注度调查：Java 9 关注度上升">2018 编程语言关注度调查：Java 9 关注度 ...</a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32903" target="_blank" title="2018年10个技术性前瞻 ">2018年10个技术性前瞻 </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32902" target="_blank" title="Java 9 新特性，看这里就明白了 ">Java 9 新特性，看这里就明白了 </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32901" target="_blank" title="这么糟糕的代码，真的是我以前写的吗？ ">这么糟糕的代码，真的是我以前写的吗？ </a>
                        </li>
                        <li class="title">
                            <a href="http://www.iteye.com/news/32900" target="_blank" title="区块链常用架构是什么？它和保险业又如何结合？">区块链常用架构是什么？它和保险业又如何结 ...</a>
                        </li>
                    </ul>
                </div>



                <div class="main_right">
                    <h3>
                        <a href="http://www.iteye.com/blogs" target="_blank">博文推荐</a>
                        <a href="http://www.iteye.com/blogs" class="more" target="_blank">[更多]</a>
                    </h3>
                    <ul>
                        <li class="title">
                            <a href="http://coderlxl201209164551.iteye.com/blog/2412772" target="_blank" title="scala笔记－知识点梳理">scala笔记－知识点梳理</a>
                        </li>
                        <li class="title">
                            <a href="http://jerrywang-sap.iteye.com/blog/2412766" target="_blank" title="ABAP git客户端">ABAP git客户端</a>
                        </li>
                        <li class="title">
                            <a href="http://gaojingsong.iteye.com/blog/2412762" target="_blank" title="【JAVA之多线程下载文件实现】">【JAVA之多线程下载文件实现】</a>
                        </li>
                        <li class="title">
                            <a href="http://1106548866.iteye.com/blog/2412713" target="_blank" title="网站的站内优化和网站运营都有哪些方式？">网站的站内优化和网站运营都有哪些方式？</a>
                        </li>
                        <li class="title">
                            <a href="http://gaojingsong.iteye.com/blog/2412747" target="_blank" title="【Python数据类型介绍】">【Python数据类型介绍】</a>
                        </li>
                        <li class="title">
                            <a href="http://1106548866.iteye.com/blog/2412716" target="_blank" title="夜场可以帮助社会减轻就业压力">夜场可以帮助社会减轻就业压力</a>
                        </li>
                        <li class="title">
                            <a href="http://342104628.iteye.com/blog/2412721" target="_blank" title="大型分布式网站架构技术总结">大型分布式网站架构技术总结</a>
                        </li>
                        <li class="title">
                            <a href="http://huangqiqing123.iteye.com/blog/2412701" target="_blank" title="keycloak 一个应用实例">keycloak 一个应用实例</a>
                        </li>
                        <li class="title">
                            <a href="http://jerrywang-sap.iteye.com/blog/2412694" target="_blank" title="用ABAP 生成二维码 QR Code">用ABAP 生成二维码 QR Code</a>
                        </li>
                        <li class="title">
                            <a href="http://jerrywang-sap.iteye.com/blog/2412693" target="_blank" title="面试问题 - 只用位操作在ABAP里实现a+b">面试问题 - 只用位操作在ABAP里实现a+b</a>
                        </li>
                        <li class="title">
                            <a href="http://gaojingsong.iteye.com/blog/2412691" target="_blank" title="【网站流量与性能分析指标】">【网站流量与性能分析指标】</a>
                        </li>
                        <li class="title">
                            <a href="http://lizhizhang.iteye.com/blog/2412670" target="_blank" title="Sparrow算法篇 从日期取交集到思维模式-2">Sparrow算法篇 从日期取交集到思维模式-2</a>
                        </li>
                        <li class="title">
                            <a href="http://wujiu.iteye.com/blog/2412657" target="_blank" title="JDK8 ReentrantReadWriteLock源码分析">JDK8 ReentrantReadWriteLock源码分析</a>
                        </li>
                        <li class="title">
                            <a href="http://itxiaojiang.iteye.com/blog/2412647" target="_blank" title="Mybatis源码分析——运行原理及流程">Mybatis源码分析——运行原理及流程</a>
                        </li>
                        <li class="title">
                            <a href="http://l4432848.iteye.com/blog/2412637" target="_blank" title="Spring  AOP">Spring  AOP</a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="tuiguang">

            </div>

            <div id="column">
                <h3>
                    <a href="http://www.iteye.com/forums/hot_topics" target="_blank">热门讨论</a>
                    <a href="http://www.iteye.com/forums/hot_topics" class="more" target="_blank">[更多]</a>
                </h3>
                <ul class='column_left'>
                    <li>                    <a href="javascript:if(confirm('http://www.iteye.com/topic/1147193  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������, �����������, ����Ŀ����ֹͣ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.iteye.com/topic/1147193'" tppabs="http://www.iteye.com/topic/1147193" target="_blank" title="springboot--如何优雅的使用mybatis">springboot--如何优雅的使用mybatis</a>
                    </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147195" target="_blank" title="Minidao 1.6.2 版本发布，超轻量Java持久化框架（Hibernate完美助手）">Minidao 1.6.2 版本发布，超轻量Java持久化框架（Hibernate完美助手）</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147191" target="_blank" title="捋一捋dubbo配置">捋一捋dubbo配置</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147194" target="_blank" title="微信+支付宝个人免签源码">微信+支付宝个人免签源码</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147187" target="_blank" title="C++短信验证码接口调用demo">C++短信验证码接口调用demo</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147189" target="_blank" title="Python短信验证码接口调用">Python短信验证码接口调用</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147188" target="_blank" title="PHP短信验证码接口调用">PHP短信验证码接口调用</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147196" target="_blank" title="联想系列 Ghost Windows7 32&amp;64 官方旗舰版v201801">联想系列 Ghost Windows7 32&amp;64 官方旗舰版v201801</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147197" target="_blank" title="新萝卜家园Ghost XP SP3装机版v2018.03">新萝卜家园Ghost XP SP3装机版v2018.03</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147199" target="_blank" title="深度技术·值得深入 Windows7 32位&amp;64位系统 精选版v201801">深度技术·值得深入 Windows7 32位&amp;64位系统 精选版v201801</a>
                </li>                                  <li>                    <a href="http://www.iteye.com/topic/1147198" target="_blank" title="雨林木风ghost win8.1 64位专业装机版V2018.03 ">雨林木风ghost win8.1 64位专业装机版V2018.03 </a>
                </li>                              </ul>
            </div>





            <div id="column">
                <h3>
                    <a href="http://www.iteye.com/groups/all_topics" target="_blank">群组热门讨论</a>
                    <a href="http://www.iteye.com/groups/all_topics" class="more" target="_blank">[更多]</a>
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
                    <tr onmouseover="$(this).addClassName('mouse_over');" onmouseout="$(this).removeClassName('mouse_over');">
                        <td>
                            <a href="http://software.group.iteye.com/group/topic/125524" title='经过验证的项目管理实践分享-跨越敏捷的那些坑' target='_blank'>经过验证的项目管理实践分享-跨越敏捷的那 ...</a>
                        </td>
                        <td class="group"><a href="http://software.group.iteye.com/" target="_blank">CMMI与敏捷</a></td>
                        <td class="group">1 / 241</td>
                        <td class="date">2018-03-02 <a href="http://software.group.iteye.com/group/topic/125524/post/356770" target="_blank"><img alt="浏览最新的文章" src="../../statics/iteye/www.iteye.com/images/icon_last_post.gif-1448702469.gif" tppabs="http://www.iteye.com/images/icon_last_post.gif?1448702469" /></a></td>
                    </tr>
                    <tr onmouseover="$(this).addClassName('mouse_over');" onmouseout="$(this).removeClassName('mouse_over');">
                        <td>
                            <a href="http://sa.group.iteye.com/group/topic/125521" title='2018 国内 DevOps 趋势分析与实践分享' target='_blank'>2018 国内 DevOps 趋势分析与实践分享</a>
                        </td>
                        <td class="group"><a href="http://sa.group.iteye.com/" target="_blank">系统架构与架构应用</a></td>
                        <td class="group">1 / 462</td>
                        <td class="date">2018-02-26 <a href="http://sa.group.iteye.com/group/topic/125521/post/356765" target="_blank"><img alt="浏览最新的文章" src="../../statics/iteye/www.iteye.com/images/icon_last_post.gif-1448702469.gif" tppabs="http://www.iteye.com/images/icon_last_post.gif?1448702469" /></a></td>
                    </tr>
                    <tr onmouseover="$(this).addClassName('mouse_over');" onmouseout="$(this).removeClassName('mouse_over');">
                        <td>
                            <a href="http://lucene-group.group.iteye.com/group/topic/125511" title='一个简单的Lucene工具类' target='_blank'>一个简单的Lucene工具类</a>
                        </td>
                        <td class="group"><a href="http://lucene-group.group.iteye.com/" target="_blank">lucene爱好者</a></td>
                        <td class="group">1 / 835</td>
                        <td class="date">2018-02-12 <a href="http://lucene-group.group.iteye.com/group/topic/125511/post/356753" target="_blank"><img alt="浏览最新的文章" src="../../statics/iteye/www.iteye.com/images/icon_last_post.gif-1448702469.gif" tppabs="http://www.iteye.com/images/icon_last_post.gif?1448702469" /></a></td>
                    </tr>
                    </tbody>
                </table>
            </div>




        </div>
        <div id="local">
            <div class="search column">
                <form action="http://www.iteye.com/search"  method="get">
                    <input type="hidden" name="type" value="all" />
                    <input type="text" name="query" class="text" id="query"  style="width: 152px; *width:145px; "/>
                    <input type="submit" value="搜索" class="submit"/>
                </form>
            </div>
            <div class="tuiguang">
                <ins data-revive-zoneid="159" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            </div>


            <div id="recommend" class="box ">
                <h3>推荐精华文章</h3>
                <ul>
                    <li><a href="http://www.iteye.com/magazines/134-IDE-Comparison" target="_blank" title="编程语言 IDE 对比">编程语言 IDE 对比</a></li>
                    <li><a href="http://www.iteye.com/magazines/133-Static-Site-Generators" target="_blank" title="最全的静态网站生成器（开源项目）">最全的静态网站生成器（开源项目）</a></li>
                    <li><a href="http://www.iteye.com/magazines/132-Java-NIO" target="_blank" title="Java NIO 系列教程">Java NIO 系列教程</a></li>
                    <li><a href="http://www.iteye.com/magazines/131-Java-Concurrency" target="_blank" title="Java并发教程（Oracle官方资料）">Java并发教程（Oracle官方资料）</a></li>
                    <li><a href="http://www.iteye.com/magazines/130" target="_blank" title="编程精华资源（ITeye优秀专栏）大汇总">编程精华资源（ITeye优秀专栏）大汇总</a></li>
                    <li><a href="http://www.iteye.com/magazines/129-Java-8-Tutorial" target="_blank" title="Java 8 简明教程 ">Java 8 简明教程 </a></li>
                </ul>
            </div>


            <div class="tuiguang">
                <ins data-revive-zoneid="160" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
            </div>

            <div class="tuiguang">

            </div>


            <div id="groups" class="box">
                <h3>活跃群组</h3>
                <div class="group">
                    <div class='logo'><a href="http://javaeye-water.group.iteye.com/" target='_blank'><img src="../../statics/iteye/www.iteye.com/upload/logo/group/80/eb3bcb04-f1f0-426b-abe7-209b0e8c4760.jpg" tppabs="http://www.iteye.com/upload/logo/group/80/eb3bcb04-f1f0-426b-abe7-209b0e8c4760.jpg" alt='灌水乐园群组' title='灌水乐园: ITeye的灌水乐园......' height='48' width='48' /></a></div>
                    <span>
                    <a href="http://javaeye-water.group.iteye.com/" target="_blank"><strong>灌水乐园</strong></a>
                    <br/>成员：423人
                  </span>
                </div>
                <div class="group">
                    <div class='logo'><a href="http://jbpm.group.iteye.com/" target='_blank'><img src="../../statics/iteye/www.iteye.com/upload/logo/group/40/f37a1679-2f71-4374-9c46-a8b385912ba1.gif" tppabs="http://www.iteye.com/upload/logo/group/40/f37a1679-2f71-4374-9c46-a8b385912ba1.gif" alt='JBPM @net群组' title='JBPM @net: 工作流的运用越来越多，在Java领域最近异军突起的工作流非JBPM莫属了。可是在国内这方面的资料很少，希望可以通过JavaEye这个开源社区把JBPM普及开来！' height='48' width='48' /></a></div>
                    <span>
                    <a href="http://jbpm.group.iteye.com/" target="_blank"><strong>JBPM @net</strong></a>
                    <br/>成员：7526人
                  </span>
                </div>
                <div class="group">
                    <div class='logo'><a href="http://activiti.group.iteye.com/" target='_blank'><img src="../../statics/iteye/www.iteye.com/upload/logo/group/804835/495b5e63-cc24-3edc-b486-f82cad375467-normal.jpg" tppabs="http://www.iteye.com/upload/logo/group/804835/495b5e63-cc24-3edc-b486-f82cad375467-normal.jpg" alt='Activiti群组' title='Activiti: Alfresco软件在2010年5月17日宣布Activiti业务流程管理（BPM）开源项目的正式启动，其首席架构师由业务流程管理BPM的专家 Tom Baeyens担任。
Activiti项目是一项新的基于Apache许可的开源BPM平台，从基础开始构建，旨在提供支持新的BPMN 2.0标准，包括支持对象管理组（OMG），面对新技术的机遇，诸如互操作性和云架构，提供技术实现。

工作流的运用越来越多，Activiti发展势头强劲。可是在国内这方面的资料很少，希望可以通过JavaEye这个开源社区把Activiti普及开来！' height='48' width='48' /></a></div>
                    <span>
                    <a href="http://activiti.group.iteye.com/" target="_blank"><strong>Activiti</strong></a>
                    <br/>成员：140人
                  </span>
                </div>
                <div class="group">
                    <div class='logo'><a href="http://javaeye-admin.group.iteye.com/" target='_blank'><img src="../../statics/iteye/www.iteye.com/upload/logo/group/84/32858d7c-ed39-4ce4-bba3-16d380cb4e9e.gif" tppabs="http://www.iteye.com/upload/logo/group/84/32858d7c-ed39-4ce4-bba3-16d380cb4e9e.gif" alt='站务讨论群组' title='站务讨论: ITeye站务圈子' height='48' width='48' /></a></div>
                    <span>
                    <a href="http://javaeye-admin.group.iteye.com/" target="_blank"><strong>站务讨论</strong></a>
                    <br/>成员：431人
                  </span>
                </div>
                <div class="group">
                    <div class='logo'><a href"http://pcdiy.group.iteye.com/" target='_blank'><img src="../../statics/iteye/www.iteye.com/upload/logo/group/39886/40406440-9eee-3cbe-a70d-f0e69dfedd0b.jpg" tppabs="http://www.iteye.com/upload/logo/group/39886/40406440-9eee-3cbe-a70d-f0e69dfedd0b.jpg" alt='电脑DIY群组' title='电脑DIY: 圈主（大家可以称呼我为ice，有些网友喜欢叫冰神）自1997年开始研究电脑DIY，经验极其丰富，教训也是吃足啊，但愿后人不走后悔路，诚心向各位提供咨询服务。纯粹个人业余爱好，如有观点不同很正常，千万不要在圈中随意谩骂。同时谢绝任何形式的广告，推荐可以，广告不行。' height='48' width='48' /></a></div>
                    <span>
                    <a href="http://pcdiy.group.iteye.com/" target="_blank"><strong>电脑DIY</strong></a>
                    <br/>成员：3725人
                  </span>
                </div>
            </div>



            <div id="groups" class="box">
                <h3>热门专栏</h3>
                <div class="group">
                    <div class='logo'>
                        <a href="http://www.iteye.com/blogs/subjects/sparrow-java" target="_blank"><img alt="877aca81-daac-33c8-8bf9-3a886cebc6c3" height="48" src="../../statics/iteye/www.iteye.com/upload/logo/blog_wiki/1287735/877aca81-daac-33c8-8bf9-3a886cebc6c3.jpg" tppabs="http://www.iteye.com/upload/logo/blog_wiki/1287735/877aca81-daac-33c8-8bf9-3a886cebc6c3.jpg" width="48" /></a>
                    </div>
                    <span>
                    <a href="http://www.iteye.com/blogs/subjects/sparrow-java" target="_blank">自己动手写java 框架</a><br />
                    创建者：zh_harry
                  </span>
                </div>
                <div class="group">
                    <div class='logo'>
                        <a href="http://www.iteye.com/blogs/subjects/springMVC" target="_blank"><img alt="Ad26f909-6440-35a9-b4e9-9aea825bd38e" height="48" src="../../statics/iteye/www.iteye.com/upload/logo/blog_wiki/1021360/ad26f909-6440-35a9-b4e9-9aea825bd38e.png-1413616847" tppabs="http://www.iteye.com/upload/logo/blog_wiki/1021360/ad26f909-6440-35a9-b4e9-9aea825bd38e.png?1413616847" width="48" /></a>
                    </div>
                    <span>
                    <a href="http://www.iteye.com/blogs/subjects/springMVC" target="_blank">springMVC介绍</a><br />
                    创建者：234390216
                  </span>
                </div>
                <div class="group">
                    <div class='logo'>
                        <a href="http://www.iteye.com/blogs/subjects/Spring-Cloud" target="_blank"><img alt="12d8ea3d-4199-3941-8a17-acd5024729b8" height="48" src="../../statics/iteye/www.iteye.com/upload/logo/blog_wiki/1274253/12d8ea3d-4199-3941-8a17-acd5024729b8.jpg-1508236696" tppabs="http://www.iteye.com/upload/logo/blog_wiki/1274253/12d8ea3d-4199-3941-8a17-acd5024729b8.jpg?1508236696" width="48" /></a>
                    </div>
                    <span>
                    <a href="http://www.iteye.com/blogs/subjects/Spring-Cloud" target="_blank">Spring_Cloud构建云架构</a><br />
                    创建者：springcloud关注者
                  </span>
                </div>
                <div class="group">
                    <div class='logo'>
                        <a href="http://www.iteye.com/blogs/subjects/spring4" target="_blank"><img alt="23e1c30e-ef8c-3702-aa3c-e83277ffca91" height="48" src="../../statics/iteye/www.iteye.com/upload/logo/blog_wiki/1261301/23e1c30e-ef8c-3702-aa3c-e83277ffca91.png-1500434003" tppabs="http://www.iteye.com/upload/logo/blog_wiki/1261301/23e1c30e-ef8c-3702-aa3c-e83277ffca91.png?1500434003" width="48" /></a>
                    </div>
                    <span>
                    <a href="http://www.iteye.com/blogs/subjects/spring4" target="_blank">Spring基础知识</a><br />
                    创建者：234390216
                  </span>
                </div>
                <div class="group">
                    <div class='logo'>
                        <a href="http://www.iteye.com/blogs/subjects/AngularJS-LIUXU" target="_blank"><img alt="Eace7a35-2604-38a7-aa1e-e77dd4bea5e4" height="48" src="../../statics/iteye/www.iteye.com/upload/logo/blog_wiki/1273325/eace7a35-2604-38a7-aa1e-e77dd4bea5e4.jpg-1507738069" tppabs="http://www.iteye.com/upload/logo/blog_wiki/1273325/eace7a35-2604-38a7-aa1e-e77dd4bea5e4.jpg?1507738069" width="48" /></a>
                    </div>
                    <span>
                    <a href="http://www.iteye.com/blogs/subjects/AngularJS-LIUXU" target="_blank">Angularjs实战</a><br />
                    创建者：柳絮飞祭奠
                  </span>
                </div>
            </div>



            <div id="groups" class="box">
                <h3>推荐博主</h3>

                <div class="group">
                    <div class="logo"><a href="http://570109268.iteye.com/" target='_blank'><img alt="青春..荒唐的博客" class="logo" src="../../statics/iteye/www.iteye.com/upload/logo/user/1228656/55ec8664-6609-3631-a27e-4b70e9ef53c3-thumb.jpg" tppabs="http://www.iteye.com/upload/logo/user/1228656/55ec8664-6609-3631-a27e-4b70e9ef53c3-thumb.jpg" title="青春..荒唐的博客: 全栈笔录" width="48px" /></a></div>
                    <span>
                    <a href="http://570109268.iteye.com/" target='_blank' title='青春..荒唐'>青春..荒唐</a><br />
                    浏览量：37100
                  </span>
                </div>

                <div class="group">
                    <div class="logo"><a href="http://ericchunli.iteye.com/" target='_blank'><img alt="ericchunli的博客" class="logo" src="../../statics/iteye/www.iteye.com/images/user-logo-thumb.gif-1448702469.gif" tppabs="http://www.iteye.com/images/user-logo-thumb.gif?1448702469" title="ericchunli的博客: " width="48px" /></a></div>
                    <span>
                    <a href="http://ericchunli.iteye.com/" target='_blank' title='ericchunli'>ericchunli</a><br />
                    浏览量：40584
                  </span>
                </div>

                <div class="group">
                    <div class="logo"><a href="http://i042416.iteye.com/" target='_blank'><img alt="i042416的博客" class="logo" src="../../statics/iteye/www.iteye.com/upload/logo/user/1288869/ab7db218-a9cd-31c9-89a3-d02b57c38663-thumb.jpg-1518346666.jpg" tppabs="http://www.iteye.com/upload/logo/user/1288869/ab7db218-a9cd-31c9-89a3-d02b57c38663-thumb.jpg?1518346666" title="i042416的博客: Java" width="48px" /></a></div>
                    <span>
                    <a href="http://i042416.iteye.com/" target='_blank' title='i042416'>i042416</a><br />
                    浏览量：4305
                  </span>
                </div>

                <div class="group">
                    <div class="logo"><a href="http://huangjinjin520.iteye.com/" target='_blank'><img alt="huangjinjin520的博客" class="logo" src="../../statics/iteye/www.iteye.com/upload/logo/user/1281106/a964e159-d9c5-38eb-bd40-8113de1cf9b4-thumb.jpg" tppabs="http://www.iteye.com/upload/logo/user/1281106/a964e159-d9c5-38eb-bd40-8113de1cf9b4-thumb.jpg" title="huangjinjin520的博客: " width="48px" /></a></div>
                    <span>
                    <a href="http://huangjinjin520.iteye.com/" target='_blank' title='huangjinjin520'>huangjinjin520</a><br />
                    浏览量：7470
                  </span>
                </div>

                <div class="group">
                    <div class="logo"><a href="http://wiselyman.iteye.com/" target='_blank'><img alt="wiselyman的博客" class="logo" src="../../statics/iteye/www.iteye.com/upload/logo/user/1290668/5eba0aee-0492-3f5e-bf11-565204dbad88-thumb.png-1520475347.png" tppabs="http://www.iteye.com/upload/logo/user/1290668/5eba0aee-0492-3f5e-bf11-565204dbad88-thumb.png?1520475347" title="wiselyman的博客: 汪云飞记录本" width="48px" /></a></div>
                    <span>
                    <a href="http://wiselyman.iteye.com/" target='_blank' title='wiselyman'>wiselyman</a><br />
                    浏览量：1324903
                  </span>
                </div>

            </div>


        </div>

        <div id="nav">
            <div class="wrapper">
                <ul>
                    <li><a href="index" tppabs="http://www.iteye.com/" class='selected'>首页</a></li>
                    <li><a href="http://www.iteye.com/news">资讯</a></li>
                    <li><a href="http://www.iteye.com/magazines">精华</a></li>
                    <li><a href="#" tppabs="http://www.iteye.com/forums">论坛</a></li>
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
                <li><a href="http://www.iteye.com/index/service">广告服务</a></li>
                <li><a href="http://webmaster.iteye.com/">ITeye黑板报</a></li>
                <li><a href="http://www.iteye.com/index/contactus">联系我们</a></li>
                <li class="last"><a href="http://www.iteye.com/index/friend_links">友情链接</a></li>
            </ul>
        </div>
        <div id="copyright">
            &copy; 2003-2018 ITeye.com.    [ <a href="http://www.miibeian.gov.cn/">京ICP证070598号</a>  京公网安备11010502027441 ]<br/>
            北京创新乐知信息技术有限公司 版权所有<br />
        </div>
    </div>
    <center><a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202012082400500"><img src="../../statics/iteye/www.iteye.com/images/biaoshi.gif" tppabs="http://www.iteye.com/images/biaoshi.gif" /></a></center>
</div>
<script type="text/javascript">
    document.write("<img src='http://stat.iteye.com/?url="+ encodeURIComponent(document.location.href) + "&referrer=" + encodeURIComponent(document.referrer) + "&user_id=' width='0' height='0' />");
</script>



<script type="text/javascript">
    function pongoad57(url_list)
    {
        var html = "";
        for(var i = 0;i < url_list.length; i++){
            var url = url_list[i];
            var li = "<a href='<orgurl>' target='_blank'><cityname>:<orgname></a>"
                .replace("<orgurl>", encodeURI(url.orgurl.escapeHTML()))
                .replace("<orgname>", url.orgname.escapeHTML())
                .replace("<joburl>", encodeURI(url.joburl.escapeHTML()))
                .replace("<cityname>", url.cityname.escapeHTML());
            if (url.jobname != null){
                li += "<a target='_blank' href='" + encodeURI(url.joburl) + "'> 诚聘" + url.jobname.escapeHTML() + "</a>";
            }
            html += "<li>" + li + "</li>";
        }
        $$("#recommended ul").first().innerHTML=html;
    }
</script>

<script type="text/javascript">
    var url = encodeURIComponent(document.location.href);
    var id = 57;
    var callbackfun="pongoad57";
    //document.write(unescape('%3Cscript src="http://a.pongo.cn/Job/GetAdForIteyeCallBack%3Fid%3D'+id+'%26Url%3D'+encodeURIComponent(url)+'%26&CallBack%3D'+callbackfun+'" type="text/javascript"%3E%3C/script%3E'));
</script>
<script src="../../statics/iteye/c.csdnimg.cn/public/common/libs/jquery/jquery-1.11.1.min.js" tppabs="http://c.csdnimg.cn/public/common/libs/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="../../statics/iteye/csdnimg.cn/asdf/tracking-1.0.1.js" tppabs="http://csdnimg.cn/asdf/tracking-1.0.1.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="../../statics/iteye/csdnimg.cn/asdf/async-1.0.1.js" tppabs="http://csdnimg.cn/asdf/async-1.0.1.js"></script>
<script src="../../statics/iteye/csdnimg.cn/pubfooter/js/tracking-1.0.3.js-version=20130923164150" tppabs="http://csdnimg.cn/pubfooter/js/tracking-1.0.3.js?version=20130923164150" type="text/javascript"></script>
<script type="text/javascript">var $csdn_iteye_jq = jQuery.noConflict();// 解决jq与prototype.js命名空间冲突的问题</script>
</body>
</html>

