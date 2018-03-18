<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/12
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="CSTO软件外包和项目交易网，涵盖网站建设，网站制作，嵌入式系统，ios应用，安卓软件开发，UI设计等IT外包项目。"/>
    <meta name="keywords" content="项目外包，软件外包，网站建设，嵌入式系统，网站制作，安卓软件开发，it外包，ios应用，UI设计"/>
    <title>
        CSTO-中文软件外包和项目交易平台</title>
    <!--<link rel="icon" href="http://www.csto.com/images/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="http://www.csto.com/images/favicon.ico" type="image/x-icon" />
    <link rel="Bookmark" href="http://www.csto.com/images/favicon.ico" type="image/x-icon" />-->
    <link rel="icon" href="http://csdnimg.cn/public/favicon-g.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="http://csdnimg.cn/public/favicon-g.ico" type="image/x-icon" />
    <link rel="Bookmark" href="http://csdnimg.cn/public/favicon-g.ico" type="image/x-icon" />
    <link href="../../statics/css/HomePage.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        var site_url = "http://www.csto.com/";
        var is_logged = false;
    </script>
    <script type="text/javascript" src="../../statics/js/jquery.js"></script>
    <script type="text/javascript" src="../../statics/js/jquery_extend.js"></script>
    <script type="text/javascript" src="../../statics/js/login.js"></script>

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?67fed6c225de3f90d9f513aed5a91532";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-33350846-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
    <script type="text/javascript" src="../../statics/js/maintenance.js"></script>
    <script type="text/javascript">
        $(function(){
            $('#lingyu,#jishu').tabs();
            $('.member_or_project').toggle(function(){
                $(this).addClass('toggle');
                $('.ItemClass a').each(function() {
                    var _href = $(this).attr('href').replace('member/domain','project/list/tag1');
                    $(this).attr('href',_href);
                });
            },function(){
                $(this).removeClass('toggle');
                $('.ItemClass a').each(function() {
                    var _href = $(this).attr('href').replace('project/list/tag1','member/domain');
                    $(this).attr('href', _href);
                });
            });
        });
    </script>
</head>

<body id="HomePage">
<div
        class="header_logout">
    <div class="header">
        <div class="dl">
            <div class="dd" id="logo"><a href="/main/index" title="返回CSTO首页"></a></div>
            <div class="dd">
                <ul class="menu_logout">
                    <li> <a href="#">找人才</a> </li>
                    <li> <a href="#">找项目</a> </li>
                    <li> <a href="#">案例库</a> </li>
                    <li>
                        <a href="javascript:void(0);" onclick="login_csdn('http://www.csto.com/my')">我的T台</a>          </li>
                    <li> <a href="#">资讯</a> </li>
                </ul>
            </div>
            <div class="dd">
                <form id="Search"  method="post" action="#" >
                    <select name="xm">
                        <option value="2">找人才</option>
                        <option value="1">找项目</option>
                        <option value="3">找案例</option>
                    </select>
                    <input type="text" id="" name="key" value=""/>
                    <input type="submit" value="" />
                </form>
            </div>
            <div class="dd user_info">
                <span id="user_login"> <a href="#">注册</a>/ <a href="#">登录</a> </span>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $("#Search select").not("select:disabled").sSelect();
        $("#Search").addClass("Default");
        var key = '';
        if (key == '')
            $("#Search input[type='text']").val("请输入关键字");
        $("#Search input[type='text']").focus(function () {
            $("#Search").removeClass("Default").addClass("Focus");
            if ($(this).val() == '请输入关键字')
                $("#Search input[type='text']").val("");
        });
        $("#Search input[type='text']").blur(function () {
            $("#Search").removeClass("Focus").addClass("Default");
            if ($(this).val() == "") {
                $(this).val("请输入关键字");
            }
        });
        $("#Search").submit(function () {
            if ($("#Search input[type='text']").val() == "" || $("#Search input[type='text']").val() == "请输入关键字") {
                alert("你让我查点什么好呢~ \n对了，今天天气不错");
                return false;
            }
        });

        $(".menu a").each(function () {
            var urlLength = site_url.toString().length;
            var navUrl = encodeURI($(this).attr('href').substring(urlLength)).toLowerCase();
            //var navUrl = $(this).attr('href').substring(27);		alert(navUrl);
            if (window.location.href.toLowerCase().indexOf(navUrl) > 0) {
                $(this).parents('li').addClass("selected").prevAll('li').removeClass("selected");
            }
        });
        $("#left").css("min-height",$("#right").height());
    });
