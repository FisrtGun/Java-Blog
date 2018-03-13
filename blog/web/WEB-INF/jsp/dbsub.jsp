<%--
  Created by IntelliJ IDEA.
  User: kgc
  Date: 2018/3/13
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!-- saved from url=(0056)http://blog.csdn.net/u011277123/article/details/70837736 -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<script type="text/javascript" async="" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/pr"></script>
    <script charset="utf-8" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/b.js"></script>-->

    <!--<script type="text/javascript" async="" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/yswarv"></script>-->
    <link rel="canonical" href="http://blog.csdn.net/u011277123/article/details/70837736">
    <!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/hm.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/apiaccept"></script>
    <script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/hm.js"></script>-->
    <script type="text/javascript">
        var username = "u011277123";
        var _blogger = username;
        var blog_address = "http://blog.csdn.net/u011277123";
        var static_host = "http://csdnimg.cn/release/phoenix/";
        var currentUserName = "";
        var fileName = '70837736';
        var commentscount = 0;
        var islock = false;
        window.quickReplyflag = true;
        var totalFloor = 0;
        var isBole = false;
        var isDigg = false;
        var isExpert = false;
        var isAdm = false;
        var baiduKey = "mysql+%E8%A1%A8%E5%AD%97%E6%AE%B5%E5%A4%AA%E5%A4%9A";
        var needInsertBaidu = false;
        var isShowAds = true;
    </script>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!-- <script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/jquery-1.9.1.min.js" type="text/javascript"></script>-->
    <link rel="stylesheet" href="../../statics/dbcss/avatar.css">
    <link rel="stylesheet" href="../../statics/dbcss/main-aa20801f57.css">
    <link rel="stylesheet" href="../../statics/dbcss/content_toolbar.css">

    <!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/main-1.0.5.js"></script>-->
    <!-- <script type="text/javascript" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/tracking-1.0.2.js"
             charset="utf-8"></script>
     <script type="text/javascript" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/main-8faf05cfc6.js"></script>-->

    <!--    <script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/ds.js"></script>-->
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
    <meta name="description" content="原创 web情报站
2017-04-26 17:23



