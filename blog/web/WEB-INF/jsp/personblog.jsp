<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/13
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="canonical" href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79350834"/>
    <script type="text/javascript">
        var username = "egefcxzo3ha1x4";
        var _blogger = username;
        var blog_address = "//blog.csdn.net/egefcxzo3ha1x4";
        var static_host = "https://csdnimg.cn/release/phoenix/";
        var currentUserName = "";
        var fileName = '79350834';
        var commentscount = 4;
        var islock = false;
        window.quickReplyflag = true;
        var totalFloor = 4;
        var isBole = false;
        var isDigg = false;
        var isExpert = false;
        var isAdm = false;
        var baiduKey = "";
        var needInsertBaidu = true;
        var isShowAds = true;
    </script>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <script src="../../statics/otherTxt/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../../statics/otherTxt/css/avatar.css">
    <link rel="stylesheet" href="../../statics/otherTxt/css/main-aa20801f57.css">
    <link rel="stylesheet" href="../../statics/otherTxt/css/content_toolbar.css">

    <%--<script src="../../statics/otherTxt/js/main-1.0.5.js"></script>--%>
    <%--<script type="text/javascript" src="../../statics/otherTxt/js/tracking-1.0.2.js" charset="utf-8"></script>--%>
    <%--<script type="text/javascript" src="../../statics/otherTxt/js/main-fd0a999b4c.js"></script>--%>

    <%--<script src="../../statics/otherTxt/js/ds.js"></script>--%>
    <script type="text/javascript">
        // Traffic Stats of the entire Web site By baidu
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?6bcd52f51e9b3dce32bec4a3997715ac";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        // Traffic Stats of the entire Web site By baidu end
    </script>
    <meta name="description"
          content="大家好，我是帅气小伙，今天为大家带来一个非常励志，让我反思的故事。今天为大家讲的是我父亲是如何用行动教会我成为程序员的。岁月的锤炼（ 圆口接口的键盘，2003年的 ）有人问这个键盘难道没有擦过吗？不是的，是擦不掉的岁月痕迹。如果有注意到细节的朋友会发现，程序员什么键位用得最多。除了(ASDW,YUHJ,那是我小时候玩拳王留下的)。这个键盘虽然老旧，但是我爸一直不舍得扔。03年的时候，他从二手市场买"/>
    <meta name="keywords" content=""/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld" href="#"/>
    <meta name="shenma-site-verification" content="5a59773ab8077d4a62bf469ab966a63b_1497598848">
    <title>${news.ntitle} - pg博客</title>
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <link rel="stylesheet" href="../../statics/otherTxt/css/htmledit_views-b569b0e3ef.css">
</head>
<body>
<%--<script id="toolbar-tpl-scriptId" prod="download" skin="black" src="../../statics/otherTxt/js/content_toolbar.js"--%>
        <%--type="text/javascript" domain="//blog.csdn.net/"></script>--%>