</script>
<div id="HomeBanner"> <a>免费发项目</a> </div>
<div id="HomeBannerB"> </div>
<div class="wrap">
    <div class="banner_s">
        <h2><strong>500,000+</strong>优秀的IT企业及个人为您提供外包服务</h2>
        <div class="float-right"><a href="#" class="publish_free"></a><a href="http://www.csto.com/help/employer">如何进行项目交易？</a></div>
    </div>
    <div class="left">
        <ul class="member_or_project">
            <li class="member">人才</li>
            <li class="project">项目</li>
        </ul>
        <div class="ItemClass">
            <h2>按领域分类找</h2>
            <ul>
                <li class="first">
                    移动应用开发        </li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-7.html">
                    Android          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-6.html">
                    iOS          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-31.html">
                    其他移动平台          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-36.html">
                    iPad          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-8.html">
                    Windows Phone          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-37.html">
                    Symbian          </a></li>
            </ul>
            <ul>
                <li class="first">
                    网站建设        </li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-10.html">
                    网站开发          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-38.html">
                    电子商务          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-15.html">
                    数据库          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-9.html">
                    网站前端开发          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-7575.html">
                    微信          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-13.html">
                    开放平台          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-12.html">
                    网站运维          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-40.html">
                    网页游戏          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-39.html">
                    网站测试          </a></li>
            </ul>
            <ul>
                <li class="first">
                    软件开发        </li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-21.html">
                    企业软件          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-35.html">
                    系统开发          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-16.html">
                    桌面软件          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-34.html">
                    应用程序及脚本          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-19.html">
                    嵌入式          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-18.html">
                    网络软件          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-22.html">
                    算法          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-41.html">
                    办公自动化 OA          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-17.html">
                    游戏软件          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-20.html">
                    多媒体软件          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-30.html">
                    软件测试          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-2122.html">
                    金蝶ERP          </a></li>
            </ul>
            <ul>
                <li class="first">
                    设计        </li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-24.html">
                    网站设计 UI/UE          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-42.html">
                    软件界面设计          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-45.html">
                    3D建模及CAD          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-23.html">
                    平面设计          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-26.html">
                    Flash动画          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-44.html">
                    图片处理          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-43.html">
                    图标设计 Logo          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-27.html">
                    多媒体制作          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-46.html">
                    插画动漫          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-47.html">
                    网店模版设计          </a></li>
            </ul>
            <ul>
                <li class="first">
                    其他        </li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-33.html">
                    未归类          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-32.html">
                    需求分析          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-28.html">
                    网络推广和营销          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-50.html">
                    数据录入          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-48.html">
                    搜索引擎优化 SEO          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-29.html">
                    翻译          </a></li>
                <li><a target="_blank" href="http://www.csto.com/member/domain-49.html">
                    网络调研          </a></li>
            </ul>
            <ul class="ezone">
                <li class="first">企业专区</li>
                <li><a target="_blank" href="http://www.csto.com/ezone/kingdee"> 金蝶 </a></li>
                <!-- <li><a target="_blank" href="http://www.csto.com/activity/kingdee"> 赢在KIS </a></li> -->
                <li><a target="_blank" href="http://www.csto.com/ezone/weixin"> 微信 </a></li>
            </ul>
        </div>
        <div id="HomeInfo">
            <h2>资讯</h2>
            <ul class="news">
                <li><a href="http://www.csto.com/info/details/id:170" target="_blank"><div style="height:180px;overflow:hidden;"><img src="../../statics/cstoImages/111.jpg" alt="" /></div></a><li>
                <c:forEach items="${iteyeInformations}" var="iteyeInformations" varStatus="s">
                <li><a href="http://www.csto.com/info/details/id:170" target="_blank">${iteyeInformations.ititle}</a></li>
                </c:forEach>
            </ul>
            <a class="more" href="http://www.csto.com/info" target="_blank" title="更多资讯">more</a> </div>
    </div>
    <div class="right">
        <h2>热门领域人才</h2>
        <div id="lingyu">
            <ul>
                <li><a href="#ly_1" title="系统开发" id="system">系统开发</a></li>
                <li><a href="#ly_2" title="Android" id="android">Android</a></li>
                <li><a href="#ly_3" title="网站开发" id="wero">网站开发</a></li>
                <li><a href="#ly_4" title="企业软件" id="qiye">企业软件</a></li>
                <li><a href="#ly_5" title="应用程序及脚本" id="project">应用程序及...</a></li>
                <li><a href="#ly_6" title="嵌入式" id="qianrushi">嵌入式</a></li>
            </ul>
            <div id="ly_1">
                <ul>
                    <c:forEach items="${genius1}" var="genius1" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius1.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius1.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_2">
                <ul>
                    <c:forEach items="${genius2}" var="genius2" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius2.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius2.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_3">
                <ul>
                    <c:forEach items="${genius3}" var="genius3" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius3.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius3.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_4">
                <ul>
                    <c:forEach items="${genius4}" var="genius4" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius4.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius4.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_5">
                <ul>
                    <c:forEach items="${genius5}" var="genius5" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius5.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius5.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_6">
                <ul>
                    <c:forEach items="${genius6}" var="genius6" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius6.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius6.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <h2>热门技术人才</h2>
        <div id="jishu">
            <ul>
                <li><a href="#ly_7" title="C++" id="c++">C++</a></li>
                <li><a href="#ly_8" title="C#" id="c#">C#</a></li>
                <li><a href="#ly_9" title="Android" id="andro">Andro...</a></li>
                <li><a href="#ly_10" title="jQuery" id="jquer">jQuer...</a></li>
                <li><a href="#ly_11" title="Java" id="java">Java</a></li>
                <li><a href="#ly_12" title="JavaScript" id="javas">JavaS...</a></li>
            </ul>
            <div id="ly_7">
                <ul>
                    <c:forEach items="${genius7}" var="genius7" varStatus="s">
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius7.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius7.author} </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_8">
                <ul>
                    <c:forEach items="${genius8}" var="genius8" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius8.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius8.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_9">
                <ul>
                    <c:forEach items="${genius9}" var="genius9" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius9.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius9.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_10">
                <ul>
                    <c:forEach items="${genius10}" var="genius10" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius10.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius10.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_11">
                <ul>
                    <c:forEach items="${genius11}" var="genius11" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius11.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius11.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div id="ly_12">
                <ul>
                    <c:forEach items="${genius12}" var="genius12" varStatus="s">
                        <li>
                            <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="${genius12.alogo}" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">${genius12.author} </a></div>
                            <div class="hover_show">
                                <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                                <p>
                                    <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                                </p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="ItemList">
            <h2>最新项目<a href="http://www.csto.com/project/list" class="more">more</a></h2>
            <c:forEach items="${latest}" var="latest" varStatus="s">
            <div class="mList">
                <div class="mTop">
                    <div class="photo_box"><a href="http://www.csto.com/project/list/tag1:33" target="_blank" title="未归类">
                        <img src="${latest.llogo}" alt="未归类" />
                    </a></div>
                    <h3><a href="http://www.csto.com/p/92029" target="_blank">${latest.ltitle}</a> <span class="authentication"> <span class="ico_Phone_Y" title="该项目需要接包方通过手机认证"></span>    </span> </h3>
                    <p> <span class="tech">
                        <a href="http://www.csto.com/project/list/skill:207">${latest.ltab}</a>
            </span> </p>
                </div>
                <div class="mBottom">
                    <p>
                        <span class="price">预算：${latest.lprogramBudget}</span>    </p>
                    <p>
                        <span class="num">已有<a href="http://www.csto.com/p/92029" target="_blank">${latest.lcompetitive}</a>人竞标</span><span class="time">剩余：${latest.lterm}</span>    </p>
                </div>
            </div>
            </c:forEach>
