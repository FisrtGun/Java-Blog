<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/13
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0032)http://mp.blog.csdn.net/mdeditor -->
<html lang="en" style="overflow: hidden;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>写文章-CSDN博客</title>
    <link rel="icon" href="http://csdnimg.cn/public/favicon.ico" type="image/x-icon">
    <link rel="icon" sizes="192x192" href="http://csdnimg.cn/public/favicon.ico">
    <link href="http://csdnimg.cn/public/favicon.ico" rel="SHORTCUT ICON">
    <link rel="shortcut icon" sizes="192x192" href="http://csdnimg.cn/public/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://csdnimg.cn/public/favicon.ico">
    <meta name="author" content="Benoit Schweblin">
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="../../statics/css/header.css">
    <link rel="stylesheet" href="../../statics/css/markdown_views-68a8aad09e.css">
    <script type="text/javascript">
        var artId = 0;
        var get_article_address = "http://mp.blog.csdn.net/mdeditor/getArticle";
        var set_article_address = "http://mp.blog.csdn.net/mdeditor/saveArticle";
        var upload_image_address = "http://mp.blog.csdn.net/UploadImage";
        window.isSwitch = true;
        window.baseDir = '//static.blog.csdn.net/mdeditor/public/res-min';
        var require = {
            baseUrl: window.baseDir
        };
    </script>
    <script src="../../statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../statics/js/main-1.0.2.js"></script>
    <script type="text/javascript" src="../../statics/js/switchHome-804abb36b4.js"></script>
    <script src="../../statics/js/meditor.bundle.js"></script>
    <script src="../../statics/js/csdn_label.js"></script>
    <script src="../../statics/js/require.js"
            data-main="http://static.blog.csdn.net/mdeditor/public/res-min/main_new.js?201802261444"></script>
    <script type="text/javascript" src="../../statics/js/first_guide-06c52b327b.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="http://static.blog.csdn.net/mdeditor/public/res-min/main_new.js?201802261444"
            src="../../statics/js/main_new.js"></script>
    <link type="text/css" rel="stylesheet" href="../../statics/css/defaults.css">
    <script type="text/x-mathjax-config;executed=true">MathJax.Hub.Config({
	skipStartupTypeset: true,
	"HTML-CSS": {
		preferredFont: "TeX",
		availableFonts: [
			"STIX",
			"TeX",
			"LaTeX"
		],
		linebreaks: {
			automatic: true
		},
		EqnChunk: 10,
		imageFont: null
	},
	tex2jax: { inlineMath: [["$","$"],["\\\\(","\\\\)"]], displayMath: [["$$","$$"],["\\[","\\]"]], processEscapes: true },
	TeX: $.extend({
		noUndefined: {
			attributes: {
				mathcolor: "red",
				mathbackground: "#FFEEEE",
				mathsize: "90%"
			}
		},
		Safe: {
			allow: {
				URLs: "safe",
				classes: "safe",
				cssIDs: "safe",
				styles: "safe",
				fontsize: "all"
			}
		},
		equationNumbers: {
			autoNumber: "AMS"
		},
		extensions: ["AMSmath.js", "AMSsymbols.js", "noErrors.js", "noUndefined.js"]
	}, undefined),
	messageStyle: "none"
});




    </script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mathjax"
            src="../../statics/js/MathJax.js"></script>
    <style type="text/css">@media (min-width: 0px) {
        #wmd-input {
            font-size: 16px;
        }

        #preview-contents {
            font-size: 16px;
        }
    }

    @media (min-width: 600px) {
        #wmd-input {
            font-size: 17px;
        }

        #preview-contents {
            font-size: 17px;
        }
    }

    @media (min-width: 1200px) {
        #wmd-input {
            font-size: 18px;
        }

        #preview-contents {
            font-size: 18px;
        }
    }</style>
    <style type="text/css">@keyframes working-indicator-bar0 {
                               0% {
                                   opacity: 0.25;
                               }
                               0.01% {
                                   opacity: 0.25;
                               }
                               0.02% {
                                   opacity: 1;
                               }
                               50.01% {
                                   opacity: 0.25;
                               }
                               100% {
                                   opacity: 0.25;
                               }
                           }

    @-webkit-keyframes working-indicator-bar0 {
        0% {
            opacity: 0.25;
        }
        0.01% {
            opacity: 0.25;
        }
        0.02% {
            opacity: 1;
        }
        50.01% {
            opacity: 0.25;
        }
        100% {
            opacity: 0.25;
        }
    }

    @keyframes working-indicator-bar1 {
        0% {
            opacity: 0.25;
        }
        20.01% {
            opacity: 0.25;
        }
        20.02% {
            opacity: 1;
        }
        70.01% {
            opacity: 0.25;
        }
        100% {
            opacity: 0.25;
        }
    }

    @-webkit-keyframes working-indicator-bar1 {
        0% {
            opacity: 0.25;
        }
        20.01% {
            opacity: 0.25;
        }
        20.02% {
            opacity: 1;
        }
        70.01% {
            opacity: 0.25;
        }
        100% {
            opacity: 0.25;
        }
    }

    @keyframes working-indicator-bar2 {
        0% {
            opacity: 0.25;
        }
        40.01% {
            opacity: 0.25;
        }
        40.02% {
            opacity: 1;
        }
        90.01% {
            opacity: 0.25;
        }
        100% {
            opacity: 0.25;
        }
    }

    @-webkit-keyframes working-indicator-bar2 {
        0% {
            opacity: 0.25;
        }
        40.01% {
            opacity: 0.25;
        }
        40.02% {
            opacity: 1;
        }
        90.01% {
            opacity: 0.25;
        }
        100% {
            opacity: 0.25;
        }
    }</style>
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
        vertical-align: 0;
        font-size: 90%;
        text-align: left;
        color: black;
        padding: 1px 3px;
        border: 1px solid
    }
    </style>
    <style type="text/css">.MathJax_Display {
        text-align: center;
        margin: 1em 0em;
        position: relative;
        display: block !important;
        text-indent: 0;
        max-width: none;
        max-height: none;
        min-width: 0;
        min-height: 0;
        width: 100%
    }

    .MathJax .merror {
        background-color: #FFFF88;
        color: #CC0000;
        border: 1px solid #CC0000;
        padding: 1px 3px;
        font-style: normal;
        font-size: 90%
    }

    .MathJax .MJX-monospace {
        font-family: monospace
    }

    .MathJax .MJX-sans-serif {
        font-family: sans-serif
    }

    #MathJax_Tooltip {
        background-color: InfoBackground;
        color: InfoText;
        border: 1px solid black;
        box-shadow: 2px 2px 5px #AAAAAA;
        -webkit-box-shadow: 2px 2px 5px #AAAAAA;
        -moz-box-shadow: 2px 2px 5px #AAAAAA;
        -khtml-box-shadow: 2px 2px 5px #AAAAAA;
        filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=2, OffY=2, Color='gray', Positive='true');
        padding: 3px 4px;
        z-index: 401;
        position: absolute;
        left: 0;
        top: 0;
        width: auto;
        height: auto;
        display: none
    }

    .MathJax {
        display: inline;
        font-style: normal;
        font-weight: normal;
        line-height: normal;
        font-size: 100%;
        font-size-adjust: none;
        text-indent: 0;
        text-align: left;
        text-transform: none;
        letter-spacing: normal;
        word-spacing: normal;
        word-wrap: normal;
        white-space: nowrap;
        float: none;
        direction: ltr;
        max-width: none;
        max-height: none;
        min-width: 0;
        min-height: 0;
        border: 0;
        padding: 0;
        margin: 0
    }

    .MathJax:focus, body :focus .MathJax {
        display: inline-table
    }

    .MathJax.MathJax_FullWidth {
        text-align: center;
        display: table-cell !important;
        width: 10000em !important
    }

    .MathJax img, .MathJax nobr, .MathJax a {
        border: 0;
        padding: 0;
        margin: 0;
        max-width: none;
        max-height: none;
        min-width: 0;
        min-height: 0;
        vertical-align: 0;
        line-height: normal;
        text-decoration: none
    }

    img.MathJax_strut {
        border: 0 !important;
        padding: 0 !important;
        margin: 0 !important;
        vertical-align: 0 !important
    }

    .MathJax span {
        display: inline;
        position: static;
        border: 0;
        padding: 0;
        margin: 0;
        vertical-align: 0;
        line-height: normal;
        text-decoration: none
    }

    .MathJax nobr {
        white-space: nowrap !important
    }

    .MathJax img {
        display: inline !important;
        float: none !important
    }

    .MathJax * {
        transition: none;
        -webkit-transition: none;
        -moz-transition: none;
        -ms-transition: none;
        -o-transition: none
    }

    .MathJax_Processing {
        visibility: hidden;
        position: fixed;
        width: 0;
        height: 0;
        overflow: hidden
    }

    .MathJax_Processed {
        display: none !important
    }

    .MathJax_ExBox {
        display: block !important;
        overflow: hidden;
        width: 1px;
        height: 60ex;
        min-height: 0;
        max-height: none
    }

    .MathJax .MathJax_EmBox {
        display: block !important;
        overflow: hidden;
        width: 1px;
        height: 60em;
        min-height: 0;
        max-height: none
    }

    .MathJax_LineBox {
        display: table !important
    }

    .MathJax_LineBox span {
        display: table-cell !important;
        width: 10000em !important;
        min-width: 0;
        max-width: none;
        padding: 0;
        border: 0;
        margin: 0
    }

    .MathJax .MathJax_HitBox {
        cursor: text;
        background: white;
        opacity: 0;
        filter: alpha(opacity=0)
    }

    .MathJax .MathJax_HitBox * {
        filter: none;
        opacity: 1;
        background: transparent
    }

    #MathJax_Tooltip * {
        filter: none;
        opacity: 1;
        background: transparent
    }

    @font-face {
        font-family: MathJax_Main;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Main-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Main-Regular.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Main-bold;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Main-Bold.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Main-Bold.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Main-italic;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Main-Italic.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Main-Italic.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Math-italic;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Math-Italic.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Math-Italic.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Caligraphic;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Caligraphic-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Caligraphic-Regular.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Size1;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Size1-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Size1-Regular.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Size2;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Size2-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Size2-Regular.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Size3;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Size3-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Size3-Regular.otf?V=2.7.2') format('opentype')
    }

    @font-face {
        font-family: MathJax_Size4;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_Size4-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_Size4-Regular.otf?V=2.7.2') format('opentype')
    }

    .MathJax .noError {
        vertical-align: 0;
        font-size: 90%;
        text-align: left;
        color: black;
        padding: 1px 3px;
        border: 1px solid
    }
    </style>
    <style type="text/css">@font-face {
        font-family: MathJax_AMS;
        src: url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/woff/MathJax_AMS-Regular.woff?V=2.7.2') format('woff'), url('http://static.blog.csdn.net/mdeditor/public/res/bower-libs/MathJax/fonts/HTML-../../statics/TeX/otf/MathJax_AMS-Regular.otf?V=2.7.2') format('opentype')
    }
    </style>
</head>