<div class="container clearfix">
    <main>
        <div style="display:none;">

        </div>
        <article>
            <h1 class="csdn_top">${news.ntitle}</h1>
            <div class="article_bar clearfix">
                <div class="artical_tag">
                <span class="original">
                    ${news.ntab} </span>
                    <span class="time"><fmt:formatDate value="${newsList.ncreateTime}" type="date"
                                                       pattern="yyyy年MM月dd日 HH:mm:ss"/></span>
                </div>

                <ul class="article_tags clearfix csdn-tracking-statistics tracking-click" data-mod="popu_377">
                    <li class="tit">标签：</li>

                    <!--          [startarticletags]-->
                    <!--          [endarticletags]-->
                </ul>
                <ul class="right_bar">
                    <li>
                        <button class="btn-noborder"><i class="icon iconfont">阅读量</i><span class="txt">${news.nview}</span>
                        </button>
                    </li>
                    <li class="edit">
                        <a class="btn-noborder" href="">
                            <i class="icon iconfont icon-bianji"></i><span class="txt">编辑</span>
                        </a>
                    </li>
                    <li class="del">
                        <a class="btn-noborder" onclick="javascript:deleteArticle(fileName);return false;">
                            <i class="icon iconfont icon-shanchu"></i><span class="txt">删除</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="article_content" class="article_content csdn-tracking-statistics tracking-click"
                 data-mod="popu_519" data-dsm="post">
                <div class="htmledit_views">
                    <html>
                    <body>
                    <div class="rich_media_content " id="js_content">
                        ${news.nconten}
                    </div>
                    </body>
                    </html>
                </div>
            </div>
        </article>
        <%--<div class="readall_box csdn-tracking-statistics tracking-click" data-mod="popu_376">
            <div class="read_more_mask"></div>
            <a class="btn btn-large btn-gray-fred read_more_btn" target="_self">阅读全文</a>
        </div>--%>
        <%--<div class="article_copyright">

        </div>--%>
        <ul class="article_collect clearfix csdn-tracking-statistics tracking-click" data-mod="popu_378">
            <li class="tit">本文已收录于以下专栏：</li>
            <!--          [startarticlecolumns]-->
            <!--          [endarticlecolumns]-->
        </ul>
        <div class="comment_box clearfix" id="comments">
            <div id="comment_form">
                <div id="commentsbmitarear">
                </div>
            </div>
        </div>
        <div class="comment_li_outbox">
            <div id="comment_list"></div>
        </div>

        <div class="more_comment">
            <div id="comment_bar" class="trackgin-ad" data-mod="popu_385"></div>
        </div>

        <!-- <h3 class="recommend_tit" id="related">相关文章推荐</h3> -->
        <div class="recommend_list clearfix" id="rasss">
            <dl class="clearfix csdn-tracking-statistics recommend_article" data-mod="popu_387" data-poputype="feed"
                data-feed-show="false" data-dsm="post">
                <a href="//blog.csdn.net/SUFEIDEYEYE/article/details/51622221" target="_blank"
                   strategy="BlogCommendFromQuerySearch_0">
                    <dd>
                        <h2>mark[一个32岁入门的70后程序员给我的启示]</h2>
                        <div class="summary">
                            mark[一个32岁入门的70后程序员给我的启示]


                            http://www.58maisui.com/2016/06/09/a-122/?ref=myread...
                        </div>

                        <ul>
                            <li class="avatar_img"><img src="../../statics/picture/3_sufeideyeye.jpg" alt="SUFEIDEYEYE"
                                                        title="SUFEIDEYEYE"></li>
                            <li class="user_name">SUFEIDEYEYE</li>
                            <li class="time">2016年06月09日 17:45</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>250</span></li>
                        </ul>
                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article" data-mod="popu_387" data-poputype="feed"
                data-feed-show="false" data-dsm="post">
                <a href="//blog.csdn.net/u014029255/article/details/50457111" target="_blank"
                   strategy="BlogCommendFromQuerySearch_1">
                    <dd>
                        <h2>一名70后程序员的心声</h2>
                        <div class="summary">
                            所谓革命就是要命，IT行业的这场革命从来就没有休止过，从机器语言到汇编语言，从面向过程到面向对象，从Pascal到Java。一批又一批的程序猿被无情的排在了沙滩上，等待他们的是被搁浅、被抛弃、被遗忘。...
                        </div>

                        <ul>
                            <li class="avatar_img"><img src="${news.nimg}" alt="${news.nauthor}"
                                                        title="${news.nauthor}"></li>
                            <li class="user_name">${news.nauthor}</li>
                            <li class="time">${news.ncreateTime}</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>544</span></li>
                        </ul>
                    </dd>
                </a>
            </dl>
        </div>
    </main>
    <aside>
        <div class="right_box user_info">
            <dl class="inf_bar clearfix">
                <dt class="csdn-tracking-statistics tracking-click" data-mod="popu_381">
                    <a href="//blog.csdn.net/egefcxzo3ha1x4" target="_blank">
                        <img src="${news.nimg}" class="avatar_pic">
                    </a>
                </dt>
                <dd>
                    <h3 class="csdn-tracking-statistics tracking-click" data-mod="popu_380"><a
                            href="//blog.csdn.net/egefcxzo3ha1x4" target="_blank" id="uid">${news.nauthor}</a></h3>
                    <div class="medals" title="">
                    </div>
                </dd>
            </dl>
            <div class="inf_number_box clearfix">
                <dl title="60">
                    <dt>原创</dt>
                    <dd>60</dd>
                </dl>
                <dl title="74">
                    <dt>粉丝</dt>
                    <dd id='fan'>${news.nfollower}</dd>
                </dl>
                <dl title="121">
                    <dt>喜欢</dt>
                    <dd>${news.nlike}</dd>
                </dl>
                <dl title="235">
                    <dt>评论</dt>
                    <dd>${news.ndiscuss}</dd>
                </dl>
            </div>

        </div>
        <div class="interflow clearfix">
            <div class="badge gradeAndbadge">
                <div>
                    <img src='../../statics/picture/chizhiyiheng.png' alt='持之以恒'>
                </div>
            </div>
            <div class="grade gradeAndbadge gradewidths">
                <span>等级：</span>
                <div>
                    <a href="http://blog.csdn.net/home/help.html#level" title="5级,点击查看等级说明" target="_blank">
                        <img class="grade-img" src="../../statics/picture/blog5.png" alt="5级,点击查看等级说明">
                    </a>
                </div>
            </div>
            <div class="gradeAndbadge gradewidths" title="200144">
                <span>访问量：</span>
                <span class="num odd-overhidden">20万+</span>
            </div>

            <div class="gradeAndbadge gradewidths" title="3158">
                <span>积分：</span>
                <span class="num odd-overhidden">${news.nintegration}</span>
            </div>
            <div class="gradeAndbadge gradewidths" title="13274">
                <span>排名：</span>
                <span class="num odd-overhidden">${news.nranking}</span>
            </div>

        </div>
        <div class="extension_other csdn-tracking-statistics tracking-click" data-mod="popu_389">
            <!--u3032528-->
            <div class="flashrecommend">
                <script type="text/javascript" src="../../statics/otherTxt/js/bwocoltly.js"></script>
            </div>
        </div>
        <div class="writings">
            <div class="public_signal clearfix">
                <h3>他的最新文章</h3>
                <a href="//blog.csdn.net/egefcxzo3ha1x4" target="_blank" class="more"><span>更多文章</span></a>
            </div>
            <ul class="inf_list clearfix csdn-tracking-statistics tracking-click" data-mod="popu_382">
                <li class="clearfix">
                    <a href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79493057" target="_blank">IT人舌尖上的新年</a>
                </li>
                <li class="clearfix">
                    <a href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79493053"
                       target="_blank">段子合集|做一个欢乐的程序猿！</a>
                </li>
                <li class="clearfix">
                    <a href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79493051" target="_blank">这些让程序员目瞪口呆的 Bug
                        ，愿新的一年里你不会遇到</a>
                </li>
                <li class="clearfix">
                    <a href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79480189" target="_blank">鹅厂员工告诉你面试互联网公司要不要穿正装</a>
                </li>
                <li class="clearfix">
                    <a href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79480186" target="_blank">程序员：我只想安静地写代码，领导却跟我谈大局、讲奉献</a>
                </li>
            </ul>
        </div>
        <!--    [StartShowSelfColumn]-->
        <!--    [EndShowSelfColumn]-->
        <div class="user-hotArticle sort timeSort">
            <h3>文章存档</h3>
            <ul class="hotArticle-list timeSort-list">
                <li class="clearfix">
                    <a href="http://blog.csdn.net/egefcxzo3ha1x4/article/month/2018/03" class="odd-overhidden floatL">2018年3月</a>
                    <div class="read list-left floatR"><span>12篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/egefcxzo3ha1x4/article/month/2018/02" class="odd-overhidden floatL">2018年2月</a>
                    <div class="read list-left floatR"><span>48篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/egefcxzo3ha1x4/article/month/2018/01" class="odd-overhidden floatL">2018年1月</a>
                    <div class="read list-left floatR"><span>58篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/egefcxzo3ha1x4/article/month/2017/12" class="odd-overhidden floatL">2017年12月</a>
                    <div class="read list-left floatR"><span>76篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/egefcxzo3ha1x4/article/month/2017/11" class="odd-overhidden floatL">2017年11月</a>
                    <div class="read list-left floatR"><span>101篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/egefcxzo3ha1x4/article/month/2017/10" class="odd-overhidden floatL">2017年10月</a>
                    <div class="read list-left floatR"><span>60篇</span></div>
                </li>
            </ul>
            <div class="unfold-btn">
                <span>展开</span><i class="icon iconfont icon-xiajiantou"></i>
            </div>
        </div>
        <div class="user-hotArticle">
            <h3>他的热门文章</h3>
            <ul class="hotArticle-list csdn-tracking-statistics tracking-click" data-mod="popu_521">
                <!--        [StartHotArticles]-->
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/79070190">听说最近知识变现，测一测程序员的知识广度？</a>
                    <div class="read list-left"><i class="icon iconfont icon-read">阅读量</i><span>7903</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78937254">史上最无聊的程序员是怎样注释代码的</a>
                    <div class="read list-left"><i class="icon iconfont icon-read">阅读量</i><span>6452</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78488468">哪一种是程序员最不喜欢的编程语言</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>6361</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78941682">年终了，程序员这样谈加薪就稳了！</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>5894</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78994552">互联网程序员行话（黑话）合集</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>5563</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78708687">不会说段子的程序员不是老司机</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>5247</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/79056458">编程到底难在哪里？</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>4849</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78708689">程序员最核心的竞争力是什么？</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>4819</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/78664189">职业生涯指南——附神级跳槽攻略图！</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>4790</span></div>
                </li>
                <li>
                    <a href="//blog.csdn.net/egefcxzo3ha1x4/article/details/79023119">程序员该考虑什么时候辞职？</a>
                    <div class="read list-left"><i class="icon iconfont ">阅读量</i><span>4173</span></div>
                </li>
                <!--        [EndHotArticles]-->
            </ul>
        </div>

        <!--    [startcustom]-->
        <!--    [endcustom]-->
        <div class="fixRight_box" style="height:256px">
            <div class="fixRight">
                <!--u3163270-->
                <script type="text/javascript" src="../../statics/otherTxt/js/avneunkwb.js"></script>
                <div class="persion_article"></div>
            </div>
        </div>
    </aside>