<div class="pop favor_box" id="mark_favor_box">
    <h4>收藏成功</h4>
    <dl>
        <dt>备注</dt>
        <dd>
            <input type="text" name="favorites_memo"/>
            <input type="hidden" name="favorites_id" id="favorites_id"/>
        </dd>
        <dt>分组</dt>
        <dd id="mark_groups" class="mark_groups">
            <ul id="mark_user_groups" class="mark_user_groups">
            </ul>
            <p id="mark_show_group"><a href="javascript:void(0)">+创建分组</a></p>
            <span style="display: none">
                <input type="text" name="group_name" id="group_name" maxlength="8"/>
                <input type="button" value="创建" id="add_group"/>
                <a href="javascript:void(0)" id="mark_hide_group">取消</a>
            </span>
        </dd>
    </dl>
    <input type="button" id="submit_info" value="保存设置" />
    <input type="button" id="mark_after" value="以后再说" />
    <input type="hidden" name="mark_name" id="mark_name" value="users" />
</div>
<script type="text/javascript">
    //点击收藏的操作
    function add_favorite(mark_id, mark_name, obj)
    {
        $.post(site_url+'ajax/favorites', {'mark_id': mark_id, 'mark_name': mark_name}, function(data){
            //收藏成功
            if (data.state) {
                if (mark_name == 'user_case') {
                    obj.next(".gray").html('已有'+data.favorites_num+'人收藏 ');
                    $(".favor_box").parent().show();
                }
                //else if (mark_name == 'users' || mark_name == 'prj')
                //{
                obj.html('已收藏').removeAttr('onclick');
                //针对人才、项目列表页
                if (obj.hasClass("btn_favor_n"))
                {
                    obj.removeClass('btn_favor_n');
                    obj.addClass('btn_favor_y');
                }

                box_show('mark_favor_box');
                //}

                //收藏成功，显示用户分组信息
                $("#favorites_id").val(data.insert_id);

                //项目收藏不用显示分组信息
                $.post(site_url+'ajax/user/groups', {'mark_name': mark_name}, function(group_data){
                    if (group_data.state) {
                        var info = "";
                        $.each(group_data.data, function(i, n){
                            info += "<li><label for='favoties_groups_"+n.id+"'><input type='checkbox' name='favorites_groups' value='"+n.id+"' id='favoties_groups_"+n.id+"'/>"+n.group_name+"</label></li>";
                        });
                        $("#mark_user_groups").empty();
                        $("#mark_user_groups").append(info);
                    } else {
                        $("#mark_user_groups").empty();
                        $("#mark_user_groups").append("<p id='mark_null_info'>暂无分组信息</p>");
                    }
                }, 'json')
            }
            //收藏失败
            else
            {
                message_error(data.msg);
            }
        }, 'json');
    }

    $(document).ready(function(){
        //创建分组
        $("#mark_show_group").bind("click", function(){
            $(this).next().show();
            $(this).hide();
        });

        //取消分组
        $("#mark_hide_group").bind("click", function(){
            $("#mark_show_group").show();
            $("#mark_show_group").next().hide();
            $("#mark_error").remove();
        });

        //添加分组
        $("#add_group").bind("click", function(){
            $("#mark_error").remove();
            var group_name = $("#group_name").val();
            var mark_name = $("input[name='mark_name']").val();
            $.post(site_url+'ajax/add/group', {'group_name': group_name, 'mark_name': mark_name}, function(data){
                if (data.state) {
                    $("#group_name").val("");
                    var info = "<li><label for='favoties_groups_"+data.group_id+"'><input type='checkbox' name='favorites_groups' value='"+data.group_id+"' id='favoties_groups_"+data.group_id+"'/>"+data.group_name+"</label></li>";
                    $("#mark_null_info").remove();
                    $("#mark_user_groups").append(info);
                } else {
                    $("#group_name").val(data.group_name);
                    $("#mark_groups").append("<p id='mark_error' class='note'>"+data.msg+"</p>");
                }
            }, 'json');
        });

        //保存设置
        $("#submit_info").bind("click", function(){
            var favorites_id = $("#favorites_id").val();
            var favorites_memo = $("input[name='favorites_memo']").val();
            var favorites_groups = [];
            $("input[name='favorites_groups']:checked").each(function(i){
                favorites_groups[i] = $(this).val();
            });

            $.post(site_url+'ajax/submit/favorites', {'favorites_id': favorites_id, 'favorites_memo': favorites_memo, 'favorites_groups': favorites_groups}, function(){
                $('.favor_box,#favorite,#opacityDiv').hide();
                message_ok('收藏成功');
            });
        });

        //以后再说
        $("#mark_after").click(function(){
            $('.favor_box,#favorite,#opacityDiv').hide();
        });
    });