随着业务需求的不断变化，我们发现需要往视频数据表里面新增很多字段，如：是否需要购买才能够观看、是否VIP就可以看、是否免费、有几个人购买了等等，我们不断的往数据表里面添加各种各样的字段，最后发现字段越来越多，这个时候我们会担心是否会有性能问题，下面我们就围绕这个问题来聊聊，MySQL里面一张表到底可以有多少个字段？难道正如互联网">
    <meta name="keywords" content="">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <link rel="alternate" media="handheld" href="http://blog.csdn.net/u011277123/article/details/70837736#">
    <meta name="shenma-site-verification" content="5a59773ab8077d4a62bf469ab966a63b_1497598848">
    <title>一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客</title>
    <link href="http://csdnimg.cn/public/favicon.ico" rel="SHORTCUT ICON">
    <!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/baidu_search-1.0.0.js"
            type="text/javascript"></script>-->
    <link rel="stylesheet" href="../../statics/dbcss/htmledit_views-b569b0e3ef.css">
    <!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/share.js"></script>-->
    <link rel="stylesheet" type="text/css" href="../../statics/dbcss/goTop.min.css">
    <style type="text/css">.MathJax_Hover_Frame {
        border-radius: .25em;
        -webkit-border-radius: .25em;
        -moz-border-radius: .25em;
        -khtml-border-radius: .25em;
        box-shadow: 0px 0px 15px #83A;
        -webkit-box-shadow: 0px 0px 15px #83A;
        -moz-box-shadow: 0px 0px 15px #83A;
        -khtml-box-shadow: 0px 0px 15px #83A;
        border: 1px solid #A6D ! important;
        display: inline-block;
        position: absolute
    }

    .MathJax_Menu_Button .MathJax_Hover_Arrow {
        position: absolute;
        cursor: pointer;
        display: inline-block;
        border: 2px solid #AAA;
        border-radius: 4px;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        -khtml-border-radius: 4px;
        font-family: 'Courier New', Courier;
        font-size: 9px;
        color: #F0F0F0
    }

    .MathJax_Menu_Button .MathJax_Hover_Arrow span {
        display: block;
        background-color: #AAA;
        border: 1px solid;
        border-radius: 3px;
        line-height: 0;
        padding: 4px
    }

    .MathJax_Hover_Arrow:hover {
        color: white !important;
        border: 2px solid #CCC !important
    }

    .MathJax_Hover_Arrow:hover span {
        background-color: #CCC !important
    }
    </style>
    <style type="text/css">#MathJax_About {
        position: fixed;
        left: 50%;
        width: auto;
        text-align: center;
        border: 3px outset;
        padding: 1em 2em;
        background-color: #DDDDDD;
        color: black;
        cursor: default;
        font-family: message-box;
        font-size: 120%;
        font-style: normal;
        text-indent: 0;
        text-transform: none;
        line-height: normal;
        letter-spacing: normal;
        word-spacing: normal;
        word-wrap: normal;
        white-space: nowrap;
        float: none;
        z-index: 201;
        border-radius: 15px;
        -webkit-border-radius: 15px;
        -moz-border-radius: 15px;
        -khtml-border-radius: 15px;
        box-shadow: 0px 10px 20px #808080;
        -webkit-box-shadow: 0px 10px 20px #808080;
        -moz-box-shadow: 0px 10px 20px #808080;
        -khtml-box-shadow: 0px 10px 20px #808080;
        filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true')
    }

    #MathJax_About.MathJax_MousePost {
        outline: none
    }

    .MathJax_Menu {
        position: absolute;
        background-color: white;
        color: black;
        width: auto;
        padding: 2px;
        border: 1px solid #CCCCCC;
        margin: 0;
        cursor: default;
        font: menu;
        text-align: left;
        text-indent: 0;
        text-transform: none;
        line-height: normal;
        letter-spacing: normal;
        word-spacing: normal;
        word-wrap: normal;
        white-space: nowrap;
        float: none;
        z-index: 201;
        box-shadow: 0px 10px 20px #808080;
        -webkit-box-shadow: 0px 10px 20px #808080;
        -moz-box-shadow: 0px 10px 20px #808080;
        -khtml-box-shadow: 0px 10px 20px #808080;
        filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true')
    }

    .MathJax_MenuItem {
        padding: 2px 2em;
        background: transparent
    }

    .MathJax_MenuArrow {
        position: absolute;
        right: .5em;
        padding-top: .25em;
        color: #666666;
        font-size: .75em
    }

    .MathJax_MenuActive .MathJax_MenuArrow {
        color: white
    }

    .MathJax_MenuArrow.RTL {
        left: .5em;
        right: auto
    }

    .MathJax_MenuCheck {
        position: absolute;
        left: .7em
    }

    .MathJax_MenuCheck.RTL {
        right: .7em;
        left: auto
    }

    .MathJax_MenuRadioCheck {
        position: absolute;
        left: 1em
    }

    .MathJax_MenuRadioCheck.RTL {
        right: 1em;
        left: auto
    }

    .MathJax_MenuLabel {
        padding: 2px 2em 4px 1.33em;
        font-style: italic
    }

    .MathJax_MenuRule {
        border-top: 1px solid #CCCCCC;
        margin: 4px 1px 0px
    }

    .MathJax_MenuDisabled {
        color: GrayText
    }

    .MathJax_MenuActive {
        background-color: Highlight;
        color: HighlightText
    }

    .MathJax_MenuDisabled:focus, .MathJax_MenuLabel:focus {
        background-color: #E8E8E8
    }

    .MathJax_ContextMenu:focus {
        outline: none
    }

    .MathJax_ContextMenu .MathJax_MenuItem:focus {
        outline: none
    }

    #MathJax_AboutClose {
        top: .2em;
        right: .2em
    }

    .MathJax_Menu .MathJax_MenuClose {
        top: -10px;
        left: -10px
    }

    .MathJax_MenuClose {
        position: absolute;
        cursor: pointer;
        display: inline-block;
        border: 2px solid #AAA;
        border-radius: 18px;
        -webkit-border-radius: 18px;
        -moz-border-radius: 18px;
        -khtml-border-radius: 18px;
        font-family: 'Courier New', Courier;
        font-size: 24px;
        color: #F0F0F0
    }

    .MathJax_MenuClose span {
        display: block;
        background-color: #AAA;
        border: 1.5px solid;
        border-radius: 18px;
        -webkit-border-radius: 18px;
        -moz-border-radius: 18px;
        -khtml-border-radius: 18px;
        line-height: 0;
        padding: 8px 0 6px
    }

    .MathJax_MenuClose:hover {
        color: white !important;
        border: 2px solid #CCC !important
    }

    .MathJax_MenuClose:hover span {
        background-color: #CCC !important
    }

    .MathJax_MenuClose:hover:focus {
        outline: none
    }
    </style>
    <style type="text/css">.MathJax_Preview .MJXf-math {
        color: inherit !important
    }
    </style>
    <style type="text/css">.MJX_Assistive_MathML {
        position: absolute !important;
        top: 0;
        left: 0;
        clip: rect(1px, 1px, 1px, 1px);
        padding: 1px 0 0 0 !important;
        border: 0 !important;
        height: 1px !important;
        width: 1px !important;
        overflow: hidden !important;
        display: block !important;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none
    }

    .MJX_Assistive_MathML.MJX_Assistive_MathML_Block {
        width: 100% !important
    }
    </style>
    <style type="text/css">#MathJax_Zoom {
        position: absolute;
        background-color: #F0F0F0;
        overflow: auto;
        display: block;
        z-index: 301;
        padding: .5em;
        border: 1px solid black;
        margin: 0;
        font-weight: normal;
        font-style: normal;
        text-align: left;
        text-indent: 0;
        text-transform: none;
        line-height: normal;
        letter-spacing: normal;
        word-spacing: normal;
        word-wrap: normal;
        white-space: nowrap;
        float: none;
        -webkit-box-sizing: content-box;
        -moz-box-sizing: content-box;
        box-sizing: content-box;
        box-shadow: 5px 5px 15px #AAAAAA;
        -webkit-box-shadow: 5px 5px 15px #AAAAAA;
        -moz-box-shadow: 5px 5px 15px #AAAAAA;
        -khtml-box-shadow: 5px 5px 15px #AAAAAA;
        filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true')
    }

    #MathJax_ZoomOverlay {
        position: absolute;
        left: 0;
        top: 0;
        z-index: 300;
        display: inline-block;
        width: 100%;
        height: 100%;
        border: 0;
        padding: 0;
        margin: 0;
        background-color: white;
        opacity: 0;
        filter: alpha(opacity=0)
    }

    #MathJax_ZoomFrame {
        position: relative;
        display: inline-block;
        height: 0;
        width: 0
    }

    #MathJax_ZoomEventTrap {
        position: absolute;
        left: 0;
        top: 0;
        z-index: 302;
        display: inline-block;
        border: 0;
        padding: 0;
        margin: 0;
        background-color: white;
        opacity: 0;
        filter: alpha(opacity=0)
    }
    </style>
    <style type="text/css">.MathJax_Preview {
        color: #888
    }

    #MathJax_Message {
        position: fixed;
        left: 1em;
        bottom: 1.5em;
        background-color: #E6E6E6;
        border: 1px solid #959595;
        margin: 0px;
        padding: 2px 8px;
        z-index: 102;
        color: black;
        font-size: 80%;
        width: auto;
        white-space: nowrap
    }

    #MathJax_MSIE_Frame {
        position: absolute;
        top: 0;
        left: 0;
        width: 0px;
        z-index: 101;
        border: 0px;
        margin: 0px;
        padding: 0px
    }

    .MathJax_Error {
        color: #CC0000;
        font-style: italic
    }
    </style>
    <link rel="stylesheet" href="../../statics/dbcss/share_style0_16.css">
    <style type="text/css">.MJXp-script {
        font-size: .8em
    }

    .MJXp-right {
        -webkit-transform-origin: right;
        -moz-transform-origin: right;
        -ms-transform-origin: right;
        -o-transform-origin: right;
        transform-origin: right
    }

    .MJXp-bold {
        font-weight: bold
    }

    .MJXp-italic {
        font-style: italic
    }

    .MJXp-scr {
        font-family: MathJax_Script, 'Times New Roman', Times, STIXGeneral, serif
    }

    .MJXp-frak {
        font-family: MathJax_Fraktur, 'Times New Roman', Times, STIXGeneral, serif
    }

    .MJXp-sf {
        font-family: MathJax_SansSerif, 'Times New Roman', Times, STIXGeneral, serif
    }

    .MJXp-cal {
        font-family: MathJax_Caligraphic, 'Times New Roman', Times, STIXGeneral, serif
    }

    .MJXp-mono {
        font-family: MathJax_Typewriter, 'Times New Roman', Times, STIXGeneral, serif
    }

    .MJXp-largeop {
        font-size: 150%
    }

    .MJXp-largeop.MJXp-int {
        vertical-align: -.2em
    }

    .MJXp-math {
        display: inline-block;
        line-height: 1.2;
        text-indent: 0;
        font-family: 'Times New Roman', Times, STIXGeneral, serif;
        white-space: nowrap;
        border-collapse: collapse
    }

    .MJXp-display {
        display: block;
        text-align: center;
        margin: 1em 0
    }

    .MJXp-math span {
        display: inline-block
    }

    .MJXp-box {
        display: block !important;
        text-align: center
    }

    .MJXp-box:after {
        content: " "
    }

    .MJXp-rule {
        display: block !important;
        margin-top: .1em
    }

    .MJXp-char {
        display: block !important
    }

    .MJXp-mo {
        margin: 0 .15em
    }

    .MJXp-mfrac {
        margin: 0 .125em;
        vertical-align: .25em
    }

    .MJXp-denom {
        display: inline-table !important;
        width: 100%
    }

    .MJXp-denom > * {
        display: table-row !important
    }

    .MJXp-surd {
        vertical-align: top
    }

    .MJXp-surd > * {
        display: block !important
    }

    .MJXp-script-box > * {
        display: table !important;
        height: 50%
    }

    .MJXp-script-box > * > * {
        display: table-cell !important;
        vertical-align: top
    }

    .MJXp-script-box > *:last-child > * {
        vertical-align: bottom
    }

    .MJXp-script-box > * > * > * {
        display: block !important
    }

    .MJXp-mphantom {
        visibility: hidden
    }

    .MJXp-munderover {
        display: inline-table !important
    }

    .MJXp-over {
        display: inline-block !important;
        text-align: center
    }

    .MJXp-over > * {
        display: block !important
    }

    .MJXp-munderover > * {
        display: table-row !important
    }

    .MJXp-mtable {
        vertical-align: .25em;
        margin: 0 .125em
    }

    .MJXp-mtable > * {
        display: inline-table !important;
        vertical-align: middle
    }

    .MJXp-mtr {
        display: table-row !important
    }

    .MJXp-mtd {
        display: table-cell !important;
        text-align: center;
        padding: .5em 0 0 .5em
    }

    .MJXp-mtr > .MJXp-mtd:first-child {
        padding-left: 0
    }

    .MJXp-mtr:first-child > .MJXp-mtd {
        padding-top: 0
    }

    .MJXp-mlabeledtr {
        display: table-row !important
    }

    .MJXp-mlabeledtr > .MJXp-mtd:first-child {
        padding-left: 0
    }

    .MJXp-mlabeledtr:first-child > .MJXp-mtd {
        padding-top: 0
    }

    .MJXp-merror {
        background-color: #FFFF88;
        color: #CC0000;
        border: 1px solid #CC0000;
        padding: 1px 3px;
        font-style: normal;
        font-size: 90%
    }

    .MJXp-scale0 {
        -webkit-transform: scaleX(.0);
        -moz-transform: scaleX(.0);
        -ms-transform: scaleX(.0);
        -o-transform: scaleX(.0);
        transform: scaleX(.0)
    }

    .MJXp-scale1 {
        -webkit-transform: scaleX(.1);
        -moz-transform: scaleX(.1);
        -ms-transform: scaleX(.1);
        -o-transform: scaleX(.1);
        transform: scaleX(.1)
    }

    .MJXp-scale2 {
        -webkit-transform: scaleX(.2);
        -moz-transform: scaleX(.2);
        -ms-transform: scaleX(.2);
        -o-transform: scaleX(.2);
        transform: scaleX(.2)
    }

    .MJXp-scale3 {
        -webkit-transform: scaleX(.3);
        -moz-transform: scaleX(.3);
        -ms-transform: scaleX(.3);
        -o-transform: scaleX(.3);
        transform: scaleX(.3)
    }

    .MJXp-scale4 {
        -webkit-transform: scaleX(.4);
        -moz-transform: scaleX(.4);
        -ms-transform: scaleX(.4);
        -o-transform: scaleX(.4);
        transform: scaleX(.4)
    }

    .MJXp-scale5 {
        -webkit-transform: scaleX(.5);
        -moz-transform: scaleX(.5);
        -ms-transform: scaleX(.5);
        -o-transform: scaleX(.5);
        transform: scaleX(.5)
    }

    .MJXp-scale6 {
        -webkit-transform: scaleX(.6);
        -moz-transform: scaleX(.6);
        -ms-transform: scaleX(.6);
        -o-transform: scaleX(.6);
        transform: scaleX(.6)
    }

    .MJXp-scale7 {
        -webkit-transform: scaleX(.7);
        -moz-transform: scaleX(.7);
        -ms-transform: scaleX(.7);
        -o-transform: scaleX(.7);
        transform: scaleX(.7)
    }

    .MJXp-scale8 {
        -webkit-transform: scaleX(.8);
        -moz-transform: scaleX(.8);
        -ms-transform: scaleX(.8);
        -o-transform: scaleX(.8);
        transform: scaleX(.8)
    }

    .MJXp-scale9 {
        -webkit-transform: scaleX(.9);
        -moz-transform: scaleX(.9);
        -ms-transform: scaleX(.9);
        -o-transform: scaleX(.9);
        transform: scaleX(.9)
    }

    .MathJax_PHTML .noError {
        vertical-align:;
        font-size: 90%;
        text-align: left;
        color: black;
        padding: 1px 3px;
        border: 1px solid
    }
    </style>