<body style="overflow: hidden;">
<div style="visibility: hidden; overflow: hidden; position: absolute; top: 0px; height: 1px; width: auto; padding: 0px; border: 0px; margin: 0px; text-align: left; text-indent: 0px; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal;">
    <div id="MathJax_Hidden"></div>
</div>
<div id="MathJax_Message" style="display: none;"></div>
<%--<div class="switchDOM " data-poputype="feed" data-feed-show="false"
     style="height: 35px; background: rgb(250, 250, 250); box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 2px 0px; margin-bottom: 1px;">
    &lt;%&ndash;<div class="switch-text" style="padding-left:150px;padding-right:16px;"><span
            style="line-height:35px;font-size: 14px;color: #4F4F4F;"><span
            style="color:red">严禁讨论涉及中国之军/政相关话题，违者会被禁言、封号!</span></span>
        <div class="switch-bottom csdn-tracking-statistics" style="float:right"><a class="switch-old"
                                                                                   href="javascript:void(0);"
                                                                                   style="padding-bottom: 5px;padding-top: 5px;line-height:35px;font-size:12px;padding-left:10px;padding-right:10px;"
                                                                                   target="_self">去旧版</a> <a
                class="switch-new switch-activation" href="javascript:void(0);"
                style="padding-bottom: 5px;padding-top: 5px;line-height:35px;font-size:12px;padding-left:10px;padding-right:10px;"
                target="_self">新版</a></div>
    </div>&ndash;%&gt;
    <style>                      .switch-old, .switch-new, .switch-new:link, .switch-new:visited, .switch-old:link, .switch-old:visited {
        color: #999;
    }

    body .switch-activation {
        border-radius: 16px;
        background-color: #5B5B5B;
        color: #fff !important
    }

    body .switch-old:hover, body .switch-new:hover {
        color: #4F4F4F;
    }

    body .switch-activation:hover {
        color: #999;
    }                       </style>
</div>--%>
<%--<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     style="position: absolute; width: 0; height: 0" id="__SVG_SPRITE_NODE__">
    <symbol class="icon" viewBox="0 0 1024 1024" id="logo">
        <defs>
        </defs>
        <path d="M533.941333 419.264c14.709333-1.621333 37.290667-3.264 68.352-3.264 51.872 0 93.802667 9.152 119.776 28.416 23.338667 17.952 38.858667 47.008 34.56 89.130667-3.978667 39.189333-24.042667 66.634667-53.312 83.594666C676.544 633.152 642.837333 640 592.106667 640c-29.888 0-58.421333-1.642667-80.106667-4.896l21.941333-215.84z m42.869334 172.938667c4.981333 0.992 11.562667 1.973333 24.533333 1.973333 51.882667 0 88.469333-25.877333 92.16-62.24 5.333333-52.554667-27.125333-70.944-81.802667-70.624-7.072 0-16.917333 0-22.133333 0.970667L576.8 592.213333h0.010667z m223.498666-164.704c210.954667-39.872 229.162667 31.776 222.645334 95.189333L1010.656 640h-66.944l11.210667-106.986667c2.421333-23.562667 17.504-69.653333-55.338667-67.914666-25.184 0.608-37.706667 4.064-37.706667 4.064s-2.186667 28.469333-4.832 49.514666L844.32 640H778.666667l13.024-119.573333"
              fill="#231916" p-id="7404"></path>
        <path d="M226.634667 632.682667c-12.373333 4.341333-38.037333 7.317333-73.909334 7.317333C49.6 640-6.048 590.933333 0.522667 526.090667 8.416 448.810667 90.858667 405.333333 181.141333 405.333333c34.976 0 55.552 2.858667 74.858667 7.637334l-6.208 52.064c-12.821333-4.384-42.890667-8.405333-67.232-8.405334-53.141333 0-98.250667 16.042667-103.424 66.762667-4.608 45.354667 27.061333 67.04 86.816 67.04 20.8 0 51.477333-3.018667 65.653333-7.370667l-4.992 49.6 0.021334 0.021334z"
              fill="#C92027" p-id="7405"></path>
        <path d="M272.714667 580.021333c19.285333 6.762667 59.488 13.504 92 13.504 35.029333 0 54.528-9.333333 56.096-23.797333 1.418667-13.205333-12.928-14.986667-52.490667-24.010667-54.666667-12.896-89.546667-32.842667-86.133333-64.704C286.176 443.989333 337.685333 416 416.725333 416c38.56 0 75.914667 2.613333 95.274667 8.714667l-6.656 46.666666c-12.565333-4.202667-60.672-10.037333-93.205333-10.037333-32.992 0-50.069333 9.973333-51.253334 20.917333-1.493333 13.845333 15.658667 14.485333 58.528 25.450667 58.026667 14.154667 83.402667 34.090667 80.085334 64.992C495.605333 609.109333 449.258667 640 356.714667 640c-38.528 0-71.744-6.762667-90.048-13.525333l6.048-46.453334z"
              fill="#231916" p-id="7406"></path>
    </symbol>
    <symbol class="icon" viewBox="0 0 1024 1024" id="pencil">
        <defs>
            <style type="text/css"></style>
        </defs>
        <path d="M128 817.6l44.8-192 136 144-180.8 48z m214.4-84.8l-136-144 406.4-430.4 134.4 144-404.8 430.4z m438.4-467.2l-136-144L745.6 14.4c19.2-19.2 49.6-19.2 67.2 0l67.2 72c19.2 19.2 19.2 51.2 0 72l-99.2 107.2zM976 1024H48c-27.2 0-48-22.4-48-51.2s20.8-51.2 48-51.2h928c27.2 0 48 22.4 48 51.2s-20.8 51.2-48 51.2z"
              fill="" p-id="5022"></path>
    </symbol>
</svg>--%>

<header>
    <div class="container">
        <%--<div class="logo-box">
            <a class="header-logo" href="http://mp.blog.csdn.net/" title="CSDN首页" target="_blank">
                <svg class="icon-logo">
                    <use xlink:href="#logo"></use>
                </svg>
                创作中心
            </a>
        </div>--%>
        <div class="navbar-collapse-md">
            <a class="btn-bd-red" href="http://mp.blog.csdn.net/postedit">
                <%--<svg class="icon icon-pencil">
                    <use xlink:href="#pencil"></use>
                </svg>--%>
                写博客
            </a>
            <ul class="navbar-nav-md">
                <li class="nav-item nav-avatar">
                    <a href="http://blog.csdn.net/weixin_41338470" target="_blank">
                        <img class="nav-avatar-img" src="../../statics/${users.upicture}" width="56" height="56">
                    </a>
                </li>
                <li class="nav-item header-ucenter  d-flex align-items-center flex-column">
                    <div class="top d-flex align-items-center">
                        <a href="http://blog.csdn.net/weixin_41338470" class="header-ucenter-uname">${users.uname}</a>
                        <a class="header-ucenter-logout"
                           href="/mainController/exist">退出</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</header>