</script><!-- 邀请开始 -->
<div id="show_div" class="pop">
    <div id="prj_content">
        <h2>您招标中的项目：<a href="http://www.csto.com/project/new">发布一个新项目?</a></h2>
        <ul class="pro_list">
        </ul>
        <span id="pop_invite_button"></span>
    </div>
</div>

<div id="result_msg" class="pop">
    <div class="msg_ok">
        <p>您的邀请已发出，等待 <a id="pop_link_href" href=""><span id="pop_username"></span></a>竞标。</p>
    </div>
    <div align="center">
        <input type="button" value="邀请更多接包方" class="class_btn" onclick="invite_more()" />
        <!-- <a href="javascript:void(0);" onclick="box_hide('result_msg')">关闭</a> -->
    </div>

</div>


<script type="text/javascript">
    /**
     * 显示用户可邀请接包方竞标的项目
     */
    function invite_prj(to_user_id)
    {
        $.post(site_url + 'invite/prj',{check:'login', to_user_id:to_user_id},function(data){
            if(!data.status){
                message_error(data.errmsg);
                window.location.href=site_url+'login';
            }
            else
            {
                if (data.status == 1)
                {
                    $('#prj_content').children('input').remove();
                }
                $('#pop_invite_button').html('<input id="invite_button" class="disabled" type="button" value="发出邀请" onclick="send_info(' + to_user_id+ ')" disabled="disabled">');

                $('#prj_content').children('.pro_list').html(data.info);
                box_show('show_div');
            }
        },'json');
    }

    //点击选择项目按钮，如果选择了项目则设置按钮可用
    function check_select()
    {
        var setfix=false;
        var radio=$('input[name="prj"]');
        for(var i=0;i<radio.length;i++){
            if(radio[i].checked){
                setfix=true;
            }
        }

        if(setfix){
            $('#invite_button').prop('disabled', false);
            $('#invite_button').removeClass();
            $('#invite_button').addClass('class_btn');
        }else{
            $('#invite_button').prop('disabled', true);
            $('#invite_button').removeClass();
            $('#invite_button').addClass('disabled');
        }
    }

    /**
     * 发送邀请通知
     *
     * to_user_id 受邀用户id
     */
    function send_info(to_user_id)
    {
        var radio = $('input[name="prj"]');
        var prj_id = new Array();

        for(var i=0; i<radio.length; i++)
        {
            if(radio[i].checked){
                prj_id.push(radio[i].value);
            }
        }

        $.post(site_url+'invite/prj',{check: 'send_sms', to_user_id: to_user_id, prj_id: prj_id},function(data){
            if(data.status)
            {
                $('#pop_link_href').attr('href', data.url);
                $('#pop_username').html(data.username);
                box_hide('show_div');
                box_show('result_msg');
            }
            else
            {
                message_error(data.errmsg);
            }
        },'json');
    }

    //显示更多接包方
    function invite_more()
    {
        box_hide('result_msg');
        window.location.href = 'http://www.csto.com/member';
    }