</head>
<body>
<div id="BAIDU_DUP_fp_wrapper"
     style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display: none;">
    <!-- <iframe id="BAIDU_DUP_fp_iframe" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/o.html"
             style="width: 0px; height: 0px; visibility: hidden; display: none;"></iframe>-->
</div>
<div id="MathJax_Message" style="display: none;"></div>


<div class="csdn-toolbar csdn-toolbar tb_disnone  csdn-toolbar-skin-black ">
    <div class="container row center-block ">
        <ul class="pull-left left-menu clearfix">
            <li><a href="http://www.csdn.net/" title="CSDN首页" target="_blank">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#toolbar-csdnlogo"></use>
                </svg>
            </a></li>
            <li><a href="http://blog.csdn.net/" class="toolbar_to_feed" title="博客" target="_blank">博客</a></li>
            <li><a href="http://edu.csdn.net/" title="学院" target="_blank">学院</a></li>
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
            <li class="tb_is1513hide"><a href="http://www.gitee.com/" title="码云" target="_blank">码云</a></li>
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
                    <div class="tb_is1513show"><a href="http://www.gitee.com/" target="_blank">码云</a></div>
                    <div class="tb_is1513show"><a href="http://www.csto.com/" target="_blank">CSTO</a></div>
                </div>
            </li>
        </ul>
        <div class="pull-right login-wrap unlogin">
            <ul class="btns">
                <li class="toolbar-tracking csdn-tracking-statistics tracking-click" data-mod="popu_369"><a
                        href="http://blog.csdn.net/u011277123/article/details/70837736#" style="padding:0"
                        target="_blank"></a></li>
                <li>
                    <div class="search_bar csdn-tracking-statistics tracking-click" data-mod="popu_366"><input
                            type="text" class="input_search" name=""> <a href="http://so.csdn.net/so/" target="_blank"
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
                                                                                                src="../../statics/dbsubimage/100x100.jpg">
                        <div class="toolbar-circle"></div>
                    </a></div>
                    <div class="userControl">
                        <div><a href="http://blog.csdn.net/" target="_blank">我的博客</a></div>
                        <div><a class="xiaoxi" href="http://msg.csdn.net/" target="_blank">消息<span
                                class="toolbar-newsL">(3)</span></a></div>
                        <div><a href="http://my.csdn.net/my/account/changepwd" target="_blank">设置</a></div>
                        <div><a href="http://bbs.csdn.net/forums/Service" target="_blank">反馈</a></div>
                        <div><a href="http://oldblog.csdn.net/home/help.html" target="_blank">帮助</a></div>
                        <div><a href="http://passport.csdn.net/account/logout">退出</a></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--<script class="toolbar-s" type="text/javascript"
        src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/iconfont.js"></script>
<script id="toolbar-tpl-scriptId" prod="download" skin="black"
        src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/content_toolbar.js" type="text/javascript"
        domain="http://blog.csdn.net/"></script>-->
<div class="container clearfix">
    <main>
        <div style="display:none;">

        </div>
        <article>
            <h1 class="csdn_top">一个MySQL表真的最多只能够有24个字段吗？反正我不信</h1>
            <div class="article_bar clearfix">
                <div class="artical_tag">
                <span class="original">
                转载                </span>
                    <span class="time">2017年04月27日 09:08:22</span>
                </div>

                <ul class="article_tags clearfix csdn-tracking-statistics tracking-click" data-mod="popu_377"
                    style="display: none;">
                    <li class="tit">标签：</li>

                    <!--          [startarticletags]-->
                    <!--          [endarticletags]-->
                </ul>
                <ul class="right_bar">
                    <li>
                        <button class="btn-noborder"><i class="icon iconfont icon-read"></i><span
                                class="txt">2940</span></button>
                    </li>
                    <li class="edit" style="display: none;">
                        <a class="btn-noborder" href="http://mp.blog.csdn.net/postedit/70837736">
                            <i class="icon iconfont icon-bianji"></i><span class="txt">编辑</span>
                        </a>
                    </li>
                    <li class="del" style="display: none;">
                        <a class="btn-noborder" onclick="javascript:deleteArticle(fileName);return false;">
                            <i class="icon iconfont icon-shanchu"></i><span class="txt">删除</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="article_content" class="article_content csdn-tracking-statistics tracking-click"
                 data-mod="popu_519" data-dsm="post" style="height: 1273px; overflow: hidden;">
                <div class="htmledit_views">

                    <div class="articleInfo"><span class="original">原创</span> <span class="src">web情报站