</div>

<%--<div class="left_fixed">
    <div class="left_show_button">
        <span>
          <i class="icon iconfont icon-youjiantou"></i>
        </span>
    </div>
    <!-- <ul class="left_menu" id="share_box">
         <li>
             <button class="left-fixed-btn btn-like csdn-tracking-statistics tracking-click" data-mod="popu_373" target="_self" title="点赞">
                 <a href="javascript:void(0);" class="iconbox border_red" ><i class="icon iconfont icon-dianzan"></i></a>
                 <a class="txt" href="javascript:void(0);">7</a>
             </button>
         </li>
         <li id="blog_artical_directory">
             <button class="left-fixed-btn left_menu_btn csdn-tracking-statistics tracking-click" data-mod="popu_372" target="_self" title="目录">
                 <a href="javascript:void(0);" class="iconbox border_black" ><i class="icon iconfont icon-mulu"></i></a>
             </button>
         </li>
         <li class="menu_con">
             <div class="list_father">
                 <div class="arr_box">
                     <button class="btn-noborder arr-btn scroll-down  left_scroll_down"><i class="icon iconfont icon-xiajiantou"></i></button>
                     <button class="btn-noborder arr-btn scroll-up left_scroll_top"><i class="icon iconfont icon-shangjiantou"></i></button>
                 </div>
                 <div class="arr"></div>
                 <div id="csdnBlogDir"></div>
             </div>
         </li>
         &lt;!&ndash;        <li>&ndash;&gt;
         &lt;!&ndash;            <button class="left-fixed-btn btn-like tracking-ad" data-mod="popu_373" target="_self">&ndash;&gt;
         &lt;!&ndash;                <span class="iconbox border_red"><i class="icon iconfont icon-xihuan-"></i></span>&ndash;&gt;
         &lt;!&ndash;                <span class="txt">喜欢</span>&ndash;&gt;
         &lt;!&ndash;                <span class="untxt">取消喜欢</span>&ndash;&gt;
         &lt;!&ndash;            </button>&ndash;&gt;
         &lt;!&ndash;        </li>&ndash;&gt;
         <li>
             <button class="left-fixed-btn csdn-tracking-statistics tracking-click" data-mod="popu_374"  id="com-quick-collect" target="_self" title="收藏">
                 <a href="javascript:void(0);" class="iconbox border_purple" ><i class="icon iconfont icon-shoucang"></i></a>
             </button>
         </li>
         <li>
             <button class="left-fixed-btn btn-pinglun csdn-tracking-statistics tracking-click" data-mod="popu_544" title="评论">
                 <a href="javascript:void(0);" class="iconbox border_purple" ><i class="icon iconfont icon-pinglun"></i></a>
             </button>
         </li>
         <li class="bdsharebuttonbox csdn-tracking-statistics tracking-click" data-mod="popu_172">
             <a class="bds_tsina outside left-fixed-btn" data-cmd="tsina" title="分享到新浪微博"></a>
             <span class="iconbox border_red2"><i class="icon iconfont icon-xinlang"></i></span>
         </li>
         <li class="bdsharebuttonbox csdn-tracking-statistics tracking-click" data-mod="popu_172">
             <a class="bds_weixin outside left-fixed-btn" data-cmd="weixin" title="分享到微信"></a>
             <span class="iconbox border_green"><i class="icon iconfont icon-weixin"></i></span>
         </li>
         <li class="bdsharebuttonbox csdn-tracking-statistics tracking-click" data-mod="popu_172">
             <a class="bds_qzone outside left-fixed-btn" data-cmd="qzone" title="分享到QQ空间"></a>
             <span class="iconbox border_blue"><i class="icon iconfont icon-QQ"></i></span>
         </li>
         <li id="share_box">
             
             <div class="bdsharebuttonbox csdn-tracking-statistics tracking-click" data-mod="popu_172">
                 
                 
                 
             </div>
         </li>
     </ul>-->