</script>
        </div>
    </div>
<!--邀请结束--><!-- footer -->
<!-- footer -->
<div id="tmpboxdiv">
    <div class="footer">
        <div class="wrap">
            <ul class="site_info"><li>
                <a href="http://www.csto.com/about">了解CSTO</a> | <a href="http://www.csto.com/info">CSTO资讯</a> | <a href="http://www.csto.com/help">帮助中心</a> | <a href="http://www.csto.com/about/contact">联系我们</a> | <a href="http://www.csto.com/about/partners">合作伙伴</a> <span class="weibo_box"> <a href="http://weibo.com/imcsto" title="CSTO新浪微博" target="_blank" class="weibo_sina"> </a> <a href="http://t.qq.com/imcsto" title="CSTO腾讯微博" target="_blank" class="weibo_qq"> </a> </span> </li>

                <li>北京创新乐知信息技术有限公司 京ICP证070598号</li>
                <li>网站备案号 京公网安备 11010502023254 京公网安备 11010502023255</li>
                <li>Copyright © 2012, CSTO.COM, csdnstore.com, All Rights Reserved</li>
            </ul>
            <ul class="contact">
                <li class="email">E-Mail：<a href="mailto:cstoservice@csdn.net">cstoservice@csdn.net</a></li>
                <li class="tel">电话：010-64351425</li>
                <li class="qq">QQ：2583031542</li>
                <li class="feedback"></li>
            </ul>
        </div>
    </div>
</div>
<!-- //footer -->
<span class="hide">

	<script type="text/javascript">document.write("<img src=http://counter.csdn.net/pv.aspx?id=543 border=0 width=0 height=0>");</script>
	<script type="text/javascript"> new Image().src ="http://bss.csdn.net/monitor_interface/add_monitor?id=1" ;</script>
	<script type="text/javascript" src="../../statics/js/tracking.js"></script>
</span>
</div>
</body>
</html>