</span><span class="time">2017-04-26 17:23</span></div>
                    <div class="article-content">
                        <div>
                            <blockquote>
                                <p>
                                    随着业务需求的不断变化，我们发现需要往视频数据表里面新增很多字段，如：是否需要购买才能够观看、是否VIP就可以看、是否免费、有几个人购买了等等，我们不断的往数据表里面添加各种各样的字段，最后发现字段越来越多，这个时候我们会担心是否会有性能问题，下面我们就围绕这个问题来聊聊，MySQL里面一张表到底可以有多少个字段？难道正如互联网上说的最多只能够有24个字段？字段多了真的会有性能问题？如果有性能问题，出现性能问题的根本原因是什么呢?</p>
                            </blockquote>
                            <p><strong>MySQL官方怎么说？</strong></p>
                            <p><img src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/1c6c0002d7faef78ae66"
                                    alt="一个MySQL表真的最多只能够有24个字段吗？反正我不信"></p>
                            <p>打开MySQL的官方文档，我们能够清楚的看到，MySQL对每个表有一个硬限制，就是最多只能够有4096字段数，但是实际情况要比这个少，因为还要取决于下面几个因素：</p>
                            <p>来自于存储引擎的限制，比如InnoDB存储引擎限制每个表最多有1017个字段。</p>
                            <p>所有字段的总共尺寸加起来不能够大于行尺寸限制，在MySQL里面，这个尺寸值为65535个字节。</p>
                            <p>还有一些其他原因，如.frm文件的限制等等，我们就不一一说了。</p>
                            <p>看到上面想必你已经很清楚关于最多字段数计算的问题了，同样从官方文档我们还能够找到每个表最多能够建多少个索引的答案等。</p>
                            <p><strong>是否有性能问题？</strong></p>
                            <p><img src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/1c6b0006d5f48729f88e"
                                    alt="一个MySQL表真的最多只能够有24个字段吗？反正我不信"></p>
                            <p>以Innodb存储引擎为例进行说明，我们知道目前<span style="font-size:14px;color:#FF0000;"><strong>MySQL的默认存储引擎是Innodb，并且这种存储引擎是将数据表记录按照页的方式存储的，每个页的大小是16KB，</strong></span>这样从磁盘读取数据的时候也是按照页的方式进行读取的，假设我们现在没有增加字段前每条记录是1KB，那么我们现在一次磁盘输入输出可以读取大约16条数据，而现在增加字段了，每条记录变成了4KB，那么现在要读取之前的数据，需要大约4次磁盘输入输出才能够完成，从这个描述来看，在读取数据记录非常多的情况，表字段还是有一定的影响，相反，我们发现表字段的影响比较小，也就是我们要根据具体情况才能够知道表字段是否有性能影响，这里有一个问题？就是我们仅仅读取某几个字段的情况又是怎么样呢？答案是比读取全部字段肯定快，这也是为什么会有人建议不要用select
                                * from ,而是用具体的字段名来代替。</p>
                            <p><strong>遇到这样的疑惑怎么办？</strong></p>
                            <!--<p><img src="../../statics/dbsubimage/1c6e0006bdc923f9191f"
                                    alt="一个MySQL表真的最多只能够有24个字段吗？反正我不信"></p>
                            <p>-->
                            其实，对于程序员的我们来说，很多疑惑都可以通过相关知识的官方文档找到答案，很多互联网上的答案都是相对片面的，都是针对某个特殊情况得到的结论，只有通过官方文档，我们才能够找到一个客观的答案，由这个客观的答案出发，才能够得到某个特殊情况下需要的答案，这才是真正的经验，总之一句话，官方文档才是我们真正的答案源泉。</p>
                            <p><strong>如果大家觉得本文好，可以点赞或者转发给你的好友，如果有什么问题，可以在评论中提出来，我会尽力解答的。</strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </article>
        <div class="readall_box csdn-tracking-statistics tracking-click" data-mod="popu_376">
            <div class="read_more_mask"></div>
            <a class="btn btn-large btn-gray-fred read_more_btn" target="_self">阅读全文</a>
        </div>
        <div class="article_copyright">

        </div>
        <ul class="article_collect clearfix csdn-tracking-statistics tracking-click" data-mod="popu_378"
            style="display: none;">
            <li class="tit">本文已收录于以下专栏：</li>
            <!--          [startarticlecolumns]-->
            <!--          [endarticlecolumns]-->
        </ul>
        <div class="comment_box clearfix" id="comments">
            <div id="comment_form">
                <div id="commentsbmitarear">
                    <div class="guest_link"><span class="log_ico"><i class="icon iconfont icon-yonghu"></i></span><span
                            class="txt">目前您尚未登录，请 <a
                            href="https://passport.csdn.net/account/login?from=http%3A%2F%2Fblog.csdn.net%2Fu011277123%2Farticle%2Fdetails%2F70837736">登录</a> 或 <a
                            href="http://passport.csdn.net/account/register?from=http%3A%2F%2Fblog.csdn.net%2Fu011277123%2Farticle%2Fdetails%2F70837736">注册</a> 后进行评论</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="comment_li_outbox"></div>

        <div class="more_comment" style="display: none;">
            <div id="comment_bar" class="trackgin-ad" data-mod="popu_385"></div>
        </div>

        <!-- <h3 class="recommend_tit" id="related">相关文章推荐</h3> -->
        <div class="recommend_list clearfix" id="rasss">
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/qiuyepiaoling/article/details/51889978" target="_blank"
                   strategy="BlogCommendFromBaidu_0">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MySQL的一个表最多可以有多少个字段</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_qiuyepiaoling.jpg"
                                    alt="qiuyepiaoling" title="qiuyepiaoling"></li>
                            <li class="user_name">qiuyepiaoling</li>
                            <li class="time">2016年07月12日 16:11</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>6727</span></li>
                        </ul>
                        <div class="summary">
                            原文：http://mp.weixin.qq.com/s?__biz=MzAwMjkyMjEwNg==&amp;mid=2247483785&amp;idx=1&amp;sn=1d90a44915d1028c6dc15036...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/sun_ashe/article/details/52433812" target="_blank"
                   strategy="BlogCommendFromBaidu_1">
                    <dd>
                        <h2 style="margin-bottom: 0px;">innodb表最大列数限制</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_sun_ashe.jpg" alt="sun_ashe"
                                    title="sun_ashe"></li>
                            <li class="user_name">sun_ashe</li>
                            <li class="time">2016年09月04日 18:15</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>532</span></li>
                        </ul>
                        <div class="summary">
                            innodb 最大列数限制为1023，其中包含3个内部隐藏列，分别为：DB_ROW_ID(如果没有主键的情况)，
                            DB_TRX_ID事务id列，DB_ROLL_PTR回滚指针列。但是分配给用户自己所能...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="">
                <script>
                    (function () {
                        var s = "_" + Math.random().toString(36).slice(2);
                        document.write('<div id="' + s + '"></div>');
                        (window.slotbydup = window.slotbydup || []).push({
                            id: '4765209',
                            container: s,
                            size: '808,120',
                            display: 'inlay-fix'
                        });
                    })();
                </script>
                <div id="_2knn1da05ib"></div>
                <script charset="utf-8" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/xczm"></script>
                <a href="http://www.baidu.com/cb.php?c=IgF_pyfqnHmknHR1nHc0IZ0qnfK9ujYzrj01nWbv0Aw-5Hc4P1Rdrjc0TAq15HfLPWRznjb0T1YsrjndnyNBuy7-m1w-nWF90AwY5HDdnW04nWn1rj00IgF_5y9YIZ0lQzqBUAqMQhP1uA38UhNYQvkGXhkvrHRzPzq9TMwGmvk-Qvw-IA7GUZnEP1bYrjR1PWb0ThfqnHD0mhYqn6KsTWYkPH00Iy-b5HDdP1f1PWD0Uv-b5HD1nHDYPWf0mv-b5HTzPWb1n6KEIv3qn0KsXHYznjm0mLFW5HDkPjb4"
                   target="_blank">
                    <dl class="clearfix csdn-tracking-statistics" data-mod="popu_393">
                        <dt><img class="maxwidth"
                                 src="../../statics/dbsubimage/0f000QuuSxNnMcPZP0qiQ0.jpg" alt=""
                                 title=""></dt>
                        <dd>
                            <div class="summary">
                                <h2>2018，程序员深度学习计划</h2>
                                <div class="summary">168元年卡、199元季卡限时免....知识与变现可兼得，不可错过</div>
                            </div>
                        </dd>
                    </dl>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/heizistudio/article/details/23740569" target="_blank"
                   strategy="BlogCommendFromBaidu_2">
                    <dd>
                        <h2 style="margin-bottom: 0px;">mysql最大字段数量及 varchar类型总结</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_heizistudio.jpg"
                                    alt="heizistudio" title="heizistudio"></li>
                            <li class="user_name">heizistudio</li>
                            <li class="time">2014年04月15日 10:41</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>25644</span></li>
                        </ul>
                        <div class="summary">
                            一直对mysql最大字段数不明确有人说是1024
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/mym43210/article/details/48677739" target="_blank"
                   strategy="BlogCommendFromBaidu_3">
                    <dd>
                        <h2 style="margin-bottom: 0px;">mysql获取某个表的所有字段名</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_mym43210.jpg" alt="mym43210"
                                    title="mym43210"></li>
                            <li class="user_name">mym43210</li>
                            <li class="time">2015年09月23日 11:28</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>2139</span></li>
                        </ul>
                        <div class="summary">
                            mysql安装成功后可以看到已经存在mysql、information_schema和test这个几个数据库，information_schema库中有一个名为COLUMNS的表，这个表中记录了数据库...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/lxf0613050210/article/details/52511089" target="_blank"
                   strategy="BlogCommendFromBaidu_4">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MySql 获取表的字段名</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_lxf0613050210.jpg"
                                    alt="lxf0613050210" title="lxf0613050210"></li>
                            <li class="user_name">lxf0613050210</li>
                            <li class="time">2016年09月12日 10:04</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>5032</span></li>
                        </ul>
                        <div class="summary">
                            SHOW DATABASES //列出 MySQL Server 数据库。
                            SHOW TABLES [FROM db_name] ...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl id="yd_a_d_feed_5" class="yd_a_d_feed_cla" style="height:124px;overflow: hidden;">
                <iframe scrolling="no" style="width: 100%; height: 90px; border: 0px;"
                        src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/saved_resource.html"></iframe>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/qq_31678877/article/details/52936625" target="_blank"
                   strategy="BlogCommendFromBaidu_5">
                    <dd>
                        <h2 style="margin-bottom: 0px;">mysql 字段长度限制</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_qq_31678877.jpg"
                                    alt="qq_31678877" title="qq_31678877"></li>
                            <li class="user_name">qq_31678877</li>
                            <li class="time">2016年10月26日 17:41</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>647</span></li>
                        </ul>
                        <div class="summary">
                            分析MySQL数据类型的长度
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            MySQL有几种数据类型可以限制类型的"长度"，有CHAR(Length)、VARCHAR(Length)、TINYINT(Length)、SMALLINT...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/ldl22847/article/details/7469651" target="_blank"
                   strategy="BlogCommendFromBaidu_6">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MYSQL 查询表列数</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_ldl22847.jpg" alt="ldl22847"
                                    title="ldl22847"></li>
                            <li class="user_name">ldl22847</li>
                            <li class="time">2012年04月17日 15:12</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>5972</span></li>
                        </ul>
                        <div class="summary">
                            select count(*) from information_schema.columns where table_schema='db' and table_name='tb'
                            &nbsp;
                            db是表...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/woyantianyi/article/details/51689932" target="_blank"
                   strategy="BlogCommendFromBaidu_7">
                    <dd>
                        <h2 style="margin-bottom: 0px;">Mysql新增字段到大数据表导致锁表</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_woyantianyi.jpg"
                                    alt="woyantianyi" title="woyantianyi"></li>
                            <li class="user_name">woyantianyi</li>
                            <li class="time">2016年06月16日 11:34</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>7843</span></li>
                        </ul>
                        <div class="summary">
                            年初跳完槽，终于可以安心开始写一些博客了。进入新的公司，还是有蛮多收获的。那就先记一个昨天遇到的问题吧。
                            &nbsp; &nbsp; &nbsp;昨天晚上7点左右，对一张表进行加字段，大概200多万条记录，字段90多个的大表，结...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/likika2012/article/details/38794891" target="_blank"
                   strategy="BlogCommendFromBaidu_8">
                    <dd>
                        <h2>mysql 超大数据/表管理技巧&amp;MySQL 性能优化的最佳20多条经验</h2>
                        <div class="summary">
                            在实际应用中经过存储、优化可以做到在超过9千万数据中的查询响应速度控制在1到20毫秒。看上去是个不错的成绩，不过优化这条路没有终点，当我们的系统有超过几百人、上千人同时使用时，仍然会显的力不从心...
                        </div>

                        <ul>
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_likika2012.jpg"
                                    alt="likika2012" title="likika2012"></li>
                            <li class="user_name">likika2012</li>
                            <li class="time">2014年08月24日 11:42</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>7072</span></li>
                        </ul>
                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/gayayzy/article/details/7200958" target="_blank"
                   strategy="BlogCommendFromBaidu_9">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MySQL表最大能达到多少？</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_gayayzy.jpg" alt="gayayzy"
                                    title="gayayzy"></li>
                            <li class="user_name">gayayzy</li>
                            <li class="time">2012年01月14日 17:48</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>3113</span></li>
                        </ul>
                        <div class="summary">
                            MySQL 3.22限制的表大小为4GB。由于在MySQL 3.23中使用了MyISAM存储引擎，最大表尺寸增加到了65536TB（2567
                            – 1字节）。由于允许的表尺寸更大，MySQ...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/hjvgf/article/details/70037701" target="_blank"
                   strategy="BlogCommendFromBaidu_10">
                    <dd>
                        <h2 style="margin-bottom: 0px;">高性能MYSQL笔记-mysql字段类型和字段设计规范</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img src="../../statics/dbsubimage/3_hjvgf.jpg"
                                                        alt="hjvgf" title="hjvgf"></li>
                            <li class="user_name">hjvgf</li>
                            <li class="time">2017年04月10日 21:42</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>759</span></li>
                        </ul>
                        <div class="summary">
                            1.优先使用符合业务需要的最小的数据类型
                            1.1 将ip用UNSIGNED INT存：内置函数INET_ATON(字符串)和INTE_NTOA(整数)分别是点分十进制字符串和整数的转换函数
                            1.2...
                        </div>


                    </dd>
                </a>
            </dl>
            <div id="yd_a_d_feed_11" class="yd_a_d_feed_cla" style="height:124px;overflow: hidden;">
                <div id="BAIDU_SSP__wrapper_u3203594_0">
                    <iframe id="iframeu3203594_0" name="iframeu3203594_0"
                            src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/xczm.html" width="920" height="117"
                            align="center,center" vspace="0" hspace="0" marginwidth="0" marginheight="0" scrolling="no"
                            frameborder="0" style="border:0;vertical-align:bottom;margin:0;width:920px;height:117px"
                            allowtransparency="true"></iframe>
                </div>
                <script type="text/javascript">var cpro_id = "u3203594";</script>
                <!-- <script type="text/javascript" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/c.js"></script>-->
            </div>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/u011277123/article/details/70837736" target="_blank"
                   strategy="searchFromBaidu_11">
                    <dd>
                        <h2 style="margin-bottom: 0px;">一个MySQL表真的最多只能够有24个字段吗？反正我不信</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_u011277123.jpg"
                                    alt="u011277123" title="u011277123"></li>
                            <li class="user_name">u011277123</li>
                            <li class="time">2017年04月27日 09:08</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>2940</span></li>
                        </ul>
                        <div class="summary">
                            原创 web情报站
                            2017-04-26 17:23


                            随着业务需求的不断变化，我们发现需要往视频数据表里面新增很多字段，如：是否需要购买才能够观看、是否VIP就可以看、是否免费、有几个...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/dyllove98/article/details/9289483" target="_blank"
                   strategy="searchFromBaidu_12">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MySQL 建表字段长度的限制</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_dyllove98.jpg" alt="dyllove98"
                                    title="dyllove98"></li>
                            <li class="user_name">dyllove98</li>
                            <li class="time">2013年07月10日 11:56</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>13791</span></li>
                        </ul>
                        <div class="summary">
                            在MySQL建表时，遇到一个奇怪的现象： root@localhost : test 10:30:54&gt;CREATE TABLE tb_test (
                            -&gt; recordid varch...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/leilei19920808/article/details/70161194" target="_blank"
                   strategy="BlogCommendFromQuerySearch_13">
                    <dd>
                        <h2 style="margin-bottom: 0px;">mysql一个字段多个值关联另一张表</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_leilei19920808.jpg"
                                    alt="leilei19920808" title="leilei19920808"></li>
                            <li class="user_name">leilei19920808</li>
                            <li class="time">2017年04月13日 19:23</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>1962</span></li>
                        </ul>
                        <div class="summary">
                            A表的id字段是以'1,2,3,4,5'...这样的形式存的，它关联字典表B的id字段，此时需求是要查出name
                            &nbsp; SQL：
                            SELECT
                            a.id,
                            (
                            SELECT
                            GROUP_CONCAT(b...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/Nidhogg__/article/details/52947540" target="_blank"
                   strategy="BlogCommendFromQuerySearch_14">
                    <dd>
                        <h2 style="margin-bottom: 0px;">两人过桥</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_nidhogg__.jpg" alt="Nidhogg__"
                                    title="Nidhogg__"></li>
                            <li class="user_name">Nidhogg__</li>
                            <li class="time">2016年10月27日 17:02</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>490</span></li>
                        </ul>
                        <div class="summary">
                            题目描述有n个人希望在晚上通过一座桥。在任何时刻，最多只能有两个人在桥上，并且必须要带着手电筒才能通过桥。现在的麻烦是只有一个手电筒，所以必须安排某种顺序，使得手电筒可以被带回去让更多的人过桥（手电筒...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/zdl1016/article/details/26287609" target="_blank"
                   strategy="searchFromBaidu_15">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MYSQL BLOB 字段大小以及个数的限制测试。</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_zdl1016.jpg" alt="zdl1016"
                                    title="zdl1016"></li>
                            <li class="user_name">zdl1016</li>
                            <li class="time">2014年05月19日 22:21</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>16423</span></li>
                        </ul>
                        <div class="summary">
                            测试结论
                            mysql版本 5.1
                            &nbsp; &nbsp; 表类型： innodb， row_format=compact （这是默认的行格式）


                            &nbsp; &nbsp; 插入超过10个blob， blob的数据量很小（
                            ...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl id="yd_a_d_feed_17" class="yd_a_d_feed_cla" style="height:124px;overflow: hidden;">
                <!--<iframe scrolling="no" style="width: 100%; height: 90px; border: 0px;"
                        src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/saved_resource(1).html"></iframe>-->
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/liqfyiyi/article/details/51371844" target="_blank"
                   strategy="searchFromBaidu_16">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MySQL 建表字段长度的限制问题</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_liqfyiyi.jpg" alt="liqfyiyi"
                                    title="liqfyiyi"></li>
                            <li class="user_name">liqfyiyi</li>
                            <li class="time">2016年05月11日 09:45</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>2322</span></li>
                        </ul>
                        <div class="summary">
                            在MySQL建表时，遇到一个奇怪的现象：

                            &nbsp;


                            root@localhost : test 10:30:54&gt;CREATE TABLE&nbsp;tb_test (

                            &nbsp; &nbsp; -&gt; r...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/lkuzhi/article/details/1932396" target="_blank"
                   strategy="BlogCommendFromQuerySearch_17">
                    <dd>
                        <h2 style="margin-bottom: 0px;">sybase12.0 下同一个表支持三个text字段吗？</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img src="../../statics/dbsubimage/3_lkuzhi.jpg"
                                                        alt="lkuzhi" title="lkuzhi"></li>
                            <li class="user_name">lkuzhi</li>
                            <li class="time">2007年12月13日 09:16</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>1294</span></li>
                        </ul>
                        <div class="summary">
                            &nbsp;&nbsp; 最近的一个新项目的开发环境的数据库从sybase12.5&nbsp;转换到了sybase12.0 ， 导致sybase12.5下面page
                            size可以为16k 的新特性用不到， 支持不了varchar ...
                        </div>


                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/viqecel/article/details/56004454" target="_blank"
                   strategy="BlogCommendFromQuerySearch_18">
                    <dd>
                        <h2>mysql 同一表中.两个字段值互相复制,从一个字段值复制到另一个</h2>
                        <div class="summary">
                            我想把go_member表中groupid字段的内容复制到go_member表中oldgroupid字段里面sql语句为：
                            update `go_member` set oldgroupid=grou...
                        </div>

                        <ul>
                            <li class="avatar_img"><img
                                    src="../../statics/dbsubimage/3_viqecel.jpg" alt="viqecel"
                                    title="viqecel"></li>
                            <li class="user_name">viqecel</li>
                            <li class="time">2017年02月20日 09:17</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>1690</span></li>
                        </ul>
                    </dd>
                </a>
            </dl>
            <dl class="clearfix csdn-tracking-statistics recommend_article recommend_article_out" data-mod="popu_387"
                data-poputype="feed" data-feed-show="false" data-dsm="post">
                <a href="http://blog.csdn.net/canot/article/details/69218947" target="_blank"
                   strategy="searchFromBaidu_19">
                    <dd>
                        <h2 style="margin-bottom: 0px;">MySQL通过触发器解决数据库中表的行数限制的需求</h2>
                        <ul class="floatR">
                            <li class="avatar_img"><img src="../../statics/dbsubimage/3_canot.jpg"
                                                        alt="canot" title="canot"></li>
                            <li class="user_name">canot</li>
                            <li class="time">2017年04月05日 00:13</li>
                            <li class="visited_num"><i class="icon iconfont icon-read"></i><span>2380</span></li>
                        </ul>
                        <div class="summary">
                            最近项目一个需求是对操作日志的数量限制为10万条，超过十万条便删除最旧的那一条，保存数据库中日志数量不超过10万。 最终通过数据库的触发器机制完成了。...
                        </div>


                    </dd>
                </a>
            </dl>
        </div>
    </main>
    <aside>
        <div class="right_box user_info">
            <dl class="inf_bar clearfix">
                <dt class="csdn-tracking-statistics tracking-click" data-mod="popu_381">
                    <a href="http://blog.csdn.net/u011277123" target="_blank">
                        <img src="../../statics/dbsubimage/3_u011277123.jpg" class="avatar_pic">
                    </a>
                </dt>
                <dd>
                    <h3 class="csdn-tracking-statistics tracking-click" data-mod="popu_380"><a
                            href="http://blog.csdn.net/u011277123" target="_blank" id="uid">我是皇上</a></h3>
                    <div class="medals" title="">
                    </div>
                </dd>
            </dl>
            <div class="inf_number_box clearfix">
                <dl title="28">
                    <dt>原创</dt>
                    <dd>28</dd>
                </dl>
                <dl title="200">
                    <dt>粉丝</dt>
                    <dd id="fan">200</dd>
                </dl>
                <dl title="186">
                    <dt>喜欢</dt>
                    <dd>186</dd>
                </dl>
                <dl title="157">
                    <dt>评论</dt>
                    <dd>157</dd>
                </dl>
            </div>

        </div>
        <div class="interflow clearfix">
            <div class="badge gradeAndbadge">
                <div>
                    <img src="../../statics/dbsubimage/chizhiyiheng.png" alt="持之以恒">
                </div>
            </div>
            <div class="grade gradeAndbadge gradewidths">
                <span>等级：</span>
                <div>
                    <a href="http://blog.csdn.net/home/help.html#level" title="7级,点击查看等级说明" target="_blank">
                        <img class="grade-img" src="../../statics/dbsubimage/blog7.png"
                             alt="7级,点击查看等级说明">
                    </a>
                </div>
            </div>
            <div class="gradeAndbadge gradewidths" title="1164369">
                <span>访问量：</span>
                <span class="num odd-overhidden">116万+</span>
            </div>

            <div class="gradeAndbadge gradewidths" title="14221">
                <span>积分：</span>
                <span class="num odd-overhidden">1万+</span>
            </div>
            <div class="gradeAndbadge gradewidths" title="1053">
                <span>排名：</span>
                <span class="num odd-overhidden">1053</span>
            </div>

        </div>
        <div class="extension_other csdn-tracking-statistics tracking-click" data-mod="popu_389"
             style="position: relative;">
            <!--u3032528-->
            <div class="flashrecommend">
                <div style="">
                    <!--  <iframe width="300" frameborder="0" height="250" scrolling="no"
                              src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/s.html"></iframe>-->
                </div>
                <!-- <script type="text/javascript"
                         src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/bwocoltly.js.下载"></script>-->
            </div>
            <img class="append_mark_img" style="display:block;position:absolute;left:0;bottom:0;width:30px;height:16px"
                 src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAQCAYAAAABOs/SAAAABGdBTUEAALGPC/xhBQAAAhpJREFUOBHFVU2L2lAUHU0nExNHbRq1BkSrSFH8QBdu3QnuxYUr3bj2f/gHRPwrdmVdCLqxIK0KighqWz+mNVPaavtuhgtqnpnposyD5N53z7k57yX33RhKpdK7q2cYxmfQVCUfFU6n06/z+fwbvQWaTCYml8t5gBOJRKzZbFb19XJenIPhcNgaj8dfYZxlWSYWizkZhjFgDGyr1VqMRqMd+JlMRrbZbDd2u/3G4XBwTqeTBx8wGLvd7reiKPuH2cNdI+zz+W4FQbjudrtfkNjr9Vboo91sNr/A9/v9QjKZlFer1X2xWHxLclnIBx+5nU5n0Wg0FjgHqxGG4Hw+V9rt9lfw9YbRaDQUCoVgtVr9MB6P1d2TRYjRaFSq1+uf9HKpwnoJx5jL5eKazebM4/EIcAHmdrvNkiSZUqmU45g7HA6/zWaze4xphDmOY7bb7U8k6FmLxXItiiJ3zNnv938mk8mdLMvqQhBbLpc/dIXNZjM7nU6/Y4Ke7ff7d3AFAoFbUoQnxYd5h8PhCjg4R6vZMQiTQnnSjvEhpAmFB4OBpgABD4VCUrlcfo9ctBphcgx4eC1IeKqt1WofadxKpSLS4ifC5Ltw5Bsd1uu1elRoCZdiiUTiJQ2DyqfFT4SDwaCVnNnPNOJjMdKxqDs7bzz4HMP5T4Lneea8yyD5kvV6vTw5xwoNv4RpevW/ioLYJVE9TCNMW/X/iP0FJ9WyNfNE5tcAAAAASUVORK5CYII=">
        </div>
        <div class="writings">
            <div class="public_signal clearfix">
                <h3>他的最新文章</h3>
                <a href="http://blog.csdn.net/u011277123" target="_blank" class="more"><span>更多文章</span></a>
            </div>
            <ul class="inf_list clearfix csdn-tracking-statistics tracking-click" data-mod="popu_382">
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/details/79526097" target="_blank">Spring
                        @ModelAttribute注解用法</a>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/details/79363115" target="_blank">tomcat+nginx+redis实现均衡负载、session共享(二)</a>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/details/79363101" target="_blank">tomcat+nginx+redis实现均衡负载、session共享(一)</a>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/details/79257995" target="_blank">Mybatis 数据库物理分页插件
                        PageHelper</a>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/details/79226995" target="_blank">java.lang.Long
                        cannot be cast to java.lang.Integer解决办法</a>
                </li>
            </ul>
        </div>
        <div class="user-hotArticle sort ClassSort">
            <h3>文章分类</h3>
            <ul class="hotArticle-list sort-list ClassSort-list" style="height: 190px; overflow-y: hidden;">
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/category/6370516" class="odd-overhidden floatL">RxJava
                        与 Retrofit</a>
                    <div class="read list-left floatR"><span>8篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/category/6371970" class="odd-overhidden floatL">底部弹框</a>
                    <div class="read list-left floatR"><span>2篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/category/6373083"
                       class="odd-overhidden floatL">时间轴</a>
                    <div class="read list-left floatR"><span>1篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/category/6512869" class="odd-overhidden floatL">自定义相机</a>
                    <div class="read list-left floatR"><span>4篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/category/6513510" class="odd-overhidden floatL">图片缓存</a>
                    <div class="read list-left floatR"><span>13篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/category/6746035" class="odd-overhidden floatL">linux</a>
                    <div class="read list-left floatR"><span>1篇</span></div>
                </li>
            </ul>
            <div class="unfold-btn">
                <span>展开</span><i class="icon iconfont icon-xiajiantou"></i>
            </div>
        </div>
        <!--    [StartShowSelfColumn]-->
        <!--    [EndShowSelfColumn]-->
        <div class="user-hotArticle sort timeSort">
            <h3>文章存档</h3>
            <ul class="hotArticle-list timeSort-list" style="height: 190px; overflow-y: hidden;">
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2018/03" class="odd-overhidden floatL">2018年3月</a>
                    <div class="read list-left floatR"><span>2篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2018/02" class="odd-overhidden floatL">2018年2月</a>
                    <div class="read list-left floatR"><span>4篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2018/01" class="odd-overhidden floatL">2018年1月</a>
                    <div class="read list-left floatR"><span>11篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/12" class="odd-overhidden floatL">2017年12月</a>
                    <div class="read list-left floatR"><span>81篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/11" class="odd-overhidden floatL">2017年11月</a>
                    <div class="read list-left floatR"><span>25篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/10" class="odd-overhidden floatL">2017年10月</a>
                    <div class="read list-left floatR"><span>68篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/09" class="odd-overhidden floatL">2017年9月</a>
                    <div class="read list-left floatR"><span>65篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/08" class="odd-overhidden floatL">2017年8月</a>
                    <div class="read list-left floatR"><span>37篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/07" class="odd-overhidden floatL">2017年7月</a>
                    <div class="read list-left floatR"><span>26篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/06" class="odd-overhidden floatL">2017年6月</a>
                    <div class="read list-left floatR"><span>65篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/05" class="odd-overhidden floatL">2017年5月</a>
                    <div class="read list-left floatR"><span>196篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/04" class="odd-overhidden floatL">2017年4月</a>
                    <div class="read list-left floatR"><span>148篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/03" class="odd-overhidden floatL">2017年3月</a>
                    <div class="read list-left floatR"><span>142篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/02" class="odd-overhidden floatL">2017年2月</a>
                    <div class="read list-left floatR"><span>59篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2017/01" class="odd-overhidden floatL">2017年1月</a>
                    <div class="read list-left floatR"><span>244篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/12" class="odd-overhidden floatL">2016年12月</a>
                    <div class="read list-left floatR"><span>216篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/11" class="odd-overhidden floatL">2016年11月</a>
                    <div class="read list-left floatR"><span>266篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/10" class="odd-overhidden floatL">2016年10月</a>
                    <div class="read list-left floatR"><span>102篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/09" class="odd-overhidden floatL">2016年9月</a>
                    <div class="read list-left floatR"><span>56篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/08" class="odd-overhidden floatL">2016年8月</a>
                    <div class="read list-left floatR"><span>55篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/07" class="odd-overhidden floatL">2016年7月</a>
                    <div class="read list-left floatR"><span>54篇</span></div>
                </li>
                <li class="clearfix">
                    <a href="http://blog.csdn.net/u011277123/article/month/2016/06" class="odd-overhidden floatL">2016年6月</a>
                    <div class="read list-left floatR"><span>7篇</span></div>
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
                    <a href="http://blog.csdn.net/u011277123/article/details/52096864" target="_blank">Android Studio 出现
                        Gradle's dependency cache may be corrupt 错误分析</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>60452</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/54863371" target="_blank">MySQL数据高级查询之连接查询、联合查询、子查询</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>20788</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/70208768" target="_blank">史上最全的Javascript面试题总结（内附答案）</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>17272</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/53665302" target="_blank">Oracle中用Exp命令导出指定用户下的部分表或数据</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>14570</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/53404269" target="_blank">单点登录原理与简单实现</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>13406</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/70214630"
                       target="_blank">Java中存储金额用什么数据类型？</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>10379</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/52824724"
                       target="_blank">20道经典Java面试基础题</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>9905</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/53055479" target="_blank">使用JSON.parse()转化成json对象需要注意的地方</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>9679</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/60756511" target="_blank">ajax在什么情况下会走success和error</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>9672</span></div>
                </li>
                <li>
                    <a href="http://blog.csdn.net/u011277123/article/details/54691260" target="_blank">SQL
                        中的语法顺序与执行顺序</a>
                    <div class="read list-left"><i class="icon iconfont icon-read"></i><span>9444</span></div>
                </li>
                <!--        [EndHotArticles]-->
            </ul>
        </div>

        <!--    [startcustom]-->
        <!--    [endcustom]-->
        <div class="fixRight_box" style="height:256px">
            <div class="fixRight">
                <!--u3163270-->
                <div id="_vpai5v2jyi" style="">
                    <!-- <iframe width="300" frameborder="0" height="250" scrolling="no"
                             src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/s(1).html"></iframe>-->
                </div>
                <script type="text/javascript"
                        src="../../statics/avneunkwb.js"></script>
                <div class="persion_article">
                    <div class="right_box footer_box csdn-tracking-statistics" data-mod="popu_475" data-dsm="post"><h3
                            class="feed_new_tit"><span class="line"></span><span class="txt">联系我们</span></h3>
                        <div class="contact-box">
                            <div class="img-box"><img src="../../statics/dbsubimage/csdn_cs_qr.png"
                                                      alt="客服"></div>
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
                                <p><a class="right-dotte" href="http://www.csdn.net/company/about.html" target="_blank">关于</a><a
                                        href="http://www.csdn.net/company/recruit.html" target="_blank"
                                        class="right-dotte">招聘</a><a href="http://www.csdn.net/company/marketing.html"
                                                                     target="_blank" class="right-dotte">广告服务</a> <a
                                        href="http://zn.baidu.com/" target="_blank" class="footer_baidu">
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
        </div>
    </aside>
</div>

<div class="left_fixed" style="left: 91.5px;">
    <div class="left_show_button">
        <span>
          <i class="icon iconfont icon-youjiantou"></i>
        </span>
    </div>
    <ul class="left_menu" id="share_box">
        <li>
            <button class="left-fixed-btn btn-like csdn-tracking-statistics tracking-click" data-mod="popu_373"
                    target="_self" title="点赞">
                <a href="javascript:void(0);" class="iconbox border_red" target="_blank"><i
                        class="icon iconfont icon-dianzan"></i></a>
                <a class="txt" href="javascript:void(0);" target="_blank">1</a>
            </button>
        </li>
        <li id="blog_artical_directory" style="display: none;">
            <button class="left-fixed-btn left_menu_btn csdn-tracking-statistics tracking-click" data-mod="popu_372"
                    target="_self" title="目录">
                <a href="javascript:void(0);" class="iconbox border_black" target="_blank"><i
                        class="icon iconfont icon-mulu"></i></a>
            </button>
        </li>
        <li class="menu_con" style="display: none;">
            <div class="list_father">
                <div class="arr_box">
                    <button class="btn-noborder arr-btn scroll-down  left_scroll_down"><i
                            class="icon iconfont icon-xiajiantou"></i></button>
                    <button class="btn-noborder arr-btn scroll-up left_scroll_top"><i
                            class="icon iconfont icon-shangjiantou"></i></button>
                </div>
                <div class="arr"></div>
                <div id="csdnBlogDir"></div>
            </div>
        </li>
        <!--        <li>-->
        <!--            <button class="left-fixed-btn btn-like tracking-ad" data-mod="popu_373" target="_self">-->
        <!--                <span class="iconbox border_red"><i class="icon iconfont icon-xihuan-"></i></span>-->
        <!--                <span class="txt">喜欢</span>-->
        <!--                <span class="untxt">取消喜欢</span>-->
        <!--            </button>-->
        <!--        </li>-->
        <li>
            <button class="left-fixed-btn csdn-tracking-statistics tracking-click" data-mod="popu_374"
                    id="com-quick-collect" target="_self" title="收藏">
                <a href="javascript:void(0);" class="iconbox border_purple" target="_blank"><i
                        class="icon iconfont icon-shoucang"></i></a>
            </button>
        </li>
        <li>
            <button class="left-fixed-btn btn-pinglun csdn-tracking-statistics tracking-click" data-mod="popu_544"
                    title="评论">
                <a href="javascript:void(0);" class="iconbox border_purple" target="_blank"><i
                        class="icon iconfont icon-pinglun"></i></a>
            </button>
        </li>
        <li class="bdsharebuttonbox csdn-tracking-statistics tracking-click bdshare-button-style0-16"
            data-mod="popu_172" data-bd-bind="1520923381306">
            <a class="bds_tsina outside left-fixed-btn" data-cmd="tsina" title="分享到新浪微博" target="_blank"></a>
            <span class="iconbox border_red2"><i class="icon iconfont icon-xinlang"></i></span>
        </li>
        <li class="bdsharebuttonbox csdn-tracking-statistics tracking-click bdshare-button-style0-16"
            data-mod="popu_172" data-bd-bind="1520923381306">
            <a class="bds_weixin outside left-fixed-btn" data-cmd="weixin" title="分享到微信" target="_blank"></a>
            <span class="iconbox border_green"><i class="icon iconfont icon-weixin"></i></span>
        </li>
        <li class="bdsharebuttonbox csdn-tracking-statistics tracking-click bdshare-button-style0-16"
            data-mod="popu_172" data-bd-bind="1520923381306">
            <a class="bds_qzone outside left-fixed-btn" data-cmd="qzone" title="分享到QQ空间" target="_blank"></a>
            <span class="iconbox border_blue"><i class="icon iconfont icon-QQ"></i></span>
        </li>
        <li id="share_box">

            <div class="bdsharebuttonbox csdn-tracking-statistics tracking-click bdshare-button-style0-16"
                 data-mod="popu_172" data-bd-bind="1520923381306">


            </div>
        </li>
    </ul>
</div>
<div id="pop_win"></div>
<div id="popup_mask"></div>
<div class="pop_CA_cover"></div>
<div class="pop pop_CA">
    <div class="CA_header">
        收藏助手
        <span class="cancel_icon" id="fapancle"></span>
    </div>
    <!--<iframe src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/saved_resource(2).html" id="collectIframe"
            frameborder="0" width="100%" height="360" scrolling="no"></iframe>-->
</div>
<!--举报-->
<div id="report_dialog" style="top: 250px; left: 343.5px;">
    <div id="panel_report">
        <div class="panel_head">不良信息举报</div>
        <form method="post" id="frmReport" class="panel_body">
            <table border="0" cellpadding="0" cellspacing="4" class="pop_table">
                <tbody>
                <tr>
                    <td colspan="2">您举报文章：<a href="http://blog.csdn.net/u011277123/article/details/70837736"
                                             target="_blank">一个MySQL表真的最多只能够有24个字段吗？反正我不信</a></td>
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
                               src="../../statics/dbsubimage/btn_submit.jpg">
                        <span style="padding-left:20px;"></span>
                        <img id="btnCloseReportDialog"
                             src="../../statics/dbsubimage/btn_cancel.jpg" align="middle">
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
                        location.href = "http://passport.csdn.net/account/login?from=" + encodeURIComponent(location.href);
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
    <!-- <script id="adJs52b5334" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/52b5334.js.下载"></script>-->
    <script>document.getElementById("adJs52b5334").src = "http://ads.csdn.net/js/opt/52b5334.js?t=" + Math.random();</script>
</div>
<script>
    $(".MathJax").remove();
</script>
<!--<script type="text/javascript" src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/MathJax.js.下载"></script>-->
<!-- <script type="text/javascript" src="http://passport.csdn.net/content/loginbox/login.js"></script> -->
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
with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
<script type="text/javascript">
    if ($(".article_collect li").length == 1) {
        $(".article_collect").hide();
    }
    if ($(".article_tags li").length == 1) {
        $(".article_tags").hide();
    }
    $(".edit a").attr("href", "http://mp.blog.csdn.net/postedit/" + fileName);
    $.each($(".edu_li a"), function () {
        $(this).attr("href", $(this).attr("href").replace("blog7", "blog9"))
    });
    new CNick('#uid').showNickname();

    if ($("#fan").html() == "") {
        $("#fan").html(0);
    }
</script>
<!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/appendMark.min.js.下载" type="text/javascript"></script>-->
<script type="text/javascript">
    appendMark($('.recommend_list').children('a').find('dt'), $('.extension_other'), $('.yd_a_d_feed_cla'))
</script>
<!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/publib_footer-1.0.3.js"
        data-isfootertrack="false"></script>-->
<link rel="stylesheet" type="text/css" href="../../statics/dbcss/pub_footer_1.0.3.css">
<!--<script src="./一个MySQL表真的最多只能够有24个字段吗？反正我不信 - CSDN博客_files/goTop-v1.0.min.js"></script>-->
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
<div class="meau-gotop-box" style="right: 8px; bottom: 40px; z-index: 110;"><a
        href="http://blog.csdn.net/u011277123/article/details/70837736#" id="backtop" class="btn-meau" title="返回顶部"
        style="display: none;">
    <svg xmlns="http://www.w3.org/2000/svg" width="19" height="12">
        <path d="M9.314 0l9.313 9.314-2.12 2.121-7.193-7.192-7.193 7.192L0 9.314z" fill="#FFF"
              fill-rule="evenodd"></path>
    </svg>
</a> <a href="http://blog.csdn.net/u011277123/article/details/70837736#" id="reportContent" class="btn-meau"
        title="返回顶部">
    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="22">
        <path d="M0 13.028V3.365L9 0l9 3.365v9.663C18 17.983 13.97 22 9 22s-9-4.017-9-8.972zm2-8.282v8.282c0 3.854 3.134 6.978 7 6.978s7-3.124 7-6.978V4.746L9 2.13 2 4.746zm6 10.276h2v1.993H8v-1.993zm0-8.973h2v6.979H8V6.049z"
              fill="#FFF" fill-rule="nonzero"></path>
    </svg>
</a></div>
<div id="loginWrap"></div>
<div id="dlMask"></div>

<div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;" type="text"
                                                                    value="" id="focus_retriever" readonly="true"></div>
<div class="imgViewDom disnone" style="display: none;"><img
        src="http://blog.csdn.net/u011277123/article/details/70837736"></div>
<style>.imgViewDom {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    z-index: 99999999;
    background: rgba(255, 255, 255, 0.8);
    overflow: auto;
    display: -webkit-box;
    -webkit-box-align: center;
    -webkit-box-pack: center;
    display: -moz-box;
    -moz-box-align: center;
    -moz-box-pack: center;
    display: -o-box;
    -o-box-align: center;
    -o-box-pack: center;
    display: -ms-box;
    -ms-box-align: center;
    -ms-box-pack: center;
    display: box;
    box-align: center;
    box-pack: center;
}

.imgViewDom img {
    cursor: zoom-out;
}</style>
<div class="pulllog-box" style="display: block;">
    <div class="pulllog clearfix"><span class="text floatL">加入CSDN，享受更精准的内容推荐，与500万程序员共同成长！</span>
        <div class="pulllog-btn floatR clearfix">
            <div class="pulllog-login floatL csdn-tracking-statistics tracking-click" data-mod="popu_557"><a
                    href="http://blog.csdn.net/u011277123/article/details/70837736###;" target="_self">登录</a></div>
            <div class="pulllog-sigin floatL csdn-tracking-statistics tracking-click" data-mod="popu_558"><a
                    href="https://passport.csdn.net/account/mobileregister" target="_blank">注册</a></div>
        </div>
    </div>
    <div class="floatR iconb"><i class="icon iconfont icon-guanbi"></i></div>
</div>
</body>
</html>