</div>--%>
<div id="pop_win"></div>
<div id="popup_mask"></div>
<div class="pop_CA_cover"></div>
<div class="pop pop_CA">
    <div class="CA_header">
        收藏助手
        <span class="cancel_icon" id="fapancle"></span>
    </div>
    <iframe src="" id="collectIframe" frameborder="0" width="100%" height="360" scrolling="no"></iframe>
</div>
<!--举报-->
<div id="report_dialog" style="top: 250px; left: 343.5px;">
    <div id="panel_report">
        <div class="panel_head">不良信息举报</div>
        <form method="post" id="frmReport" class="panel_body">
            <table border="0" cellpadding="0" cellspacing="4" class="pop_table">
                <tbody>
                <tr>
                    <td colspan="2">您举报文章：<a href="//blog.csdn.net/EGEFCXzo3Ha1x4/article/details/79350834"
                                             target="_blank">一个32岁入门的70后程序员给我的启示</a></td>
                </tr>
                <tr>
                    <th style="width:60px;">举报原因：</th>
                    <td id="panel_reporttype">
                        <label><input type="radio" class="report_type" id="report_sex" name="report_type"
                                      value="1">色情</label>
                        <label><input type="radio" class="report_type" id="report_Politics" name="report_type"
                                      value="2">政治</label>
                        <label><input type="radio" class="report_type" id="report_copy" name="report_type" value="3">抄袭</label>
                        <label><input type="radio" class="report_type" id="report_ad" name="report_type"
                                      value="4">广告</label>
                        <label><input type="radio" class="report_type" id="report_want" name="report_type" value="5">招聘</label>
                        <label><input type="radio" class="report_type" id="report_call" name="report_type" value="6">骂人</label>
                        <br>
                        <label><input type="radio" class="report_type" id="report_other" name="report_type" value="7">其他</label>
                        <input type="text" name="report_other_content" id="report_other_content" maxlength="30"
                               style="display: none;">
                    </td>
                </tr>
                <tr id="panel_originalurl" style="display: none;">
                    <th>原文地址：</th>
                    <td>
                        <input id="originalurl" value="http://" name="originalurl" type="text" style="width: 90%;">
                    </td>
                </tr>
                <tr>
                    <th id="sp_reason">原因补充：</th>
                    <td>
                        <textarea id="report_description" style="width: 300px;" rows="3"
                                  name="report_description"></textarea>
                        <p id="sp_n" style="color:#999;margin:0px;padding:0px;">(最多只允许输入30个字)</p>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input id="btnSubmitReport" name="submit" type="image" align="middle" class="btn_1"
                               src="https://csdnimg.cn/release/phoenix/images/btn_submit.jpg">
                        <span style="padding-left:20px;"></span>
                        <img id="btnCloseReportDialog" src="../../statics/picture/btn_cancel.jpg" align="middle">
                        <div id="error" style="color: Red">
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
    <script language="javascript" type="text/javascript">
        var isComment = 0;
        //显示隐藏地址
        $(function () {
            console.log("version:phoenix");
            if (isComment) {
                $("#report_description").attr("disabled", true);
                $("#sp_n").hide();
                $("#sp_reason").html("评论内容：");
            }
            $(".report_type").click(function () {
                $("#panel_originalurl,#report_other_content").hide();
                switch ($(this).val()) {
                    case '3':
                        $("#panel_originalurl").show();
                        $("#originalurl").focus();
                        break;
                    case '7':
                        if (isComment) {
                            $("#report_other_content").show().focus();
                        }
                        break;
                }

            });

            $("#frmReport").submit(function () {
                if (!currentUserName) {

                    if (confirm("您的操作必须登录，是否登录？")) {
                        location.href = "//passport.csdn.net/account/login?from=" + encodeURIComponent(location.href);
                        return false;
                    }
                    return false;
                }

                var reportType = $("input[name=report_type]:checked").val();
                if (!reportType) {
                    alert("请选择举报原因！");
                    return false;
                }
                var otherInfo = "";
                switch (reportType) {
                    case '3':
                        otherInfo = $("#originalurl").val();
                        if (otherInfo == "" || otherInfo == "http://") {
                            alert("举报抄袭必须提供原创文章地址！");
                            $("#originalurl").focus();
                            return false;
                        } else if (!checkeURL(otherInfo)) {
                            alert("请输入正确的原创文章地址！");
                            $("#originalurl").focus();
                            return false;
                        }
                        break;
                    case '7':
                        otherInfo = $("#report_other_content").val();
                        if (isComment && !otherInfo) {
                            alert("请填写举报的具体原因！");
                            $("#report_other_content").focus();
                            return false;
                        }
                        if (!isComment) {
                            if (!$("#report_description").val()) {
                                alert("请填写举报的具体原因！");
                                $("#report_description").focus();
                                return false;
                            }
                        }
                        break;
                }
                if (!isComment) {
                    if ($("#report_description").val().length > 30) {
                        alert("举报原因最多只允许输入30个字！");
                        return false;
                    }
                }
                nowTime = {
                    year: new Date().getFullYear(),
                    month: parseInt(new Date().getMonth()) + 1,
                    day: new Date().getDate(),
                    hours: parseInt(new Date().getHours()) + 1,
                    minutes: parseInt(new Date().getMinutes()) + 1,
                    seconds: parseInt(new Date().getSeconds()) + 1
                };
                var data = {
                    articleId: fileName,
                    commentId: 0,
                    reportType: reportType,
                    originalurl: $("#originalurl").val(),
                    report_other_content: $("#report_other_content").val(),
                    report_description: $("#report_description").val(),
                    currentUserName: currentUserName,
                    updatetime: nowTime.year + '/' + nowTime.month + '/' + nowTime.day + ' ' + nowTime.hours + ':' + nowTime.minutes + ':' + seconds,
                    blogUser: username
                };
                if (!isComment) {//如果是举报文章
                    data.report_other_content = data.report_description;
                    // data.report_description = "1. 神经网络这是一个常见的神经网络的图：这是一个常见的三层神经网络的基本构成，Layer L1是输入层，Layer L2是隐含层";
                }

                $.post(blog_address + "/common/report?id=" + fileName + "&t=2", data, function (data) {
                    if (data.result == 1) {
                        SetError("感谢您的举报，我们会尽快审核！");
                    } else {
                        if (data.content) alert(data.content);
                    }

                });
                return false;
            });

            $("#btnCloseReportDialog").click(function () {
                CloseDiv();
            });

        });

        //提示后关闭方法
        function SetError(error) {
            $("#btnCloseReportDialog").trigger("click");
            alert(error);
            CloseDiv();
        }

        //关闭方法
        function CloseDiv() {

            $.removeMask();
            $("#report_dialog").hide();
            return false;
        }

        //验证url
        function checkeURL(url) {
            return /^http(s)?:\/\/([\w-]+\.)+[\w-]+/i.test(url);
        }
    </script>