<form action="dowriteblog" method="post">
    <main id="meditor_box">
        <div class="title-box clearfix d-flex">
            <div class="dro-box">
                <select id="selType" name="selType">
                    <option value="0">请选择</option>
                    <option value="original">原创</option>
                    <option value="repost">转载</option>
                    <option value="translated">翻译</option>
                </select>
            </div>
            <input type="text" id="txtTitle" class="input-file-title" name="txtTitle" maxlength="100" placeholder="输入文章标题">
            <button class="bg-red btn-fabu" onclick="submit()">发布博客</button>
        </div>
        <div id="editorBox" style="position: relative; width: 1600px; height: 519.422px;">
            <div id="csdnEditor" class=" ltr"
                 style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; overflow: hidden;">
                <div class="layout-wrapper-l1" style="transform: translate(0px, 0px); width: 1600px; height: 519px;">
                    <div class="layout-wrapper-l2" style="left: 0px; width: 1600px; height: 519px;">
                        <div class="navbar navbar-default">
                            <div class="navbar-inner">
                                <div class="buttons-dropdown dropdown hide">
                                    <div class="nav">
                                        <button class="btn btn-success" data-toggle="dropdown" title="Show buttons">
                                            <i class="icon-th-large"></i>
                                        </button>
                                        <div class="dropdown-menu">
                                        </div>
                                    </div>
                                </div>


                                <ul class="nav pull-right right-buttons">
                                    <li class="offline-status hide">
                                        <div class="text-danger">
                                            <i class="icon-lixian"></i>离线
                                        </div>
                                    </li>
                                    <li class="extension-buttons" style="display:none">
                                        <div class="btn-group"><a class="btn btn-success button-publish"
                                                                  title="Update document publication"><i
                                                class="icon-upload"></i></a></div>
                                    </li>
                                    <!-- <li>
                                        <a class="btn btn-success btn-modal-Switch extension-buttons" title="切换HTML编辑器">
                                            <i class="icon-qiehuan"></i>
                                            <span style="font-size: 12px;color: #999999;">HTML编辑器</span>
                                        </a>
                                    </li> -->
                                </ul>
                                <ul class="nav left-buttons" style="float: left;margin-top: -5px">
                                    <li class="wmd-button-group1 btn-group" style="float: left">

                                    <li class="wmd-button btn btn-success" id="wmd-bold-button"
                                        title="加粗 &lt;strong&gt; Ctrl/Cmd+B" style="left: 0px;float: left"><span
                                            style="background-position: 0px 0px; display: none;"></span><i
                                            class="icon-bold"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-italic-button"
                                        title="斜体 &lt;em&gt; Ctrl/Cmd+I" style="left: 0px;float: left"><span
                                            style="background-position: -20px 0px; display: none;"></span><i
                                            class="icon-italic"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-link-button"
                                        title="Hyperlink &lt;a&gt; Ctrl/Cmd+L" style="left: 0px;float: left"><span
                                            style="background-position: -40px 0px; display: none;"></span><i
                                            class="icon-link"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-quote-button"
                                        title="引用 &lt;blockquote&gt; Ctrl/Cmd+Q" style="left: 0px;float: left"><span
                                            style="background-position: -60px 0px; display: none;"></span><i
                                            class="icon-quote"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-code-button"
                                        title="代码片 &lt;pre&gt;&lt;code&gt; Ctrl/Cmd+K"
                                        style="left: 0px;float: left"><span
                                            style="background-position: -80px 0px; display: none;"></span><i
                                            class="icon-code"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-image-button"
                                        title="图片 &lt;img&gt; Ctrl/Cmd+G" style="left: 0px;float: left"><span
                                            style="background-position: -100px 0px; display: none;"></span><i
                                            class="icon-picture"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-olist-button"
                                        title="有序列表 &lt;ol&gt; Ctrl/Cmd+O" style="left: 0px;float: left"><span
                                            style="background-position: -120px 0px; display: none;"></span><i
                                            class="icon-list-ordered"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-ulist-button"
                                        title="无序列表 &lt;ul&gt; Ctrl/Cmd+U" style="left: 0px;float: left"><span
                                            style="background-position: -140px 0px; display: none;"></span><i
                                            class="icon-list-unordered"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-heading-button"
                                        title="标题 &lt;h1&gt;/&lt;h2&gt; Ctrl/Cmd+H" style="left: 0px;float: left"><span
                                            style="background-position: -160px 0px; display: none;"></span><i
                                            class="icon-heading"></i></li>
                                    <li class="wmd-button btn btn-success" id="wmd-hr-button"
                                        title="横线 &lt;hr&gt; Ctrl/Cmd+R" style="left: 0px;float: left"><span
                                            style="background-position: -180px 0px; display: none;"></span><i
                                            class="icon-line"></i></li>
                                    <li class="wmd-button disabled btn btn-success" id="wmd-undo-button"
                                        title="撤销 - Ctrl/Cmd+Z" style="left: 0px;float: left"><span
                                            style="background-position: -200px -20px; display: none;"></span><i
                                            class="icon-undo"></i></li>
                                    <li class="wmd-button disabled btn btn-success" id="wmd-redo-button"
                                        title="重做 - Ctrl/Cmd+Y" style="left: 0px;float: left"><span
                                            style="background-position: -220px -20px; display: none;"></span><i
                                            class="icon-redo"></i></li>

                                    </li>
                                </ul>
                                <ul class="nav left-buttons">
                                    <li class="wmd-button-group2 btn-group">
                                        <a class="btn btn-success btn-blog-new" title="写新文章">
                                            <i class="icon-pencil"></i>
                                        </a>
                                        <a class="btn btn-success btn-blog-save" title="保存">
                                            <i class="icon-disk"></i>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="nav left-buttons">
                                    <li class="wmd-button-group3 btn-group">
                                        <a data-toggle="modal" data-target=".modal-import-url"
                                           class="btn btn-success btn-import-online" title="从线上导入">
                                            <i class="icon-earth"></i>
                                        </a>
                                        <a data-toggle="modal" data-target=".modal-import-harddrive-markdown"
                                           class="btn btn-success btn-import" title="从本机导入">
                                            <i class="icon-hdd"></i>
                                        </a>
                                        <a data-toggle="modal" data-target=".modal-export-doc"
                                           class="btn btn-success btn-export" title="导出到本地">
                                            <i class="icon-upload"></i>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="nav left-buttons">
                                    <li class="wmd-button-group5 btn-group">
                                        <a class="btn btn-success btn-modal-fullscreen" title="全屏">
                                            <i class="icon-quanping"></i>
                                        </a>
                                        <a class="btn btn-success btn-modal-helps" title="Markdown语法帮助">
                                            <i class="icon-help"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="layout-wrapper-l3" style="top: 40px; width: 1600px; height: 479px;">
                            <textarea name="textarea" id="textarea" cols="100" rows="100" style="width: 100%;border-radius: 5px">
                                ===============================欢迎写博客===============================
                            </textarea>

                            <%-- <div class="preview-panel"
                                  style="transform: translate(784px, 0px); width: 816px; height: 479px;">
                                 <div class="layout-resizer layout-resizer-preview open"
                                      style="user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); touch-action: pan-y; height: 479px;"></div>
                                 <div class="layout-toggler layout-toggler-navbar btn btn-info hide open" title="头部收起/展开"
                                      style="height: 60px;">
                                 </div>
                                 <div class="layout-toggler layout-toggler-preview btn open" title="预览区显示/隐藏（可拖拽）"
                                      style="line-height: 60px; vertical-align: middle; outline: none; transform: translate(0px, 209.5px); height: 60px;">
                                     <svg viewBox="0 0 1024 1024" width="22" height="22"
                                          style=" display: inline-block; vertical-align: middle;">&gt;
                                         <path d="M704 512a22.56 22.56 0 0 0-6.656-15.136l-307.456-307.488a22.72 22.72 0 0 0-15.136-6.56 22.592 22.592 0 0 0-15.136 6.56L326.592 222.4a22.72 22.72 0 0 0-6.56 15.136c0 5.28 2.624 11.232 6.56 15.136L585.888 512l-259.328 259.328a22.72 22.72 0 0 0-6.56 15.136c0 5.952 2.624 11.232 6.56 15.136l33.024 33.024a22.688 22.688 0 0 0 15.136 6.56 22.592 22.592 0 0 0 15.136-6.56l307.488-307.488A22.432 22.432 0 0 0 704 512z"
                                               fill="#d6d6d6" p-id="7154"></path>
                                     </svg>
                                 </div>
                                 &lt;%&ndash;<div class="preview-container" style="left: 32px; width: 784px; height: 479px;">
                                     &lt;%&ndash;<div id="preview-contents"
                                          style="padding-left: 35px; padding-right: 35px; padding-bottom: 419px;">
                                         <div id="wmd-preview" class="preview-content markdown_views"></div>
                                         <div id="wmd-preview-section-1"
                                              class="wmd-preview-section preview-content markdown_views">

                                         </div>
                                         <div id="wmd-preview-section-2"
                                              class="wmd-preview-section preview-content markdown_views">

                                             <h1 id="欢迎使用markdown编辑器写博客">欢迎使用Markdown编辑器写博客</h1>

                                             <p>本Markdown编辑器使用<a href="https://github.com/benweet/stackedit">StackEdit</a>修改而来，用它写博客，将会带来全新的体验哦：
                                             </p>

                                             <ul>
                                                 <li><strong>Markdown和扩展Markdown简洁的语法</strong></li>
                                                 <li><strong>代码块高亮</strong></li>
                                                 <li><strong>图片链接和图片上传</strong></li>
                                                 <li><strong><em>LaTex</em>数学公式</strong></li>
                                                 <li><strong>UML序列图和流程图</strong></li>
                                                 <li><strong>离线写博客</strong></li>
                                                 <li><strong>导入导出Markdown文件</strong></li>
                                                 <li><strong>丰富的快捷键</strong></li>
                                             </ul>

                                             <hr>

                                         </div>
                                         <div id="wmd-preview-section-3"
                                              class="wmd-preview-section preview-content markdown_views">

                                             <h2 id="快捷键">快捷键</h2>

                                             <ul>
                                                 <li>加粗 <code>Ctrl + B</code></li>
                                                 <li>斜体 <code>Ctrl + I</code></li>
                                                 <li>引用 <code>Ctrl + Q</code></li>
                                                 <li>插入链接 <code>Ctrl + L</code></li>
                                                 <li>插入代码 <code>Ctrl + K</code></li>
                                                 <li>插入图片 <code>Ctrl + G</code></li>
                                                 <li>提升标题 <code>Ctrl + H</code></li>
                                                 <li>有序列表 <code>Ctrl + O</code></li>
                                                 <li>无序列表 <code>Ctrl + U</code></li>
                                                 <li>横线 <code>Ctrl + R</code></li>
                                                 <li>撤销 <code>Ctrl + Z</code></li>
                                                 <li>重做 <code>Ctrl + Y</code></li>
                                             </ul>

                                         </div>
                                         <div id="wmd-preview-section-4"
                                              class="wmd-preview-section preview-content markdown_views">

                                             <h2 id="markdown及扩展">Markdown及扩展</h2>

                                             <blockquote>
                                                 <p>Markdown 是一种轻量级标记语言，它允许人们使用易读易写的纯文本格式编写文档，然后转换成格式丰富的HTML页面。 —— <a
                                                         href="https://zh.wikipedia.org/wiki/Markdown" target="_blank"> [
                                                     维基百科 ]</a></p>
                                             </blockquote>

                                             <p>使用简单的符号标识不同的标题，将某些文字标记为<strong>粗体</strong>或者<em>斜体</em>，创建一个<a
                                                     href="http://www.csdn.net/">链接</a>等，详细语法参考帮助？。</p>

                                             <p>本编辑器支持 <strong>Markdown Extra</strong> , 　扩展了很多好用的功能。具体请参考<a
                                                     href="https://github.com/jmcmanus/pagedown-extra"
                                                     title="Pagedown Extra">Github</a>. </p>

                                         </div>
                                         <div id="wmd-preview-section-5"
                                              class="wmd-preview-section preview-content markdown_views">

                                             <h3 id="表格">表格</h3>

                                             <p><strong>Markdown　Extra</strong>　表格语法：</p>

                                             <table>
                                                 <thead>
                                                 <tr>
                                                     <th>项目</th>
                                                     <th>价格</th>
                                                 </tr>
                                                 </thead>
                                                 <tbody>
                                                 <tr>
                                                     <td>Computer</td>
                                                     <td>$1600</td>
                                                 </tr>
                                                 <tr>
                                                     <td>Phone</td>
                                                     <td>$12</td>
                                                 </tr>
                                                 <tr>
                                                     <td>Pipe</td>
                                                     <td>$1</td>
                                                 </tr>
                                                 </tbody>
                                             </table>


                                             <p>可以使用冒号来定义对齐方式：</p>

                                             <table>
                                                 <thead>
                                                 <tr>
                                                     <th align="left">项目</th>
                                                     <th align="right">价格</th>
                                                     <th align="center">数量</th>
                                                 </tr>
                                                 </thead>
                                                 <tbody>
                                                 <tr>
                                                     <td align="left">Computer</td>
                                                     <td align="right">1600 元</td>
                                                     <td align="center">5</td>
                                                 </tr>
                                                 <tr>
                                                     <td align="left">Phone</td>
                                                     <td align="right">12 元</td>
                                                     <td align="center">12</td>
                                                 </tr>
                                                 <tr>
                                                     <td align="left">Pipe</td>
                                                     <td align="right">1 元</td>
                                                     <td align="center">234</td>
                                                 </tr>
                                                 </tbody>
                                             </table>


                                         </div>
                                         <div id="wmd-preview-section-6"
                                              class="wmd-preview-section preview-content markdown_views">

                                             <h3 id="定义列表">定义列表</h3>

                                             <dl>
                                                 <dt><strong>Markdown　Extra</strong>　定义列表语法：</dt>
                                                 <dt>项目１</dt>
                                                 <dt>项目２</dt>
                                                 <dd>定义 A</dd>

                                                 <dd>定义 B</dd>

                                                 <dt>项目３</dt>
                                                 <dd>定义 C</dd>

                                                 <dd>
                                                     <p>定义 D</p>

                                                     <blockquote>
                                                         <p>定义D内容</p>
                                                     </blockquote>
                                                 </dd>
                                             </dl>

                                         </div>
                                         <div id="wmd-preview-section-7"
                                              class="wmd-preview-section preview-content markdown_views">

                                             <h3 id="代码块">代码块</h3>

                                             <p>代码块语法遵循标准markdown代码，例如：</p>

                                         &ndash;%&gt;&ndash;%&gt;--%></div>
                        <div id="wmd-preview-section-8"
                             class="wmd-preview-section preview-content markdown_views">

                            <%--<pre class="prettyprint"><code class="language-python hljs "><span class="hljs-decorator">@requires_authorization</span>
                            <span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">somefunc</span><span
                                    class="hljs-params">(param1=<span class="hljs-string">''</span>, param2=<span
                                    class="hljs-number">0</span>)</span>:</span>
                                <span class="hljs-string">'''A docstring'''</span>
                                <span class="hljs-keyword">if</span> param1 &gt; param2: <span class="hljs-comment"># interesting</span>
                                    <span class="hljs-keyword">print</span> <span class="hljs-string">'Greater'</span>
                                <span class="hljs-keyword">return</span> (param2 - param1 + <span class="hljs-number">1</span>) <span
                                        class="hljs-keyword">or</span> <span class="hljs-keyword">None</span>
                            <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">SomeClass</span>:</span>
                                <span class="hljs-keyword">pass</span>
                            <span class="hljs-prompt">&gt;&gt;&gt; </span>message = <span class="hljs-string">'''interpreter
                            <span class="hljs-prompt">... </span>prompt'''</span></code></pre>

                                                                </div>--%>
                            <div id="wmd-preview-section-9"
                                 class="wmd-preview-section preview-content markdown_views">
                            </div>
                            <div id="wmd-preview-section-10"
                                 class="wmd-preview-section preview-content markdown_views">

                                <h3 id="目录">目录</h3>

                                <p>用 <code>[TOC]</code>来生成目录：</p>

                                <p>
                                <div class="toc">
                                    <ul>
                                        <li>
                                            <a href="http://mp.blog.csdn.net/mdeditor#%E6%AC%A2%E8%BF%8E%E4%BD%BF%E7%94%A8markdown%E7%BC%96%E8%BE%91%E5%99%A8%E5%86%99%E5%8D%9A%E5%AE%A2">欢迎使用Markdown编辑器写博客</a>
                                            <ul>
                                                <li>
                                                    <a href="http://mp.blog.csdn.net/mdeditor#%E5%BF%AB%E6%8D%B7%E9%94%AE">快捷键</a>
                                                </li>
                                                <li>
                                                    <a href="http://mp.blog.csdn.net/mdeditor#markdown%E5%8F%8A%E6%89%A9%E5%B1%95">Markdown及扩展</a>
                                                    <ul>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#%E8%A1%A8%E6%A0%BC">表格</a>
                                                        </li>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#%E5%AE%9A%E4%B9%89%E5%88%97%E8%A1%A8">定义列表</a>
                                                        </li>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#%E4%BB%A3%E7%A0%81%E5%9D%97">代码块</a>
                                                        </li>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#%E8%84%9A%E6%B3%A8">脚注</a>
                                                        </li>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#%E7%9B%AE%E5%BD%95">目录</a>
                                                        </li>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#%E6%95%B0%E5%AD%A6%E5%85%AC%E5%BC%8F">数学公式</a>
                                                        </li>
                                                        <li>
                                                            <a href="http://mp.blog.csdn.net/mdeditor#uml-%E5%9B%BE">UML
                                                                图:</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="http://mp.blog.csdn.net/mdeditor#%E7%A6%BB%E7%BA%BF%E5%86%99%E5%8D%9A%E5%AE%A2">离线写博客</a>
                                                </li>
                                                <li>
                                                    <a href="http://mp.blog.csdn.net/mdeditor#%E6%B5%8F%E8%A7%88%E5%99%A8%E5%85%BC%E5%AE%B9">浏览器兼容</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                </p>

                            </div>
                            <div id="wmd-preview-section-11"
                                 class="wmd-preview-section preview-content markdown_views">

                                <h3 id="数学公式">数学公式</h3>

                                <p>使用MathJax渲染<em>LaTex</em> 数学公式，详见<a href="http://math.stackexchange.com/">math.stackexchange.com</a>.
                                </p>

                                <ul>
                                    <li>行内公式，数学公式为：<span class="MathJax_Preview"
                                                         style="color: inherit; display: none;"></span><span
                                            class="MathJax" id="MathJax-Element-1-Frame" tabindex="0"
                                            data-mathml="&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot;&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x0393;&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;n&lt;/mi&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mo stretchy=&quot;false&quot;&gt;(&lt;/mo&gt;&lt;mi&gt;n&lt;/mi&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;1&lt;/mn&gt;&lt;mo stretchy=&quot;false&quot;&gt;)&lt;/mo&gt;&lt;mo&gt;!&lt;/mo&gt;&lt;mspace width=&quot;1em&quot; /&gt;&lt;mi mathvariant=&quot;normal&quot;&gt;&amp;#x2200;&lt;/mi&gt;&lt;mi&gt;n&lt;/mi&gt;&lt;mo&gt;&amp;#x2208;&lt;/mo&gt;&lt;mrow class=&quot;MJX-TeXAtom-ORD&quot;&gt;&lt;mi mathvariant=&quot;double-struck&quot;&gt;N&lt;/mi&gt;&lt;/mrow&gt;&lt;/math&gt;"
                                            role="presentation" style="position: relative;"><nobr
                                            aria-hidden="true"><span class="math" id="MathJax-Span-1"
                                                                     style="width: 13.003em; display: inline-block;"><span
                                            style="display: inline-block; position: relative; width: 10.836em; height: 0px; font-size: 120%;"><span
                                            style="position: absolute; clip: rect(1.558em, 1010.84em, 2.892em, -999.997em); top: -2.442em; left: 0em;"><span
                                            class="mrow" id="MathJax-Span-2"><span class="mi"
                                                                                   id="MathJax-Span-3"
                                                                                   style="font-family: MathJax_Main;">Γ</span><span
                                            class="mo" id="MathJax-Span-4"
                                            style="font-family: MathJax_Main;">(</span><span class="mi"
                                                                                             id="MathJax-Span-5"
                                                                                             style="font-family: MathJax_Math-italic;">n</span><span
                                            class="mo" id="MathJax-Span-6"
                                            style="font-family: MathJax_Main;">)</span><span class="mo"
                                                                                             id="MathJax-Span-7"
                                                                                             style="font-family: MathJax_Main; padding-left: 0.281em;">=</span><span
                                            class="mo" id="MathJax-Span-8"
                                            style="font-family: MathJax_Main; padding-left: 0.281em;">(</span><span
                                            class="mi" id="MathJax-Span-9"
                                            style="font-family: MathJax_Math-italic;">n</span><span class="mo"
                                                                                                    id="MathJax-Span-10"
                                                                                                    style="font-family: MathJax_Main; padding-left: 0.225em;">−</span><span
                                            class="mn" id="MathJax-Span-11"
                                            style="font-family: MathJax_Main; padding-left: 0.225em;">1</span><span
                                            class="mo" id="MathJax-Span-12"
                                            style="font-family: MathJax_Main;">)</span><span class="mo"
                                                                                             id="MathJax-Span-13"
                                                                                             style="font-family: MathJax_Main;">!</span><span
                                            class="mspace" id="MathJax-Span-14"
                                            style="height: 0em; vertical-align: 0em; width: 1.003em; display: inline-block; overflow: hidden;"></span><span
                                            class="mi" id="MathJax-Span-15"
                                            style="font-family: MathJax_Main;">∀</span><span class="mi"
                                                                                             id="MathJax-Span-16"
                                                                                             style="font-family: MathJax_Math-italic;">n</span><span
                                            class="mo" id="MathJax-Span-17"
                                            style="font-family: MathJax_Main; padding-left: 0.281em;">∈</span><span
                                            class="texatom" id="MathJax-Span-18" style="padding-left: 0.281em;"><span
                                            class="mrow" id="MathJax-Span-19"><span class="mi"
                                                                                    id="MathJax-Span-20"
                                                                                    style="font-family: MathJax_AMS;">N</span></span></span></span><span
                                            style="display: inline-block; width: 0px; height: 2.447em;"></span></span></span><span
                                            style="display: inline-block; overflow: hidden; vertical-align: -0.33em; border-left: 0px solid; width: 0px; height: 1.337em;"></span></span></nobr><span
                                            class="MJX_Assistive_MathML" role="presentation"><math
                                            xmlns="http://www.w3.org/1998/Math/MathML"><mi mathvariant="normal">Γ</mi><mo
                                            stretchy="false">(</mo><mi>n</mi><mo stretchy="false">)</mo><mo>=</mo><mo
                                            stretchy="false">(</mo><mi>n</mi><mo>−</mo><mn>1</mn><mo
                                            stretchy="false">)</mo><mo>!</mo><mspace width="1em"></mspace><mi
                                            mathvariant="normal">∀</mi><mi>n</mi><mo>∈</mo><mrow
                                            class="MJX-TeXAtom-ORD"><mi
                                            mathvariant="double-struck">N</mi></mrow></math></span></span>
                                        <script type="math/tex" id="MathJax-Element-1">
                                                    \Gamma(n) = (n-1)!\quad\forall n\in\mathbb N



                                        </script>
                                        。
                                    </li>
                                    <li>块级公式：</li>
                                </ul>

                            </div>
                            <div id="wmd-preview-section-12"
                                 class="wmd-preview-section preview-content markdown_views">

                                <p><span class="MathJax_Preview" style="color: inherit; display: none;"></span>
                                <div class="MathJax_Display" style="text-align: center;"><span class="MathJax"
                                                                                               id="MathJax-Element-2-Frame"
                                                                                               tabindex="0"
                                                                                               style="text-align: center; position: relative;"
                                                                                               data-mathml="&lt;math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;&gt;&lt;mi&gt;x&lt;/mi&gt;&lt;mo&gt;=&lt;/mo&gt;&lt;mstyle displaystyle=&quot;true&quot; scriptlevel=&quot;0&quot;&gt;&lt;mfrac&gt;&lt;mrow&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mi&gt;b&lt;/mi&gt;&lt;mo&gt;&amp;#x00B1;&lt;/mo&gt;&lt;msqrt&gt;&lt;msup&gt;&lt;mi&gt;b&lt;/mi&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;/msup&gt;&lt;mo&gt;&amp;#x2212;&lt;/mo&gt;&lt;mn&gt;4&lt;/mn&gt;&lt;mi&gt;a&lt;/mi&gt;&lt;mi&gt;c&lt;/mi&gt;&lt;/msqrt&gt;&lt;/mrow&gt;&lt;mrow&gt;&lt;mn&gt;2&lt;/mn&gt;&lt;mi&gt;a&lt;/mi&gt;&lt;/mrow&gt;&lt;/mfrac&gt;&lt;/mstyle&gt;&lt;/math&gt;"
                                                                                               role="presentation"><nobr
                                        aria-hidden="true"><span class="math" id="MathJax-Span-21"
                                                                 style="width: 10.836em; display: inline-block;"><span
                                        style="display: inline-block; position: relative; width: 9.013em; height: 0px; font-size: 120%;"><span
                                        style="position: absolute; clip: rect(0.471em, 1009.01em, 2.971em, -999.997em); top: -2.133em; left: 0em;"><span
                                        class="mrow" id="MathJax-Span-22"><span class="mi" id="MathJax-Span-23"
                                                                                style="font-family: MathJax_Math-italic;">x</span><span
                                        class="mo" id="MathJax-Span-24"
                                        style="font-family: MathJax_Main; padding-left: 0.263em;">=</span><span
                                        class="mstyle" id="MathJax-Span-25" style="padding-left: 0.263em;"><span
                                        class="mrow" id="MathJax-Span-26"><span class="mfrac"
                                                                                id="MathJax-Span-27"><span
                                        style="display: inline-block; position: relative; width: 6.93em; height: 0px; margin-right: 0.107em; margin-left: 0.107em;"><span
                                        style="position: absolute; clip: rect(3.023em, 1006.77em, 4.326em, -999.997em); top: -4.685em; left: 50%; margin-left: -3.383em;"><span
                                        class="mrow" id="MathJax-Span-28"><span class="mo" id="MathJax-Span-29"
                                                                                style="font-family: MathJax_Main;">−</span><span
                                        class="mi" id="MathJax-Span-30"
                                        style="font-family: MathJax_Math-italic;">b</span><span class="mo"
                                                                                                id="MathJax-Span-31"
                                                                                                style="font-family: MathJax_Main; padding-left: 0.211em;">±</span><span
                                        class="msqrt" id="MathJax-Span-32" style="padding-left: 0.211em;"><span
                                        style="display: inline-block; position: relative; width: 4.378em; height: 0px;"><span
                                        style="position: absolute; clip: rect(3.076em, 1003.49em, 4.273em, -999.997em); top: -4.008em; left: 0.836em;"><span
                                        class="mrow" id="MathJax-Span-33"><span class="msubsup"
                                                                                id="MathJax-Span-34"><span
                                        style="display: inline-block; position: relative; width: 0.836em; height: 0px;"><span
                                        style="position: absolute; clip: rect(3.18em, 1000.42em, 4.169em, -999.997em); top: -4.008em; left: 0em;"><span
                                        class="mi" id="MathJax-Span-35"
                                        style="font-family: MathJax_Math-italic;">b</span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="position: absolute; top: -4.32em; left: 0.419em;"><span
                                        class="mn" id="MathJax-Span-36"
                                        style="font-size: 70.7%; font-family: MathJax_Main;">2</span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span></span></span><span
                                        class="mo" id="MathJax-Span-37"
                                        style="font-family: MathJax_Main; padding-left: 0.211em;">−</span><span
                                        class="mn" id="MathJax-Span-38"
                                        style="font-family: MathJax_Main; padding-left: 0.211em;">4</span><span
                                        class="mi" id="MathJax-Span-39"
                                        style="font-family: MathJax_Math-italic;">a</span><span class="mi"
                                                                                                id="MathJax-Span-40"
                                                                                                style="font-family: MathJax_Math-italic;">c</span></span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="position: absolute; clip: rect(3.596em, 1003.54em, 3.961em, -999.997em); top: -4.581em; left: 0.836em;"><span
                                        style="display: inline-block; position: relative; width: 3.544em; height: 0px;"><span
                                        style="position: absolute; font-family: MathJax_Main; top: -4.008em; left: -0.102em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="position: absolute; font-family: MathJax_Main; top: -4.008em; left: 2.867em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="font-family: MathJax_Main; position: absolute; top: -4.008em; left: 0.367em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="font-family: MathJax_Main; position: absolute; top: -4.008em; left: 0.888em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="font-family: MathJax_Main; position: absolute; top: -4.008em; left: 1.357em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="font-family: MathJax_Main; position: absolute; top: -4.008em; left: 1.878em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="font-family: MathJax_Main; position: absolute; top: -4.008em; left: 2.346em;">−<span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span></span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="position: absolute; clip: rect(3.076em, 1000.84em, 4.378em, -999.997em); top: -4.06em; left: 0em;"><span
                                        style="font-family: MathJax_Main;">√</span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span></span></span></span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="position: absolute; clip: rect(3.18em, 1000.99em, 4.169em, -999.997em); top: -3.331em; left: 50%; margin-left: -0.518em;"><span
                                        class="mrow" id="MathJax-Span-41"><span class="mn" id="MathJax-Span-42"
                                                                                style="font-family: MathJax_Main;">2</span><span
                                        class="mi" id="MathJax-Span-43"
                                        style="font-family: MathJax_Math-italic;">a</span></span><span
                                        style="display: inline-block; width: 0px; height: 4.013em;"></span></span><span
                                        style="position: absolute; clip: rect(0.836em, 1006.93em, 1.201em, -999.997em); top: -1.247em; left: 0em;"><span
                                        style="display: inline-block; overflow: hidden; vertical-align: 0em; border-top: 1.3px solid; width: 6.93em; height: 0px;"></span><span
                                        style="display: inline-block; width: 0px; height: 1.044em;"></span></span></span></span></span></span></span><span
                                        style="display: inline-block; width: 0px; height: 2.138em;"></span></span></span><span
                                        style="display: inline-block; overflow: hidden; vertical-align: -0.872em; border-left: 0px solid; width: 0px; height: 2.816em;"></span></span></nobr><span
                                        class="MJX_Assistive_MathML MJX_Assistive_MathML_Block"
                                        role="presentation"><math xmlns="http://www.w3.org/1998/Math/MathML"
                                                                  display="block"><mi>x</mi><mo>=</mo><mstyle
                                        displaystyle="true" scriptlevel="0"><mfrac><mrow><mo>−</mo><mi>b</mi><mo>±</mo><msqrt><msup><mi>b</mi><mn>2</mn></msup><mo>−</mo><mn>4</mn><mi>a</mi><mi>c</mi></msqrt></mrow><mrow><mn>2</mn><mi>a</mi></mrow></mfrac></mstyle></math></span></span>
                                </div>
                                <script type="math/tex; mode=display" id="MathJax-Element-2">
                                            	x = \dfrac{-b \pm \sqrt{b^2 - 4ac}}{2a}



                                </script>
                                </p>

                                <p>更多LaTex语法请参考 <a
                                        href="http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference">这儿</a>.
                                </p>

                            </div>
                            <div id="wmd-preview-section-13"
                                 class="wmd-preview-section preview-content markdown_views">

                                <h3 id="uml-图">UML 图:</h3>

                                <p>可以渲染序列图：</p>

                            </div>
                            <div id="wmd-preview-section-14"
                                 class="wmd-preview-section preview-content markdown_views">

                                <div class="sequence-diagram">
                                    <svg height="270" version="1.1" width="462.5"
                                         xmlns="http://www.w3.org/2000/svg"
                                         xmlns:xlink="http://www.w3.org/1999/xlink"
                                         style="overflow: hidden; position: relative; left: -0.5px; top: -0.578125px;">
                                        <desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created
                                            with Raphaël 2.1.2
                                        </desc>
                                        <defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                            <path stroke-linecap="round" d="M5,0 0,2.5 5,5z"
                                                  id="raphael-marker-block"
                                                  style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
                                            <marker id="raphael-marker-endblock55-obj21" markerHeight="5"
                                                    markerWidth="5" orient="auto" refX="2.5" refY="2.5"
                                                    style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <use href="#raphael-marker-block"
                                                     transform="rotate(180 2.5 2.5) scale(1,1)"
                                                     stroke-width="1.0000" fill="#000" stroke="none"
                                                     style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use>
                                            </marker>
                                            <marker id="raphael-marker-endblock55-obj27" markerHeight="5"
                                                    markerWidth="5" orient="auto" refX="2.5" refY="2.5"
                                                    style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <use href="#raphael-marker-block"
                                                     transform="rotate(180 2.5 2.5) scale(1,1)"
                                                     stroke-width="1.0000" fill="#000" stroke="none"
                                                     style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use>
                                            </marker>
                                        </defs>
                                        <rect x="10" y="20" width="50" height="40" rx="0" ry="0" fill="none"
                                              stroke="#000000" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <rect x="20" y="30" width="30" height="20" rx="0" ry="0" fill="#ffffff"
                                              stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="35" y="40" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family:monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">张三
                                            </tspan>
                                        </text>
                                        <rect x="10" y="210" width="50" height="40" rx="0" ry="0" fill="none"
                                              stroke="#000000" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <rect x="20" y="220" width="30" height="20" rx="0" ry="0" fill="#ffffff"
                                              stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="35" y="230" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">张三
                                            </tspan>
                                        </text>
                                        <path fill="none" stroke="#000000" d="M35,60L35,210" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
                                        <rect x="195.5" y="20" width="51" height="40" rx="0" ry="0" fill="none"
                                              stroke="#000000" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <rect x="205" y="30" width="31" height="20" rx="0" ry="0" fill="#ffffff"
                                              stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="221" y="40" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">李四
                                            </tspan>
                                        </text>
                                        <rect x="195.5" y="210" width="51" height="40" rx="0" ry="0" fill="none"
                                              stroke="#000000" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <rect x="205" y="220" width="31" height="20" rx="0" ry="0"
                                              fill="#ffffff" stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="221" y="230" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">李四
                                            </tspan>
                                        </text>
                                        <path fill="none" stroke="#000000" d="M221,60L221,210" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
                                        <rect x="45.34375" y="75" width="165.28125" height="20" rx="0" ry="0"
                                              fill="#ffffff" stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="128" y="85" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family:Andale Mono&quot;, monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">嘿，小四儿,
                                                写博客了没?
                                            </tspan>
                                        </text>
                                        <path fill="none" stroke="#000000"
                                              d="M35,100C35,100,186.36376917362213,100,216.000913430762,100"
                                              stroke-width="2"
                                              marker-end="url(#raphael-marker-endblock55-obj21)"
                                              stroke-dasharray="0"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
                                        <rect x="241" y="120" width="146" height="30" rx="0" ry="0" fill="none"
                                              stroke="#000000" stroke-width="2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <rect x="245.5" y="125" width="136" height="20" rx="0" ry="0"
                                              fill="#ffffff" stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="314" y="135" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: &quot;Andale Mono&quot;, monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                李四愣了一下，说：
                                            </tspan>
                                        </text>
                                        <rect x="44.5" y="165" width="166" height="20" rx="0" ry="0"
                                              fill="#ffffff" stroke="none"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
                                        <text x="128" y="175" text-anchor="middle"
                                              font-family="Andale Mono, monospace" font-size="16px"
                                              stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: &quot;Andale Mono&quot;, monospace; font-size: 16px;">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                忙得吐血，哪有时间写。
                                            </tspan>
                                        </text>
                                        <path fill="none" stroke="#000000"
                                              d="M221,190C221,190,69.63623082637787,190,39.99908656923799,190"
                                              stroke-width="2"
                                              marker-end="url(#raphael-marker-endblock55-obj27)"
                                              stroke-dasharray="6,2"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
                                    </svg>
                                </div>

                                <p>或者流程图：</p>

                            </div>
                            <div id="wmd-preview-section-15"
                                 class="wmd-preview-section preview-content markdown_views">

                                <div class="flow-chart">
                                    <svg height="378" version="1.1" width="145"
                                         xmlns="http://www.w3.org/2000/svg"
                                         xmlns:xlink="http://www.w3.org/1999/xlink"
                                         style="overflow: hidden; position: relative; top: -0.578125px;">
                                        <desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created
                                            with Raphaël 2.1.2
                                        </desc>
                                        <defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                            <marker id="raphael-marker-endblock33-obj36" markerHeight="3"
                                                    markerWidth="3" orient="auto" refX="1.5" refY="1.5"
                                                    style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <use href="#raphael-marker-block"
                                                     transform="rotate(180 1.5 1.5) scale(0.6,0.6)"
                                                     stroke-width="1.6667" fill="black" stroke="none"
                                                     style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use>
                                            </marker>
                                            <marker id="raphael-marker-endblock33-obj37" markerHeight="3"
                                                    markerWidth="3" orient="auto" refX="1.5" refY="1.5"
                                                    style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <use href="#raphael-marker-block"
                                                     transform="rotate(180 1.5 1.5) scale(0.6,0.6)"
                                                     stroke-width="1.6667" fill="black" stroke="none"
                                                     style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use>
                                            </marker>
                                            <marker id="raphael-marker-endblock33-obj38" markerHeight="3"
                                                    markerWidth="3" orient="auto" refX="1.5" refY="1.5"
                                                    style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <use href="#raphael-marker-block"
                                                     transform="rotate(180 1.5 1.5) scale(0.6,0.6)"
                                                     stroke-width="1.6667" fill="black" stroke="none"
                                                     style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use>
                                            </marker>
                                            <marker id="raphael-marker-endblock33-obj40" markerHeight="3"
                                                    markerWidth="3" orient="auto" refX="1.5" refY="1.5"
                                                    style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <use href="#raphael-marker-block"
                                                     transform="rotate(180 1.5 1.5) scale(0.6,0.6)"
                                                     stroke-width="1.6667" fill="black" stroke="none"
                                                     style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use>
                                            </marker>
                                        </defs>
                                        <rect x="0" y="0" width="52" height="40" rx="20" ry="20" fill="#ffffff"
                                              stroke="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"
                                              stroke-width="2" class="flowchart" id="st"
                                              transform="matrix(1,0,0,1,35,14)"></rect>
                                        <text x="10" y="20" text-anchor="start" font-family="sans-serif"
                                              font-size="14px" stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: sans-serif; font-size: 14px; font-weight: normal;"
                                              id="stt" class="flowchartt" font-weight="normal"
                                              transform="matrix(1,0,0,1,35,14)">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">开始
                                            </tspan>
                                        </text>
                                        <rect x="0" y="0" width="82" height="40" rx="0" ry="0" fill="#ffffff"
                                              stroke="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"
                                              stroke-width="2" class="flowchart" id="op"
                                              transform="matrix(1,0,0,1,20,118)"></rect>
                                        <text x="10" y="20" text-anchor="start" font-family="sans-serif"
                                              font-size="14px" stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: sans-serif; font-size: 14px; font-weight: normal;"
                                              id="opt" class="flowchartt" font-weight="normal"
                                              transform="matrix(1,0,0,1,20,118)">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">我的操作
                                            </tspan>
                                        </text>
                                        <path fill="#ffffff" stroke="#000000"
                                              d="M28.5,15L0,30L57,60L114,30L57,0L0,30" stroke-width="2"
                                              font-family="sans-serif" font-weight="normal" id="cond"
                                              class="flowchart"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"
                                              transform="matrix(1,0,0,1,4,212)"></path>
                                        <text x="33.5" y="30" text-anchor="start" font-family="sans-serif"
                                              font-size="14px" stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: sans-serif; font-size: 14px; font-weight: normal;"
                                              id="condt" class="flowchartt" font-weight="normal"
                                              transform="matrix(1,0,0,1,4,212)">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">确认？
                                            </tspan>
                                            <tspan dy="18" x="33.5"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></tspan>
                                        </text>
                                        <rect x="0" y="0" width="52" height="40" rx="20" ry="20" fill="#ffffff"
                                              stroke="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"
                                              stroke-width="2" class="flowchart" id="e"
                                              transform="matrix(1,0,0,1,35,336)"></rect>
                                        <text x="10" y="20" text-anchor="start" font-family="sans-serif"
                                              font-size="14px" stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: sans-serif; font-size: 14px; font-weight: normal;"
                                              id="et" class="flowchartt" font-weight="normal"
                                              transform="matrix(1,0,0,1,35,336)">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">结束
                                            </tspan>
                                        </text>
                                        <path fill="none" stroke="#000000"
                                              d="M61,54C61,54,61,102.345947265625,61,114.9989881515503"
                                              stroke-width="2"
                                              marker-end="url(#raphael-marker-endblock33-obj36)"
                                              font-family="sans-serif" font-weight="normal"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path>
                                        <path fill="none" stroke="#000000"
                                              d="M61,158C61,158,61,197.65409994125366,61,209.00043908460066"
                                              stroke-width="2"
                                              marker-end="url(#raphael-marker-endblock33-obj37)"
                                              font-family="sans-serif" font-weight="normal"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path>
                                        <path fill="none" stroke="#000000"
                                              d="M61,272C61,272,61,320.345947265625,61,332.9989881515503"
                                              stroke-width="2"
                                              marker-end="url(#raphael-marker-endblock33-obj38)"
                                              font-family="sans-serif" font-weight="normal"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path>
                                        <text x="66" y="282" text-anchor="start" font-family="sans-serif"
                                              font-size="14px" stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: sans-serif; font-size: 14px; font-weight: normal;"
                                              font-weight="normal">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">yes
                                            </tspan>
                                        </text>
                                        <path fill="none" stroke="#000000"
                                              d="M118,242C118,242,143,242,143,242C143,242,143,93,143,93C143,93,61,93,61,93C61,93,61,108.37344455718994,61,115.00924777425826"
                                              stroke-width="2"
                                              marker-end="url(#raphael-marker-endblock33-obj40)"
                                              font-family="sans-serif" font-weight="normal"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: sans-serif; font-weight: normal;"></path>
                                        <text x="123" y="232" text-anchor="start" font-family="sans-serif"
                                              font-size="14px" stroke="none" fill="#000000"
                                              style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: sans-serif; font-size: 14px; font-weight: normal;"
                                              font-weight="normal">
                                            <tspan dy="6"
                                                   style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">no
                                            </tspan>
                                        </text>
                                    </svg>
                                </div>

                                <ul>
                                    <li>关于 <strong>序列图</strong> 语法，参考 <a
                                            href="http://bramp.github.io/js-sequence-diagrams/">这儿</a>,
                                    </li>
                                    <li>关于 <strong>流程图</strong> 语法，参考 <a
                                            href="http://adrai.github.io/flowchart.../../statics/js/">这儿</a>.
                                    </li>
                                </ul>

                            </div>
                            <div id="wmd-preview-section-16"
                                 class="wmd-preview-section preview-content markdown_views">

                                <h2 id="离线写博客">离线写博客</h2>

                                <p>即使用户在没有网络的情况下，也可以通过本编辑器离线写博客（直接在曾经使用过的浏览器中输入<a
                                        href="http://write.blog.csdn.net/mdeditor">write.blog.csdn.net/mdeditor</a>即可。<strong>Markdown编辑器</strong>使用浏览器离线存储将内容保存在本地。
                                </p>

                                <p>
                                    用户写博客的过程中，内容实时保存在浏览器缓存中，在用户关闭浏览器或者其它异常情况下，内容不会丢失。用户再次打开浏览器时，会显示上次用户正在编辑的没有发表的内容。</p>

                                <p>博客发表后，本地缓存将被删除。　</p>

                                <p>用户可以选择 <i class="icon-disk"></i> 把正在写的博客保存到服务器草稿箱，即使换浏览器或者清除缓存，内容也不会丢失。</p>

                                <blockquote>
                                    <p>
                                        <strong>注意：</strong>虽然浏览器存储大部分时候都比较可靠，但为了您的数据安全，在联网后，<strong>请务必及时发表或者保存到服务器草稿箱</strong>。
                                    </p>
                                </blockquote>

                            </div>
                            <div id="wmd-preview-section-17"
                                 class="wmd-preview-section preview-content markdown_views">

                                <h2 id="浏览器兼容">浏览器兼容</h2>

                                <ol>
                                    <li>目前，本编辑器对Chrome浏览器支持最为完整。建议大家使用较新版本的Chrome。</li>
                                    <li>IE９以下不支持</li>
                                    <li>IE９，１０，１１存在以下问题 <br>
                                        <ol>
                                            <li>不支持离线功能</li>
                                            <li>IE9不支持文件导入导出</li>
                                            <li>IE10不支持拖拽文件导入</li>
                                        </ol>
                                    </li>
                                </ol>

                                <hr>

                            </div>
                            <div id="wmd-preview-section-footnotes" class="preview-content markdown_views">
                                <div class="footnotes">
                                    <hr>
                                    <ol>
                                        <li id="fn:footnote">这里是 <strong>脚注</strong> 的 <em>内容</em>. <a
                                                href="http://mp.blog.csdn.net/mdeditor#fnref:footnote"
                                                title="Return to article" class="reversefootnote">↩</a></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="extension-preview-buttons animate closed"
                 style="user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); touch-action: pan-y; transform: translate(79px, -6px);">
                <div class="btn-group drag-me dropup" title="这里可以拖拽">
                    <i class="icon-yincang"></i>
                </div>
                <div class="btn-group dropup"></div>
                <div class="btn-group dropup">
                    <button class="btn btn-success dropdown-toggle" title="标题列表" data-toggle="dropdown">
                        <i class="icon-mulu"></i>
                    </button>
                    <div class="dropdown-menu pull-right">
                        <h4>标题列表</h4>
                        <hr>
                        <div class="table-of-contents">
                            <div class="toc">
                                <ul>
                                    <li>
                                        <a href="http://mp.blog.csdn.net/mdeditor#%E6%AC%A2%E8%BF%8E%E4%BD%BF%E7%94%A8markdown%E7%BC%96%E8%BE%91%E5%99%A8%E5%86%99%E5%8D%9A%E5%AE%A2">欢迎使用Markdown编辑器写博客</a>
                                        <ul>
                                            <li>
                                                <a href="http://mp.blog.csdn.net/mdeditor#%E5%BF%AB%E6%8D%B7%E9%94%AE">快捷键</a>
                                            </li>
                                            <li>
                                                <a href="http://mp.blog.csdn.net/mdeditor#markdown%E5%8F%8A%E6%89%A9%E5%B1%95">Markdown及扩展</a>
                                                <ul>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#%E8%A1%A8%E6%A0%BC">表格</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#%E5%AE%9A%E4%B9%89%E5%88%97%E8%A1%A8">定义列表</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#%E4%BB%A3%E7%A0%81%E5%9D%97">代码块</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#%E8%84%9A%E6%B3%A8">脚注</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#%E7%9B%AE%E5%BD%95">目录</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#%E6%95%B0%E5%AD%A6%E5%85%AC%E5%BC%8F">数学公式</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://mp.blog.csdn.net/mdeditor#uml-%E5%9B%BE">UML
                                                            图:</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="http://mp.blog.csdn.net/mdeditor#%E7%A6%BB%E7%BA%BF%E5%86%99%E5%8D%9A%E5%AE%A2">离线写博客</a>
                                            </li>
                                            <li>
                                                <a href="http://mp.blog.csdn.net/mdeditor#%E6%B5%8F%E8%A7%88%E5%99%A8%E5%85%BC%E5%AE%B9">浏览器兼容</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
                <div class="btn-group dropup">
                    <button class="btn btn-success dropdown-toggle stat-button" title="统计信息"
                            data-toggle="dropdown">
                        <i class="icon-zishu"></i>
                        <span class="value">1598</span>
                    </button>
                    <div class="dropdown-menu pull-right stat-button-dropdown">
                        <div class="stat">
                            <div>
                                字数:
                                <span class="value1">1598</span>
                            </div>
                            <!--<div>-->
                            <!--词（单词）: <span class="value2"></span>-->
                            <!--</div>-->
                            <div>
                                段落:
                                <span class="value3">115</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="find-replace" style="display: none;">
                <button type="button" class="close button-find-replace-dismiss">×</button>
                <div class="form-inline">
                    <div class="form-group">
                        <label for="input-find-replace-search-for">搜索</label>
                        <input class="form-control" id="input-find-replace-search-for" placeholder="关键词">
                    </div>
                    <div class="form-group">
                        <label for="input-find-replace-replace-with">替换为</label>
                        <input class="form-control" id="input-find-replace-replace-with" placeholder="替换文本">
                    </div>
                </div>
                <div class="pull-right">
                    <div class="help-block text-right">
                        <span class="found-counter">0</span> 处
                    </div>
                    <div>
                        <button type="button" class="btn btn-sm btn-primary search-button">查找</button>
                        <button type="button" class="btn btn-sm btn-warning replace-button">替换</button>
                        <button type="button" class="btn btn-sm btn-danger replace-all-button">全部替换</button>
                    </div>
                </div>
                <div class="pull-left">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" class="checkbox-case-sensitive"> 区分大小写
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" class="checkbox-regexp"> 正则表达式
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div id="wmd-button-bar" class="hide">
            <ul id="wmd-button-row" class="wmd-button-row">
                <li class="wmd-spacer wmd-spacer1 btn btn-success" id="wmd-spacer1" style="left: 0px;"></li>
                <li class="wmd-spacer wmd-spacer2 btn btn-success" id="wmd-spacer2" style="left: 0px;"></li>
                <li class="wmd-spacer wmd-spacer3 btn btn-success" id="wmd-spacer3" style="left: 0px;"></li>
            </ul>
        </div>
        <div class="document-panel">
            <div class="panel-content">
                <div class="list-group document-list">
                    <ul class="nav">
                        <li><a href="http://mp.blog.csdn.net/mdeditor#" class="list-group-item file active"
                               data-file-index="file.RYJeVEvlvqmBQBDANkSAi84r"> <i
                                class="icon-provider-csdnblog"></i>欢迎使用CSDN-markdown编辑器</a></li>
                    </ul>
                </div>
                <div class="list-group document-list-filtered hide">
                    <ul class="nav">
                        <li><a href="http://mp.blog.csdn.net/mdeditor#" class="list-group-item file active"
                               data-file-index="file.RYJeVEvlvqmBQBDANkSAi84r"> <i
                                class="icon-provider-csdnblog"></i>欢迎使用CSDN-markdown编辑器</a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        <div class="modal fade modal-insert-link">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header clearfix">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">添加链接</h4>
                    </div>
                    <div class="modal-body">
                        <p class="remark">链接书写格式为：链接地址 + 空格 + "链接提示"。</p>
                        <div class="input-group">
					<span class="input-group-addon">
						<i class="icon-link"></i>
					</span>
                            <input id="input-insert-link" type="text" class="col-sm-5 form-control"
                                   placeholder="http://example.com/ &quot;optional title&quot;">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-default" data-dismiss="modal">取消</a>
                        <a class="btn btn-danger action-insert-link" data-dismiss="modal">确定</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade modal-insert-image">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header clearfix">
                        <h4 class="modal-title pull-left">插入图片</h4>
                        <ul class="nav nav-tabs pull-right" role="tablist">
                            <li role="presentation" class="active">
                                <a href="http://mp.blog.csdn.net/mdeditor#img_upload" role="tab"
                                   data-toggle="tab">上传图片</a>
                            </li>
                            <li role="presentation">
                                <a href="http://mp.blog.csdn.net/mdeditor#img_online" role="tab"
                                   data-toggle="tab">URL上传</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="img_upload">
                            <div class="modal-body">
                                <label for="fileImgUpload" class="btn-outline-danger btn-file-upload">
                                    上传图片
                                    <input type="file" name="" id="fileImgUpload"
                                           accept="image/png,image/gif,image/jpeg">
                                </label>
                            </div>
                            <div class="modal-footer">
                                <a class="btn-smail c-blue pull-left">
                                    <i class="icon-help"></i> 支持.jpg .gif .png .bmp .jpeg，大小不超过5M</a>
                                <a class="btn-smail c-red btn-cancel" data-dismiss="modal">取消</a>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="img_online">
                            <div class="modal-body">
                                <p class="remark">图片书写格式为：图片地址 + 空格 + "图片提示"。</p>

                                <div class="input-group">
							<span class="input-group-addon">
								<i class="icon-link"></i>
							</span>
                                    <input id="input-insert-image" type="text" class="col-sm-5 form-control"
                                           placeholder="http://example.com/image.jpg &quot;optional title&quot;">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a class="btn-smail c-blue action-insert-image mr24" data-dismiss="modal">确认插入</a>
                                <a class="btn-smail c-red btn-cancel" data-dismiss="modal">取消</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade modal-export-doc">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">导出文档</h4>
                    </div>
                    <div class="modal-body">
                        <ul class="nav">
                            <li>
                                <a class="action-download-md">
                                    <i class="icon-img icon-file-markdown"></i>

                                    <p>Markdown</p>
                                </a>
                            </li>
                            <li>
                                <a class="action-download-html">
                                    <i class="icon-img icon-file-html"></i>

                                    <p>HTML</p>
                                </a>
                            </li>
                            <li>
                                <a class="action-download-template">
                                    <i class="icon-img icon-file-html-t"></i>
                                    <p>带模板HTML</p>
                                </a>
                            </li>
                            <!--<li><a class="action-download-pdf"><i class="icon-file-pdf"></i> <p>PDF文档</p></a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal-helps hide">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" onclick="$()">×</button>
                        <h4 class="modal-title">Markdown语法帮助</h4>
                    </div>
                    <div class="modal-body">
                        <ol class="help-menu">
                            <li class="active">
                                <a>标题</a>

                                <div>
                                    <h4>在文字写书写不同数量的#可以完成不同的标题，如下：</h4>

                                    <p># 一级标题
                                        <br> ## 二级标题
                                        <br> ### 三级标题
                                        <br> #### 四级标题
                                        <br> ##### 五级标题
                                        <br> ###### 六级标题</p>
                                    <h4>等号及减号也可以进行标题的书写，不过只能书写二级标题，并且需要写在文字的下面，减号及等号的数量不会影响标题的基数，如下：</h4>

                                    <p>二级标题
                                        <br> =========
                                    </p>

                                    <p>二级标题
                                        <br> ---------
                                    </p>
                                </div>
                            </li>
                            <li>
                                <a>列表</a>

                                <div>
                                    <h4>无序列表的使用，在符号“-”后加空格使用。如下：</h4>

                                    <p> - 无序列表1
                                        <br> - 无序列表2
                                        <br> - 无序列表3</p>
                                    <h4>如果要控制列表的层级，则需要在符号“-”前使用空格。如下：</h4>

                                    <p> - 无序列表1
                                        <br> - 无序列表2
                                        <br> &nbsp;&nbsp;- 无序列表2.1
                                        <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 列表内容
                                        <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 列表内容</p>

                                    <p>&nbsp;</p>
                                    <h4>有序列表的使用，在数字及符号“.”后加空格几个，如下：</h4>

                                    <p> 1. 有序列表1
                                        <br> 2. 有序列表2
                                        <br> 3. 有序列表3
                                        <br>
                                    </p>
                                    <h4>有序列表如果要区分层级，也可以在数字前加空格。</h4>
                                </div>
                            </li>
                            <li>
                                <a>引用</a>

                                <div>
                                    <h4>引用的格式是使用符号“&gt;”后面书写文字，及可以使用引用。如下：</h4>

                                    <p> &gt;这个是引用
                                        <br> &gt; 是不是和电子邮件中的
                                        <br> &gt; 引用格式很像</p>
                                </div>
                            </li>
                            <li>
                                <a>粗体与斜体</a>

                                <div>
                                    <h4>
                                        粗体的使用是在需要加粗的文字前后各加两个“*”，而斜体的使用则是在需要斜体的文字前后各加一个“*”，如果要使用粗体和斜体，那么就是在需要操作的文字前后各加三个“*”。如下：</h4>

                                    <p> **这个是粗体**
                                        <br> *这个是斜体*
                                        <br> ***这个是粗体加斜体***
                                    </p>
                                </div>
                            </li>
                            <li>
                                <a>链接与图片</a>

                                <div>
                                    <h4>在文中直接加链接，中括号中是需要添加链接的文字，圆括号中是需要添加的链接，如下：</h4>

                                    <p> [link text](http://example.com/ "optional title")</p>
                                    <h4>在引用中加链接，第一个中括号添加需要添加的文字，第二个中括号中是引用链接的id，之后在引用中，使用id加链接：如下：</h4>

                                    <p> [link text][id]
                                        <br> [id]: http://example.com/ "optional title here"</p>
                                    <h4>在文中直接引用链接，直接使用尖括号，把链接加入到尖括号中就可以实现，如下：</h4>

                                    <p>&lt;http://example.com/&gt; or &lt;address@example.com&gt;
                                        <br>
                                    </p>
                                    <h4>插入互联网上图片，格式如下：</h4>

                                    <p>![这里写图片描述](http://img3.douban.com/mpic/s1108264.jpg)
                                        <br> ![这里写图片描述][jane-eyre-douban]
                                        <br> [jane-eyre-douban]: http://img3.douban.com/mpic/s1108264.jpg</p>
                                </div>
                            </li>
                            <li>
                                <a>代码块</a>

                                <div>
                                    <h4>用TAB键起始的段落，会被认为是代码块，如下：</h4>

                                    <p> &nbsp;&nbsp;&nbsp;&nbsp;&lt;php&gt;
                                        <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo “hello world";
                                        <br> &nbsp;&nbsp;&nbsp;&nbsp;&lt;/php&gt;
                                    </p>
                                    <h4>如果在一个行内需要引用代码，只要用反引号`引起来就好，如下：</h4>

                                    <p> Use the
                                        <code>`printf()` </code>function.</p>
                                </div>
                            </li>
                            <li>
                                <a>分割线与删除线</a>

                                <div>
                                    <h4>可以在一行中用三个以上的星号、减号、底线来建立一个分隔线，同时需要在分隔线的上面空一行。如下：</h4>

                                    <p> ---
                                        <br> ****
                                        <br> ___
                                    </p>
                                    <h4>删除线的使用，在需要删除的文字前后各使用两个符合“~”，如下</h4>

                                    <p> ~~Mistaken text.~~</p>
                                </div>
                            </li>
                            <li>
                                <a>代码块与语法高亮</a>

                                <div>
                                    <h4>在需要高亮的代码块的前一行及后一行使用三个反引号“`”，同时第一行反引号后面表面代码块所使用的语言，如下：</h4>

                                    <p>```ruby
                                        <br> require 'redcarpet'
                                        <br> markdown = Redcarpet.new("Hello World!")
                                        <br> puts markdown.to_html
                                        <br> ```
                                    </p>
                                </div>
                            </li>
                            <li>
                                <a>表格</a>

                                <div>
                                    <h4>可以使用冒号来定义表格的对齐方式，如下：</h4>

                                    <p> | Tables | Are | Cool |
                                        <br> | ------------- |:-------------:| -----:|
                                        <br> | col 3 is | right-aligned | $1600 |
                                        <br> | col 2 is | centered | $12 |
                                        <br> | zebra stripes | are neat | $1 |
                                        <br>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <a>LaTex数学公式</a>

                                <div>
                                    <h4>使用MathJax渲染*LaTex* 数学公式，详见[
                                        <a href="http://math.stackexchange.com/"
                                           target="_blank">math.stackexchange.com</a>]
                                    </h4>
                                    <h4>行内公式，数学公式为：</h4>

                                    <p>$\Gamma(n) = (n-1)!\quad\forall n\in\mathbb N$
                                        <br>
                                    </p>
                                    <h4>块级公式：</h4>

                                    <p>$$ x = \dfrac{-b \pm \sqrt{b^2 - 4ac}}{2a} $$</p>

                                    <p>更多LaTex语法请参考 [
                                        <a href="http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference"
                                           target="_blank">这儿</a>]。</p>

                                </div>
                            </li>
                            <li>
                                <a>UML 图</a>

                                <div>
                                    <h4>可以渲染序列图：</h4>

                                    <p>```sequence
                                        <br> 张三-&gt;李四: 嘿，小四儿, 写博客了没?
                                        <br> Note right of 李四: 李四愣了一下，说：
                                        <br> 李四--&gt;张三: 忙得吐血，哪有时间写。
                                        <br> ```
                                    </p>
                                    <h4>或者流程图：</h4>

                                    <p>```flow
                                        <br> st=&gt;start: 开始
                                        <br> e=&gt;end: 结束
                                        <br> op=&gt;operation: 我的操作
                                        <br> cond=&gt;condition: 确认？</p>

                                    <p>st-&gt;op-&gt;cond
                                        <br> cond(yes)-&gt;e
                                        <br> cond(no)-&gt;op
                                        <br> ```
                                    </p>

                                    <p>- 关于 **序列图** 语法，参考 [
                                        <a href="http://bramp.github.io/js-sequence-diagrams/"
                                           target="_blank">这儿</a>]
                                        <br> - 关于 **流程图** 语法，参考 [
                                        <a href="http://adrai.github.io/flowchart.../../statics/js/"
                                           target="_blank">这儿</a>]
                                        <br>
                                    </p>
                                </div>
                            </li>
                        </ol>

                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade modal-alert">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer text-center">
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade modal-import-url">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">从线上导入</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-danger">
                            <p>
                                注意：当前操作只要成功导入在线.md地址就会冲掉当前的文章，请确定是否保存或者发表后再进行导入操作。</p>
                            <p>PS：IE11以下版本不支持导入功能。</p>
                        </div>
                        <p>请输入在线的markdown文件地址：</p>

                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-import-url">URL</label>

                                <div class="col-sm-9">
                                    <input type="text" id="input-import-url"
                                           placeholder="http://code.csdn.net/test.md" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-default" data-dismiss="modal">取消</a>
                        <a data-dismiss="modal" class="btn btn-danger action-import-url">确定</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade modal-import-harddrive-markdown">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">从本机导入</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-danger">
                            <p>注意：当前操作只要成功选择或者拖入.md文件就会冲掉当前的文章，请确定是否保存或者发表后再进行导入操作。</p>
                            <p>PS：IE11以下版本不支持导入功能。</p>
                        </div>
                        <p style="font-size: 12px;">请选择你要导入的.md文档或者将.md文档拖到这里</p>
                        <p id="dropzone-import-harddrive-markdown" class="drop-zone">
                            <input type="file" id="input-file-import-harddrive-markdown" multiple=""
                                   class="form-control">
                        </p>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-danger" data-dismiss="modal">关闭</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade modal-non-unique">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">不好意思...</h4>
                    </div>
                    <div class="modal-body">
                        <p>Markdown编辑器已经停止，因为另一个实例中相同的浏览器中运行。</p>
                        <blockquote>
                            <p>如果你想重新打开Markdown编辑器，请点击 “重新加载”</p>
                        </blockquote>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:window.location.reload();" class="btn btn-danger">重新加载</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="fullOptBox">
            <div class="d-flex flex-row">
                <button class="bg-red btn-fabu disabled-buttons" title="发布" onclick="submit()">
                    <i class="icon-chart-bar"></i>
                    <span class="txt">发布</span>
                </button>
                <button class="bg-red btn-baocun btn-blog-save disabled-buttons" title="保存">
                    <i class="icon-disk"></i>
                    <span class="txt">保存</span>
                </button>
                <a class="bg-gray btn-shanchu disabled-buttons" title="返回" href="http://mp.blog.csdn.net/">
                    <i class="icon-fanhui"></i>
                    <span class="txt">返回</span>
                </a>
            </div>
        </div>
        </div>
        <div class="moreDiv">
            <div class="pos-box">
                <div class="form-group row form-control-sm title">发布博客
                    <a class="btn-close">
                        <i class="icon-guanbi"></i>
                    </a>
                </div>
                <div class="form-group row form-control-sm">
                    <label class="labTitle col-form-label">文章标签：</label>
                    <div class="txt-box">
                        <div class="tag-box d-flex flex-row" id="tagBox">
                            <input name="hidTags" id="hidTags" value="" type="hidden">
                            <button class="btn-add-tag" id="addTag">
                                <i class="icon-tianjia mr8" aria-hidden="true"></i>添加标签
                            </button>
                        </div>
                        <p class="mt8">
                            <span class="ipt-remark online-txt">最多添加5个标签</span>
                            <span class="ipt-remark unonline-txt">离线中，暂不可用</span>
                        </p>
                    </div>
                </div>
                <div class="form-group row form-control-sm">
                    <label class="labTitle col-form-label">个人分类：</label>
                    <div class="txt-box">
                        <div class="tag-box d-flex flex-row" id="categorieBox">
                            <input name="hidTags" id="hidCategories" value="" type="hidden">
                            <button class="btn-add-tag" id="addCategorie">
                                <i class="icon-tianjia mr8" aria-hidden="true"></i>添加新分类
                            </button>
                        </div>
                        <p class="mt8">
                            <span class="ipt-remark online-txt"></span>
                            <span class="ipt-remark unonline-txt">离线中，暂不可用</span>
                        </p>
                        <div class="categorie-list">
                        </div>
                    </div>
                </div>
                <div class="form-group row form-control-sm">
                    <label class="labTitle col-form-label">博客分类：</label>
                    <div class="txt-box">
                        <select class="droBlogType" id="radChl" name="radChl">
                            <option value="0">选择分类</option>
                            <option value="28">人工智能</option>
                            <option value="1">移动开发</option>
                            <option value="29">物联网</option>
                            <option value="15">架构</option>
                            <option value="2">云计算/大数据</option>
                            <option value="30">游戏开发</option>
                            <option value="12">运维</option>
                            <option value="6">数据库</option>
                            <option value="14">前端</option>
                            <option value="31">后端</option>
                            <option value="16">编程语言</option>
                            <option value="3">研发管理</option>
                            <option value="32">安全</option>
                            <option value="33">程序人生</option>
                            <option value="34">区块链</option>
                            <option value="35">音视频开发</option>
                            <option value="36">资讯</option>
                            <option value="37">计算机理论与基础</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row form-control-sm">
                    <label class="labTitle col-form-label">私密文章：</label>
                    <div class="switch-box pt6">
                        <input name="public" value="private" class="form-control form-control-sm chk-switch"
                               id="chkIsHasNotify" type="checkbox">
                        <label for="chkIsHasNotify" class="lab-switch"></label>
                        <span class="ipt-remark chk-true online-txt">已设置成私密</span>
                        <span class="ipt-remark unonline-txt">离线中，暂不可用</span>
                    </div>
                </div>
                <div class="form-group opt-box row pull-right">
                    <input class="btn-smail c-blue btn-publish btn-blog-save" value="发布博客" title="发布博客" type="button">
                    <input class="btn-smail c-blue btn-baocun btn-blog-save" value="保存草稿" title="保存草稿" type="button">
                    <input class="btn-smail c-red btn-close" value="取消" title="取消" type="button">
                </div>
            </div>
        </div>
        <div class="mask" style="display: none;"></div>
        <div class="alert-container" id="switchHtmlMode">
            <div class="pos-box">
                <a class="btn-close">
                    <i class="xheIcon icon-guanbi"></i>
                </a>
                <div class="title title-warning">提示</div>
                <div class="content">如果选择切换编辑器，您将丢失在此编写的文章内容！建议保存到草稿箱后再进行切换。</div>
                <div class="opt-box text-right">
                    <a class="btn-smail c-blue" href="http://mp.blog.csdn.net/postedit" target="_self">确认切换</a>
                    <button class="btn-smail c-red btn-cancel">放弃</button>
                </div>
            </div>
        </div>
        <div class="alert-container" id="createNewMode">
            <div class="pos-box">
                <a class="btn-close">
                    <i class="xheIcon icon-guanbi"></i>
                </a>
                <div class="title title-warning">提示</div>
                <div class="content">创建新的文章您将丢失当前编辑内容，可选择保存草稿存储当前编辑内容。</div>
                <div class="opt-box text-right">
                    <button class="btn-smail c-blue btn-caogao btn-blog-save">保存为草稿</button>
                    <button class="btn-smail c-red btn-new">写新文章</button>
                </div>
            </div>
        </div>
        <div class="alert-container finished-box" id="alertSuccess">
            <div class="pos-box">
                <div class="text-center title"></div>
                <div class="text-center status-box">
                    <i class="icon-success-font c-green"></i>发布成功
                </div>
                <p class="text-center zhaiyao">文章摘要由系统生成</p>
                <div class="opt-box text-center">
                    <button class="btn-outline-danger btn-new mr24">写新文章</button>
                    <a class="btn-outline-danger tolist mr24" href="http://mp.blog.csdn.net/postlist">管理博文</a>
                    <a class="btn-outline-danger toarticle">查看文章</a>
                </div>
            </div>
        </div>
        <div class="notice-box">
            <i class="mr8 notice-icon icon-success"></i>
            <div class="pacman hide">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
            <span class="notice">
                文章发布成功
            </span>
        </div>
    </main>


    <div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;"
                                                                        type="text"
                                                                        value="" id="focus_retriever" readonly="true">
    </div>
    <i title="Raphaël Colour Picker" style="display: none; color: white;"></i>
    <div style="position: absolute; width: 0px; height: 0px; overflow: hidden; padding: 0px; border: 0px; margin: 0px;">
        <div id="MathJax_Font_Test"
             style="position: absolute; visibility: hidden; top: 0px; left: 0px; width: auto; padding: 0px; border: 0px; margin: 0px; white-space: nowrap; text-align: left; text-indent: 0px; text-transform: none; line-height: normal; letter-spacing: normal; word-spacing: normal; font-size: 40px; font-weight: normal; font-style: normal; font-family: MathJax_AMS, sans-serif;"></div>
    </div>
</form>
</body>
<input style="width:1px;height:1px;border:none;margin:0;padding:0;" tabindex="-1"></html>
