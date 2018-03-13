<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/12
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li><a href="http://www.csto.com/info/details/id:170" target="_blank"><div style="height:180px;overflow:hidden;"><img src="../../statics/cstoImages/111.jpg" alt="" /></div>CSTO提款手续费将调整为2%</a></li>
                <li><a href="http://www.csto.com/info/details/id:167" target="_blank">腾讯云服务器和云数据库降价了，降幅高...</a></li>
                <li><a href="http://www.csto.com/info/details/id:164" target="_blank">《金蝶KIS增值开发培训》培训通知</a></li>
                <li><a href="http://www.csto.com/info/details/id:163" target="_blank">使用CODE平台托管项目 让外包更可...</a></li>
                <li><a href="http://www.csto.com/info/details/id:162" target="_blank">评估IT外包成熟程度的五种方式</a></li>
            </ul>
            <a class="more" href="http://www.csto.com/info" target="_blank" title="更多资讯">more</a> </div>
    </div>
    <div class="right">
        <h2>热门领域人才</h2>
        <div id="lingyu">
            <ul>
                <li><a href="#ly_1" title="系统开发">系统开发</a></li>
                <li><a href="#ly_2" title="Android">Andro...</a></li>
                <li><a href="#ly_3" title="网站开发">网站开发</a></li>
                <li><a href="#ly_4" title="企业软件">企业软件</a></li>
                <li><a href="#ly_5" title="应用程序及脚本">应用程序及...</a></li>
                <li><a href="#ly_6" title="嵌入式">嵌入式</a></li>
            </ul>
            <div id="ly_1">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/xiuyuanyihe2012" alt="xiuyuanyihe2012" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/6/7/1339070880758454.png" alt="" /></a> <a href="http://www.csto.com/u/xiuyuanyihe2012" target="_blank">xiuyuanyihe2012 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/u010619512" alt="u010619512" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/5/23/1369299219958478.png" alt="" /></a> <a href="http://www.csto.com/u/u010619512" target="_blank">u010619512 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/zimasys" alt="zimasys" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/5/22/1400733263878254.png" alt="" /></a> <a href="http://www.csto.com/u/zimasys" target="_blank">zimasys </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/tianliang0309" alt="tianliang0309" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/10/27/1382880580266943.png" alt="" /></a> <a href="http://www.csto.com/u/tianliang0309" target="_blank">tianliang0309 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>湖北 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/conris" alt="conris" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/7/11/1405049268378702.png" alt="" /></a> <a href="http://www.csto.com/u/conris" target="_blank">conris </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>江苏 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/krmes" alt="krmes" target="_blank"><img src="http://avatar.csdn.net/C/E/5/1_krmes.jpg" alt="" /></a> <a href="http://www.csto.com/u/krmes" target="_blank">krmes </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/微点科技" alt="微点科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/11/28/1385622877259808.png" alt="" /></a> <a href="http://www.csto.com/u/微点科技" target="_blank">微点科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/djx54545" alt="djx54545" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/5/25/1369489070546227.png" alt="" /></a> <a href="http://www.csto.com/u/djx54545" target="_blank">djx54545 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/东软集团" alt="东软集团" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/8/11/1470879091602473.png" alt="" /></a> <a href="http://www.csto.com/u/东软集团" target="_blank">东软集团 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/uibekt0821" alt="uibekt0821" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/4/7/1459996669768492.png" alt="" /></a> <a href="http://www.csto.com/u/uibekt0821" target="_blank">uibekt0821 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_2">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/高手软件" alt="高手软件" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/1/28/1359348352694647.png" alt="" /></a> <a href="http://www.csto.com/u/高手软件" target="_blank">高手软件 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/haohantech" alt="haohantech" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/4/2/1459603620630558.png" alt="" /></a> <a href="http://www.csto.com/u/haohantech" target="_blank">haohantech </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/wspscucs" alt="wspscucs" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/10/5/1317809568962656.png" alt="" /></a> <a href="http://www.csto.com/u/wspscucs" target="_blank">wspscucs </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/qq_22470473" alt="qq_22470473" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/10/24/1414133494466632.png" alt="" /></a> <a href="http://www.csto.com/u/qq_22470473" target="_blank">qq_22470473 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/手机APP开发" alt="手机APP开发" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/4/4/1365005851567786.png" alt="" /></a> <a href="http://www.csto.com/u/手机APP开发" target="_blank">手机APP开发 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/huahansoft" alt="huahansoft" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/4/30/1398827539132679.png" alt="" /></a> <a href="http://www.csto.com/u/huahansoft" target="_blank">huahansoft </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>河南 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/qq_21375497" alt="qq_21375497" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/10/22/1413913775261454.png" alt="" /></a> <a href="http://www.csto.com/u/qq_21375497" target="_blank">qq_21375497 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/千与千寻2015" alt="千与千寻2015" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/12/4/1386131891401192.png" alt="" /></a> <a href="http://www.csto.com/u/千与千寻2015" target="_blank">千与千寻2015 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/微克信息" alt="微克信息" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/10/9/1444360090300738.png" alt="" /></a> <a href="http://www.csto.com/u/微克信息" target="_blank">微克信息 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/三七数据" alt="三七数据" target="_blank"><img src="http://avatar.csdn.net/9/4/9/1_sanqishuju.jpg" alt="" /></a> <a href="http://www.csto.com/u/三七数据" target="_blank">三七数据 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_3">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/kellor118" alt="kellor118" target="_blank"><img src="http://avatar.csdn.net/F/0/2/1_kellor118.jpg" alt="" /></a> <a href="http://www.csto.com/u/kellor118" target="_blank">kellor118 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/u012649615" alt="u012649615" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/10/31/1383191909704323.png" alt="" /></a> <a href="http://www.csto.com/u/u012649615" target="_blank">u012649615 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/sigil2011" alt="sigil2011" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/12/5/1354718688698046.png" alt="" /></a> <a href="http://www.csto.com/u/sigil2011" target="_blank">sigil2011 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>公司</span> <span>辽宁 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/聚力设计工作室" alt="聚力设计工作室" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2018/1/30/1517320357864909.png" alt="" /></a> <a href="http://www.csto.com/u/聚力设计工作室" target="_blank">聚力设计工作室 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -20px" target="_blank"> 1 </span> <span>团队</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/红橘子科技-九九" alt="红橘子科技-九九" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/11/5/1352097075343551.png" alt="" /></a> <a href="http://www.csto.com/u/红橘子科技-九九" target="_blank">红橘子科技-九九 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>团队</span> <span>湖南 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/浮云-8年程序及设计经验" alt="浮云-8年程序及设计经验" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/12/29/1325121624929360.png" alt="" /></a> <a href="http://www.csto.com/u/浮云-8年程序及设计经验" target="_blank">浮云-8年程序及设计经验 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/tcwangwenping" alt="tcwangwenping" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/12/27/1419647691508519.png" alt="" /></a> <a href="http://www.csto.com/u/tcwangwenping" target="_blank">tcwangwenping </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>浙江 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/手机软件开发公司" alt="手机软件开发公司" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/7/4/1372913998950105.png" alt="" /></a> <a href="http://www.csto.com/u/手机软件开发公司" target="_blank">手机软件开发公司 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/发哥" alt="发哥" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/1/5/1325723329587132.png" alt="" /></a> <a href="http://www.csto.com/u/发哥" target="_blank">发哥 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/larkim82" alt="larkim82" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/2/19/1392823460212154.png" alt="" /></a> <a href="http://www.csto.com/u/larkim82" target="_blank">larkim82 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>湖北 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_4">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/" alt="" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/4/8/1365406802547376.png" alt="" /></a> <a href="http://www.csto.com/u/" target="_blank"> </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/非凡软件" alt="非凡软件" target="_blank"><img src="http://avatar.csdn.net/7/7/F/1_sitongqdl.jpg" alt="" /></a> <a href="http://www.csto.com/u/非凡软件" target="_blank">非凡软件 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>山东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/u011013524" alt="u011013524" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/6/9/1370764514799764.png" alt="" /></a> <a href="http://www.csto.com/u/u011013524" target="_blank">u011013524 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/码农帮" alt="码农帮" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/2/2/1359776020565033.png" alt="" /></a> <a href="http://www.csto.com/u/码农帮" target="_blank">码农帮 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>团队</span> <span>河南 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/Legendary灬" alt="Legendary灬" target="_blank"><img src="../../statics/cstoImages/1_qq_16272049.jpg" alt="" /></a> <a href="http://www.csto.com/u/Legendary灬" target="_blank">Legendary灬 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/maredays" alt="maredays" target="_blank"><img src="../../statics/cstoImages/1_maredays.jpg" alt="" /></a> <a href="http://www.csto.com/u/maredays" target="_blank">maredays </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -20px" target="_blank"> 1 </span> <span>个人</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/milankaka22" alt="milankaka22" target="_blank"><img src="../../statics/cstoImages/1_milankaka22.jpg" alt="" /></a> <a href="http://www.csto.com/u/milankaka22" target="_blank">milankaka22 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>山东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/u013607631" alt="u013607631" target="_blank"><img src="http://avatar.csdn.net/7/A/E/1_u013607631.jpg" alt="" /></a> <a href="http://www.csto.com/u/u013607631" target="_blank">u013607631 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>辽宁 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/james1207" alt="james1207" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/10/31/1383204244234906.png" alt="" /></a> <a href="http://www.csto.com/u/james1207" target="_blank">james1207 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/中科爱普" alt="中科爱普" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/12/29/1325124919929690.png" alt="" /></a> <a href="http://www.csto.com/u/中科爱普" target="_blank">中科爱普 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_5">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/facedge" alt="facedge" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/10/24/1351050110843605.png" alt="" /></a> <a href="http://www.csto.com/u/facedge" target="_blank">facedge </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/luofeng4213" alt="luofeng4213" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/5/7/1430991906597668.png" alt="" /></a> <a href="http://www.csto.com/u/luofeng4213" target="_blank">luofeng4213 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>河北 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/fawen18" alt="fawen18" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/10/27/1382868118506086.png" alt="" /></a> <a href="http://www.csto.com/u/fawen18" target="_blank">fawen18 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/alexsunmiu" alt="alexsunmiu" target="_blank"><img src="http://avatar.csdn.net/E/B/7/1_alexsunmiu.jpg" alt="" /></a> <a href="http://www.csto.com/u/alexsunmiu" target="_blank">alexsunmiu </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/volye" alt="volye" target="_blank"><img src="http://avatar.csdn.net/0/6/F/1_volye.jpg" alt="" /></a> <a href="http://www.csto.com/u/volye" target="_blank">volye </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/CSTO会员_dream1066" alt="CSTO会员_dream1066" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/10/5/1317809568962656.png" alt="" /></a> <a href="http://www.csto.com/u/CSTO会员_dream1066" target="_blank">CSTO会员_dream1066 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/Halostudio" alt="Halostudio" target="_blank"><img src="http://avatar.csdn.net/4/6/1/1_xuezhi1001.jpg" alt="" /></a> <a href="http://www.csto.com/u/Halostudio" target="_blank">Halostudio </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/loophop" alt="loophop" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/1/24/1359034401620113.png" alt="" /></a> <a href="http://www.csto.com/u/loophop" target="_blank">loophop </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/奋斗并快乐着" alt="奋斗并快乐着" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/10/5/1317809568962656.png" alt="" /></a> <a href="http://www.csto.com/u/奋斗并快乐着" target="_blank">奋斗并快乐着 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>福建 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/SoftwareSE" alt="SoftwareSE" target="_blank"><img src="http://avatar.csdn.net/E/2/C/1_softwarese.jpg" alt="" /></a> <a href="http://www.csto.com/u/SoftwareSE" target="_blank">SoftwareSE </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>辽宁 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_6">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/quickembed_sh" alt="quickembed_sh" target="_blank"><img src="http://avatar.csdn.net/4/2/C/1_quickembed_sh.jpg" alt="" /></a> <a href="http://www.csto.com/u/quickembed_sh" target="_blank">quickembed_sh </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/laonanhai2008" alt="laonanhai2008" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/12/30/1356831974230837.png" alt="" /></a> <a href="http://www.csto.com/u/laonanhai2008" target="_blank">laonanhai2008 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>公司</span> <span>山东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/feiyangqingyun" alt="feiyangqingyun" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/6/17/1371436690373932.png" alt="" /></a> <a href="http://www.csto.com/u/feiyangqingyun" target="_blank">feiyangqingyun </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/qq_30599799" alt="qq_30599799" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/8/14/1439558523539890.png" alt="" /></a> <a href="http://www.csto.com/u/qq_30599799" target="_blank">qq_30599799 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>安徽 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/fanck" alt="fanck" target="_blank"><img src="../../statics/cstoImages/1_fanck.jpg" alt="" /></a> <a href="http://www.csto.com/u/fanck" target="_blank">fanck </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/hexingshi" alt="hexingshi" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/8/8/1375947875309398.png" alt="" /></a> <a href="http://www.csto.com/u/hexingshi" target="_blank">hexingshi </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/ruiqiandianzi" alt="ruiqiandianzi" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/5/28/1401249141918918.png" alt="" /></a> <a href="http://www.csto.com/u/ruiqiandianzi" target="_blank">ruiqiandianzi </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/AraxLee" alt="AraxLee" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/6/2/1370181085233800.png" alt="" /></a> <a href="http://www.csto.com/u/AraxLee" target="_blank">AraxLee </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/开发快" alt="开发快" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/10/5/1317809568962656.png" alt="" /></a> <a href="http://www.csto.com/u/开发快" target="_blank">开发快 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/中嵌科技" alt="中嵌科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/8/27/1440646791784223.png" alt="" /></a> <a href="http://www.csto.com/u/中嵌科技" target="_blank">中嵌科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <h2>热门技术人才</h2>
        <div id="jishu">
            <ul>
                <li><a href="#ly_1" title="C++">C++</a></li>
                <li><a href="#ly_2" title="C#">C#</a></li>
                <li><a href="#ly_3" title="Android">Andro...</a></li>
                <li><a href="#ly_4" title="jQuery">jQuer...</a></li>
                <li><a href="#ly_5" title="Java">Java</a></li>
                <li><a href="#ly_6" title="JavaScript">JavaS...</a></li>
            </ul>
            <div id="ly_1">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/11/28/1511844463925700.png" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">donaldo_123 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/bmailqy" alt="bmailqy" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/4/10/1491788583365640.png" alt="" /></a> <a href="http://www.csto.com/u/bmailqy" target="_blank">bmailqy </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/jobsccnu" alt="jobsccnu" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/3/20/1363772762909302.png" alt="" /></a> <a href="http://www.csto.com/u/jobsccnu" target="_blank">jobsccnu </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/david3c" alt="david3c" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/3/20/1489996470737296.png" alt="" /></a> <a href="http://www.csto.com/u/david3c" target="_blank">david3c </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/高手软件" alt="高手软件" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/1/28/1359348352694647.png" alt="" /></a> <a href="http://www.csto.com/u/高手软件" target="_blank">高手软件 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/chris801224" alt="chris801224" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/10/19/1445243878627280.png" alt="" /></a> <a href="http://www.csto.com/u/chris801224" target="_blank">chris801224 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/澜沃科技" alt="澜沃科技" target="_blank"><img src="http://avatar.csdn.net/9/A/7/1_newcad0000.jpg" alt="" /></a> <a href="http://www.csto.com/u/澜沃科技" target="_blank">澜沃科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>团队</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/QQ729615546" alt="QQ729615546" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/4/4/1333516824313859.png" alt="" /></a> <a href="http://www.csto.com/u/QQ729615546" target="_blank">QQ729615546 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>湖南 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/zhubenfulovepoem" alt="zhubenfulovepoem" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/7/8/1373267332773143.png" alt="" /></a> <a href="http://www.csto.com/u/zhubenfulovepoem" target="_blank">zhubenfulovepoem </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>浙江 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/西柚互动" alt="西柚互动" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/5/16/1494914986922541.png" alt="" /></a> <a href="http://www.csto.com/u/西柚互动" target="_blank">西柚互动 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>公司</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_2">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/微点科技" alt="微点科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/11/28/1385622877259808.png" alt="" /></a> <a href="http://www.csto.com/u/微点科技" target="_blank">微点科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/sigil2011" alt="sigil2011" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/12/5/1354718688698046.png" alt="" /></a> <a href="http://www.csto.com/u/sigil2011" target="_blank">sigil2011 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>公司</span> <span>辽宁 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/踏雪无痕_影" alt="踏雪无痕_影" target="_blank"><img src="http://avatar.csdn.net/1/7/7/1_zmk523.jpg" alt="" /></a> <a href="http://www.csto.com/u/踏雪无痕_影" target="_blank">踏雪无痕_影 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>浙江 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/陕西一点通网络技术有限公司" alt="陕西一点通网络技术有限公司" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/5/22/1432285495705905.png" alt="" /></a> <a href="http://www.csto.com/u/陕西一点通网络技术有限公司" target="_blank">陕西一点通网络技术有限公司 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/bb0536" alt="bb0536" target="_blank"><img src="http://avatar.csdn.net/1/A/B/1_bb0536.jpg" alt="" /></a> <a href="http://www.csto.com/u/bb0536" target="_blank">bb0536 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>山东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/731673173" alt="731673173" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/3/22/1458604539853458.png" alt="" /></a> <a href="http://www.csto.com/u/731673173" target="_blank">731673173 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>个人</span> <span>黑龙江</span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/米哈哈科技" alt="米哈哈科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/11/8/1478579892783913.png" alt="" /></a> <a href="http://www.csto.com/u/米哈哈科技" target="_blank">米哈哈科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/西柚互动" alt="西柚互动" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/5/16/1494914986922541.png" alt="" /></a> <a href="http://www.csto.com/u/西柚互动" target="_blank">西柚互动 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>公司</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/tianliang0309" alt="tianliang0309" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/10/27/1382880580266943.png" alt="" /></a> <a href="http://www.csto.com/u/tianliang0309" target="_blank">tianliang0309 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>湖北 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/YLeafSoft" alt="YLeafSoft" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/6/24/1435152868530453.png" alt="" /></a> <a href="http://www.csto.com/u/YLeafSoft" target="_blank">YLeafSoft </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>个人</span> <span>江苏 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_3">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/shijin525" alt="shijin525" target="_blank"><img src="http://avatar.csdn.net/B/4/8/1_shijin525.jpg" alt="" /></a> <a href="http://www.csto.com/u/shijin525" target="_blank">shijin525 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>个人</span> <span>辽宁 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/maiyunxiaodan" alt="maiyunxiaodan" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/12/28/1514441330587019.png" alt="" /></a> <a href="http://www.csto.com/u/maiyunxiaodan" target="_blank">maiyunxiaodan </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/高手软件" alt="高手软件" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/1/28/1359348352694647.png" alt="" /></a> <a href="http://www.csto.com/u/高手软件" target="_blank">高手软件 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/wspscucs" alt="wspscucs" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/10/5/1317809568962656.png" alt="" /></a> <a href="http://www.csto.com/u/wspscucs" target="_blank">wspscucs </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/腾众软件" alt="腾众软件" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/12/8/1481181039745959.png" alt="" /></a> <a href="http://www.csto.com/u/腾众软件" target="_blank">腾众软件 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/qq_22470473" alt="qq_22470473" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/10/24/1414133494466632.png" alt="" /></a> <a href="http://www.csto.com/u/qq_22470473" target="_blank">qq_22470473 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/微点科技" alt="微点科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/11/28/1385622877259808.png" alt="" /></a> <a href="http://www.csto.com/u/微点科技" target="_blank">微点科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/君韵科技" alt="君韵科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/2/20/1392890074655566.png" alt="" /></a> <a href="http://www.csto.com/u/君韵科技" target="_blank">君韵科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/TSofTIME_Ltd" alt="TSofTIME_Ltd" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/9/26/1348630465520174.png" alt="" /></a> <a href="http://www.csto.com/u/TSofTIME_Ltd" target="_blank">TSofTIME_Ltd </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/协德科技" alt="协德科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/3/24/1395633728810215.png" alt="" /></a> <a href="http://www.csto.com/u/协德科技" target="_blank">协德科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_4">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/微点科技" alt="微点科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/11/28/1385622877259808.png" alt="" /></a> <a href="http://www.csto.com/u/微点科技" target="_blank">微点科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/红橘子科技-九九" alt="红橘子科技-九九" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/11/5/1352097075343551.png" alt="" /></a> <a href="http://www.csto.com/u/红橘子科技-九九" target="_blank">红橘子科技-九九 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>团队</span> <span>湖南 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/北京江图科技有限公司" alt="北京江图科技有限公司" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/3/18/1489821621436415.png" alt="" /></a> <a href="http://www.csto.com/u/北京江图科技有限公司" target="_blank">北京江图科技有限公司 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/做就一定要做好" alt="做就一定要做好" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/4/16/1397611367444235.png" alt="" /></a> <a href="http://www.csto.com/u/做就一定要做好" target="_blank">做就一定要做好 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -140px" target="_blank"> 7 </span> <span>个人</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/raomk" alt="raomk" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/10/12/1444628981786310.png" alt="" /></a> <a href="http://www.csto.com/u/raomk" target="_blank">raomk </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/phpstudios" alt="phpstudios" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/9/4/1409816524118745.png" alt="" /></a> <a href="http://www.csto.com/u/phpstudios" target="_blank">phpstudios </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>安徽 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/qq1057789374" alt="qq1057789374" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/8/20/1408514652192175.png" alt="" /></a> <a href="http://www.csto.com/u/qq1057789374" target="_blank">qq1057789374 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/金华与时网络" alt="金华与时网络" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/4/11/1334153479205301.png" alt="" /></a> <a href="http://www.csto.com/u/金华与时网络" target="_blank">金华与时网络 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>团队</span> <span>浙江 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/larkim82" alt="larkim82" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/2/19/1392823460212154.png" alt="" /></a> <a href="http://www.csto.com/u/larkim82" target="_blank">larkim82 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>湖北 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/kongyun360" alt="kongyun360" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/12/15/1481805881393291.png" alt="" /></a> <a href="http://www.csto.com/u/kongyun360" target="_blank">kongyun360 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>江苏 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_5">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/donaldo_123" alt="donaldo_123" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/11/28/1511844463925700.png" alt="" /></a> <a href="http://www.csto.com/u/donaldo_123" target="_blank">donaldo_123 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/maiyunxiaodan" alt="maiyunxiaodan" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/12/28/1514441330587019.png" alt="" /></a> <a href="http://www.csto.com/u/maiyunxiaodan" target="_blank">maiyunxiaodan </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/zhihee122" alt="zhihee122" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2018/1/22/1516608555774957.png" alt="" /></a> <a href="http://www.csto.com/u/zhihee122" target="_blank">zhihee122 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -20px" target="_blank"> 1 </span> <span>团队</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/axcsoft" alt="axcsoft" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/11/10/1510277205527651.png" alt="" /></a> <a href="http://www.csto.com/u/axcsoft" target="_blank">axcsoft </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/人丰" alt="人丰" target="_blank"><img src="http://avatar.csdn.net/9/0/A/1_prosperity1006.jpg" alt="" /></a> <a href="http://www.csto.com/u/人丰" target="_blank">人丰 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/纵道软件" alt="纵道软件" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/7/11/1468225125181208.png" alt="" /></a> <a href="http://www.csto.com/u/纵道软件" target="_blank">纵道软件 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>团队</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/bigbird_llh" alt="bigbird_llh" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/7/3/1467521034633672.png" alt="" /></a> <a href="http://www.csto.com/u/bigbird_llh" target="_blank">bigbird_llh </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/uibekt0821" alt="uibekt0821" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/4/7/1459996669768492.png" alt="" /></a> <a href="http://www.csto.com/u/uibekt0821" target="_blank">uibekt0821 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/微点科技" alt="微点科技" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2013/11/28/1385622877259808.png" alt="" /></a> <a href="http://www.csto.com/u/微点科技" target="_blank">微点科技 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -120px" target="_blank"> 6 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/guotion" alt="guotion" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/4/22/1461305694837147.png" alt="" /></a> <a href="http://www.csto.com/u/guotion" target="_blank">guotion </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -60px" target="_blank"> 3 </span> <span>个人</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="ly_6">
                <ul>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/axcsoft" alt="axcsoft" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/11/10/1510277205527651.png" alt="" /></a> <a href="http://www.csto.com/u/axcsoft" target="_blank">axcsoft </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>上海 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/wspscucs" alt="wspscucs" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2011/10/5/1317809568962656.png" alt="" /></a> <a href="http://www.csto.com/u/wspscucs" target="_blank">wspscucs </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/megger520" alt="megger520" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/10/22/1445448597101493.png" alt="" /></a> <a href="http://www.csto.com/u/megger520" target="_blank">megger520 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/weimengwangluo" alt="weimengwangluo" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2016/2/13/1455368980973479.png" alt="" /></a> <a href="http://www.csto.com/u/weimengwangluo" target="_blank">weimengwangluo </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>团队</span> <span>河南 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/北京江图科技有限公司" alt="北京江图科技有限公司" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2017/3/18/1489821621436415.png" alt="" /></a> <a href="http://www.csto.com/u/北京江图科技有限公司" target="_blank">北京江图科技有限公司 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>个人</span> <span>北京 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/做就一定要做好" alt="做就一定要做好" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/4/16/1397611367444235.png" alt="" /></a> <a href="http://www.csto.com/u/做就一定要做好" target="_blank">做就一定要做好 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -140px" target="_blank"> 7 </span> <span>个人</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/raomk" alt="raomk" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/10/12/1444628981786310.png" alt="" /></a> <a href="http://www.csto.com/u/raomk" target="_blank">raomk </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>个人</span> <span>广东 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/Kyle-soft" alt="Kyle-soft" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2014/7/10/1404967363446578.png" alt="" /></a> <a href="http://www.csto.com/u/Kyle-soft" target="_blank">Kyle-soft </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -80px" target="_blank"> 4 </span> <span>团队</span> <span>四川 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/陕西一点通网络技术有限公司" alt="陕西一点通网络技术有限公司" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2015/5/22/1432285495705905.png" alt="" /></a> <a href="http://www.csto.com/u/陕西一点通网络技术有限公司" target="_blank">陕西一点通网络技术有限公司 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -40px" target="_blank"> 2 </span> <span>公司</span> <span>陕西 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="photo"><a href="http://www.csto.com/u/金华与时网络" alt="金华与时网络" target="_blank"><img src="http://www.csto.com/pic/avatars/100/2012/4/11/1334153479205301.png" alt="" /></a> <a href="http://www.csto.com/u/金华与时网络" target="_blank">金华与时网络 </a></div>
                        <div class="hover_show">
                            <p><span class="level_F" style="background-position:0px -100px" target="_blank"> 5 </span> <span>团队</span> <span>浙江 </span> </p>
                            <p>
                                <a class="btn_blue" title="收藏" href="javascript:void(0)" onclick="login_csdn()">收藏</a> <a class="btn_green" title="邀请" href="javascript:void(0)" onclick="login_csdn()">邀请</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="ItemList">
            <h2>最新项目<a href="http://www.csto.com/project/list" class="more">more</a></h2>
            <div class="mList">
                <div class="mTop">
                    <div class="photo_box"><a href="http://www.csto.com/project/list/tag1:33" target="_blank" title="未归类">
                        <img src="http://www.csto.com/images/classify/33.png" alt="未归类" />
                    </a></div>
                    <h3><a href="http://www.csto.com/p/92029" target="_blank">无效手机号码清楚</a> <span class="authentication"> <span class="ico_Phone_Y" title="该项目需要接包方通过手机认证"></span>    </span> </h3>
                    <p> <span class="tech">
            </span> </p>
                </div>
                <div class="mBottom">
                    <p>
                        <span class="price">预算：￥10,000-￥20,000</span>    </p>
                    <p>
                        <span class="num">已有<a href="http://www.csto.com/p/92029" target="_blank">8</a>人竞标</span><span class="time">剩余：22天22小时</span>    </p>
                </div>
            </div>
            <div class="mList">
                <div class="mTop">
                    <div class="photo_box"><a href="http://www.csto.com/project/list/tag1:35" target="_blank" title="系统开发">
                        <img src="http://www.csto.com/images/classify/35.png" alt="系统开发" />
                    </a></div>
                    <h3><a href="http://www.csto.com/p/91965" target="_blank">基于百度人脸识别的web程序</a> <span class="authentication"> <span class="ico_Phone_Y" title="该项目需要接包方通过手机认证"></span>    </span> </h3>
                    <p> <span class="tech">
            </span> </p>
                </div>
                <div class="mBottom">
                    <p>
                        <span class="price">预算：￥5,000-￥10,000</span>    </p>
                    <p>
                        <span class="num">已有<a href="http://www.csto.com/p/91965" target="_blank">25</a>人竞标</span><span class="time">剩余：7天1小时</span>    </p>
                </div>
            </div>
            <div class="mList">
                <div class="mTop">
                    <div class="photo_box"><a href="http://www.csto.com/project/list/tag1:10" target="_blank" title="网站开发">
                        <img src="http://www.csto.com/images/classify/10.png" alt="网站开发" />
                    </a></div>
                    <h3><a href="http://www.csto.com/p/91963" target="_blank">网站后台开发</a> <span class="authentication"> <span class="ico_Phone_Y" title="该项目需要接包方通过手机认证"></span>    </span> </h3>
                    <p> <span class="tech">
      <a href="http://www.csto.com/project/list/skill:207">PHP</a><a href="http://www.csto.com/project/list/skill:218">SQL Server</a>      </span> </p>
                </div>
                <div class="mBottom">
                    <p>
                        <span class="price">预算：￥5,000-￥10,000</span>    </p>
                    <p>
                        <span class="num">已有<a href="http://www.csto.com/p/91963" target="_blank">46</a>人竞标</span><span class="time">剩余：7天1小时</span>    </p>
                </div>
            </div>
            <div class="mList">
                <div class="mTop">
                    <div class="photo_box"><a href="http://www.csto.com/project/list/tag1:21" target="_blank" title="企业软件">
                        <img src="http://www.csto.com/images/classify/21.png" alt="企业软件" />
                    </a></div>
                    <h3><a href="http://www.csto.com/p/91961" target="_blank">利用python提取word特定信息并保存入excel</a> <span class="authentication"> <span class="ico_Phone_Y" title="该项目需要接包方通过手机认证"></span>    </span> </h3>
                    <p> <span class="tech">
            </span> </p>
                </div>
                <div class="mBottom">
                    <p>
                        <span class="price">预算：￥3,000-￥5,000</span>    </p>
                    <p>
                        <span class="num">已有<a href="http://www.csto.com/p/91961" target="_blank">53</a>人竞标</span><span class="time">剩余：7天1小时</span>    </p>
                </div>
            </div>
            <div class="mList">
                <div class="mTop">
                    <div class="photo_box"><a href="http://www.csto.com/project/list/tag1:7" target="_blank" title="Android">
                        <img src="http://www.csto.com/images/classify/7.png" alt="Android" />
                    </a></div>
                    <h3><a href="http://www.csto.com/p/91960" target="_blank">手游项目全栈开发</a> <span class="authentication"> <span class="ico_Phone_Y" title="该项目需要接包方通过手机认证"></span> <span class="ico_Iden_Y" tilte="该项目需要接包方通过实名认证"></span> <span class="ico_Case_Y" tilte="该项目需要接包方拥有案例"></span>  </span> </h3>
                    <p> <span class="tech">
            </span> </p>
                </div>
                <div class="mBottom">
                    <p>
                        <span class="price">预算：￥30,000-￥50,000</span>    </p>
                    <p>
                        <span class="num">已有<a href="http://www.csto.com/p/91960" target="_blank">8</a>人竞标</span><span class="time">剩余：7天1小时</span>    </p>
                </div>
            </div>
            <div class="more">
            </div>    </div>
    </div>
</div>
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
    <input type="hidden" name="mark_name" id="mark_name" value="users" /></div>
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
<!--邀请结束--><!-- footer -->
<!-- footer -->

<div id="tmpboxdiv"> </div>
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

<!-- //footer -->

<span class="hide">
	<script type="text/javascript">document.write("<img src=http://counter.csdn.net/pv.aspx?id=543 border=0 width=0 height=0>");</script>
	<script type="text/javascript"> new Image().src ="http://bss.csdn.net/monitor_interface/add_monitor?id=1" ;</script>
	<script type="text/javascript" src="//csdnimg.cn/pubfooter/js/tracking.js"></script>
</span>

</body>
</html>
<a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202012082400503" target="_blank"><img src="http://www.csto.com/images/biaoshi.gif" style="position:absolute; left:50%; margin:-80px 0 0 250px;" /></a>
</body>
</html>