</div>
<!--  fixme 后期清理掉  -->
<div id="a52b5334d" style="width: 1px; height: 1px; display: none;">
    <script id="adJs52b5334"></script>
    <script>document.getElementById("adJs52b5334").src = "https://ads.csdn.net/../../statics/otherTxt/js/opt/52b5334.js?t=" + Math.random();</script>
</div>
<script>
    $(".MathJax").remove();
</script>
<script type="text/javascript" src="../../statics/otherTxt/js/mathjax.js"></script>
<!-- <script type="text/javascript" src="../../statics/otherTxt/js/login.js"></script> -->
<script>window._bd_share_config = {
    "common": {
        "bdSnsKey": {},
        "bdText": "",
        "bdMini": "1",
        "bdMiniList": false,
        "bdPic": "",
        "bdStyle": "0",
        "bdSize": "16"
    }, "share": {}
};
with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '//csdnimg.cn/static/api/../../statics/otherTxt/js/share.js?v=89860594'];</script>
<script type="text/javascript">
    if ($(".article_collect li").length == 1) {
        $(".article_collect").hide();
    }
    if ($(".article_tags li").length == 1) {
        $(".article_tags").hide();
    }
    $(".edit a").attr("href", "//mp.csdn.net/postedit/" + fileName);
    $.each($(".edu_li a"), function () {
        $(this).attr("href", $(this).attr("href").replace("blog7", "blog9"))
    });
    new CNick('#uid').showNickname();

    if ($("#fan").html() == "") {
        $("#fan").html(0);
    }
</script>
<script src="../../statics/otherTxt/js/appendmark.min.js" type="text/javascript"></script>
<script type="text/javascript">
    appendMark($('.recommend_list').children('a').find('dt'), $('.extension_other'), $('.yd_a_d_feed_cla'))
</script>
<script src='../../statics/otherTxt/js/publib_footer-1.0.3.js' data-isfootertrack="false"></script>
<script src='../../statics/otherTxt/js/gotop-v1.0.min.js'></script>
<script>
    GoTop({
        right: 8,
        hasReport: true,
        reportFun: function () {
            $.createMask();
            var r = blog_address + "/common/report?id=" + fileName + "&t=" + 2;
            if (3 == 2) {
                var s = n.parentNode.parentNode.parentNode.getAttribute("floor");
                r += "&floor=" + s
            }
            var i = (document.documentElement.clientHeight - 400) / 2 + (document.documentElement.scrollTop || document.body.scrollTop),
                a = (document.documentElement.clientWidth - 400) / 2;

            $("#report_dialog").load(r).css({
                //top: i + "px",
                top: '20%',
                left: a
            }).show()
        }
    })
</script>
<div id="loginWrap"></div>
<div id="dlMask"></div>
</body>
