<%--
  Created by IntelliJ IDEA.
  User: kgc
  Date: 2018/3/13
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <title>GitChat</title>
    <meta name="description" content="GitChat 是一款基于微信平台的知识分享产品。通过这款产品我们希望改变IT知识的学习方式。">
    <meta name="robots" content="index,follow">
    <meta name="keywords" content="GitChat,机器学习,大数据,程序员,用户体验,软件开发,知识付费,技术分享">
    <link href="../../statics/css/bundle1.css" rel="stylesheet">
    <script src="../../statics/js/gitchat/js1.js"></script>
    <link rel="icon" type="image/png" href="http://images.gitbook.cn/Logo16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="http://images.gitbook.cn/Logo32.png" sizes="32x32">
</head>
<link href="../../statics/css/bundle2.css" rel="stylesheet">
<link rel="stylesheet" href="../../statics/css/mazi.css">
<script src="../../statics/js/gitchat/scrollmagic.min.js"></script>
<style>#loader {
    height: 60px;
    overflow: hidden;
    line-height: 60px;
    text-align: center;
}

#loader.active {
    height: 60px;
    background-color: #fff;
}

#loader img {
    margin-top: 5px;
    width: 40px;
    vertical-align: text-bottom;
}

.recommedAuthor {
    display: inline-block;
    margin: 0 16px 18px 0;
    min-height: 32px;
    background-color: #f7f7f7;
    border: 1px solid #dcdcdc;
    border-radius: 4px;
    vertical-align: top;
    overflow: hidden;
}

.moreHotAuthor {
    display: inline-block;
    margin-top: 7px;
    font-size: 14px;
    color: #787878;
}

.book {
    flex: 1;
    position: relative;
    width: 205px;
    min-height: 220px;
    margin: 15px 0 10px 0;
    padding: 7px 7px 15px;
    float: left;
    border: 1px solid #f0f0f0;
    border-radius: 4px;
    transition: .2s ease;
    -webkit-transition: .2s ease;
}

.cover {
    border-radius: 3px;
    overflow: hidden;
}

.name {
    margin-top: 15px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}

.book .cover img {
    width: 100%;
    vertical-align: middle;
}

.author {
    height: 19px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-top: 5px;
    font-size: 14px;
    color: #999;
}

.price {
    height: 19px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-top: 5px;
    font-size: 14px;
    color: #999;
    float: right;
}

.intros {
    height: 19px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-top: 5px;
    font-size: 14px;
    color: #999;
}

.syncColumn {

    -webkit-animation: spin 1s linear infinite;
    -moz-animation: spin 1s linear infinite;
    animation: spin 1s linear infinite;
}

@-webkit-keyframes spin {
    from {
        -webkit-transform: rotateZ(0deg);
    }
    to {
        -webkit-transform: rotateZ(360deg);
    }
}

@keyframes spin {
    from {
        transform: rotateZ(0deg);
    }
    to {
        transform: rotateZ(360deg);
    }
}</style>
<body>
<div style="height:70px;position:fixed;top:0px;left:0px;right:0px;padding-top: 20px;        padding-bottom:10px;background-color: #ffffff;border-bottom: solid 1px #f0f0f0;z-index:1"
     class="hidden-xs">
    <div style="display: inline-block;float:left;margin-top: -6px;margin-left: 30px;"><a href="javascript:void(0)"><img
            style="width: 50px;vertical-align: top" src="../../statics/picture/gitchat/logo.png"></a></div>
    <div style="display: inline-block;float: left;margin-top: 37px;max-width: 800px;">
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                border-bottom: 4px solid #646464;text-align: center;font-size: 16px;">
            <a href="javascript:void(0)" style="color:#444444">首页</a></div>
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                        text-align: center;font-size: 16px;color: #646464">
            <a href="javascript:void(0)">热门 Chat</a></div>
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                        text-align: center;font-size: 16px;color: #646464">
            <a href="javascript:void(0)">达人课</a></div>
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                        text-align: center;font-size: 16px;color: #646464">
            <a href="javascript:void(0)">专 题</a></div>
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                text-align: center;font-size: 16px;">
            <a href="javascript:void(0)">极客书</a></div>
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                text-align: center;font-size: 16px;">
            <a href="javascript:void(0)">人才</a></div>
        <div style="display: inline-block;float: left;margin-left: 20px;width: 80px;height: 42px;margin-top: -29px;                        text-align: center;font-size: 16px;">
            <a href="javascript:void(0)">会 员</a></div>
        <!--div#aboutusNav(style='display: inline-block;float: left;margin-left: 20px;width: 90px;height: 42px;margin-top: -29px;\-->
        <!--        text-align: center;font-size: 16px;color: #646464')-->
        <!--        a#aboutusLink(href='/aboutus') 关于我们-->
        <!--div#contactUsNav(style='display: inline-block;float: left;margin-left: 20px;width: 90px;height: 42px;margin-top: -29px;\-->
        <!--                text-align: center;font-size: 16px;color: #646464')-->
        <!--    a#contactUsLink(data-toggle="modal" href="#contactUsModal") 联系客服--></div>
    <div style="display: inline-block;float: right;">
        <div style="width:180px;height:35px;border: 1px solid #d1d1d1;-webkit-border-radius: 20px;            background-color: #ffffff;margin-right: 10px;display: inline-block;">
            <input id="rightTopSearchInput"
                   style="margin:3px 0 0 10px;width:125px;border: 0px;font-size: 14px;line-height: 25px;                padding-left:5px;height: 25px;display: inline-block;float: left;"
                   type="search" placeholder="搜索文章"><a href="#" onclick="searchArticle(); return false;"
                                                       style="float: right;margin:4px 3px 0 0">
            <div style="width:25px;height:25px;border:1px solid #ff9100;border-radius: 50%;font-size:10px;line-height:22px;text-align:center;">
                GO
            </div>
        </a></div>
        <a id="loginBtn2"
           style="display:inline-block;float:right;height:35px;color: #ff9100;font-size:14px;                border: 1px solid #ff9100;-webkit-border-radius: 25px;margin-right: 10px;"
           href="javascript:void(0)" role="button" class="btn btn-default">登录 / 注册</a><a id="writeBtn2"
                                                                                         style="display:inline-block;height:35px;color: #5f6f81;float:right;font-size:14px;                    border: 1px solid #d1d1d1;-webkit-border-radius: 25px;margin-right: 10px;"
                                                                                         href="javascript:void(0) return false;"
                                                                                         role="button"
                                                                                         class="hidden-xs btn btn-default">写作</a>
        <!--if !isLogin-->
        <!--    a#newChatBtn2.hidden-xs.btn.btn-default(style='display:inline-block;height:35px;color: #5f6f81;float:right;font-size:14px;\-->
        <!--                                        border: 1px solid #d1d1d1;-webkit-border-radius: 25px;margin-right: 10px;', href='javascript:void(0) return false;', role='button')-->
        <!--        | 发布Chat--><!--else--><a
            style="display:inline-block;height:35px;color: #5f6f81;float:right;font-size:14px;                                                border: 1px solid #d1d1d1;-webkit-border-radius: 25px;margin-right: 10px;"
            href="javascript:void(0)" role="button" class="hidden-xs btn btn-default">发布Chat</a></div>
</div>
<div id="thumbClickMenuDIV"
     style="position: fixed;top: 70px;right: 10px;font-size: 14pt;width: 160px;display: none;z-index: 1;">
    <div style="border:1px solid #f0f0f0">
        <ul style="width: 100%;padding: 5px 15px;line-height: 35px;margin: 2px 0 0;font-size: 14px;text-align: center;list-style: none;background-color: #fff">
            <li style="border-bottom: 1px dashed #cccccc"><a style="text-decoration: none;color:#555555;"
                                                             href="javascript:void(0);">已 购</a></li>
            <li style="border-bottom: 1px dashed #cccccc"><a style="text-decoration: none;color:#555555;"
                                                             href="javascript:void(0);">我的会员</a></li>
            <li style="border-bottom: 1px dashed #cccccc" class="hidden-md hidden-lg hidden-sm"><a
                    style="text-decoration: none;color:#555555;" href="javascript:myArtAlert()">我的创作</a></li>
            <li style="border-bottom: 1px dashed #cccccc" class="hidden-xs"><a
                    style="text-decoration: none;color:#555555;" href="javascript:void(0);">我的创作</a></li>
            <li style="border-bottom: 1px dashed #cccccc"><a style="text-decoration: none;color:#555555;"
                                                             onclick="configFun()"
                                                             href="javascript:void(0);"
                                                             data-toggle="modal" data-target="#authorModal">个人设置</a>
            </li>
            <li><a style="text-decoration: none;color:#cccccc;" href="javascript:void(0);">退出登录</a></li>
        </ul>
    </div>
    <s><i></i></s></div>
<script>// grab an element
var myElement = document.getElementById("header");
// construct an instance of Headroom, passing the element
var headroom = new Headroom(myElement);
// initialise
headroom.init();</script>
<div style="width:100%;max-width:1060px;margin:0 auto;overflow:hidden;">
    <div style="width:100%;max-width: 700px;display: inline-block;float: left;">
        <div style="border:0;margin-top:69px;padding:0 25px 0 25px;" class="mazi-activity-container item-container">
            <div style="margin-top:20px;"></div>
            <style>.carousel-indicators li {
                position: relative;
                -webkit-box-flex: 1;
                -webkit-flex: 1 0 auto;
                -ms-flex: 1 0 auto;
                flex: 1 0 auto;
                width: 12px;
                height: 2px;
                text-indent: -999px;
                cursor: pointer;
                background-color: rgba(255, 255, 255, .5);
                border: 0;
                border-radius: 0;
                margin: 0 2px 3px 2px;
            }

            .carousel-indicators .active {
                background-color: #fff;
                width: 12px;
                height: 2px;
                border: 0;
                border-radius: 0;
                margin: 0 2px 3px 2px;
            }

            .carousel-control-prev,
            .carousel-control-next {
                position: absolute;
                top: 0;
                bottom: 0;
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-align: center;
                -webkit-align-items: center;
                -ms-flex-align: center;
                align-items: center;
                -webkit-box-pack: center;
                -webkit-justify-content: center;
                -ms-flex-pack: center;
                justify-content: center;
                width: 15%;
                color: #fff;
                text-align: center;
                opacity: 0.5;
            }

            .carousel-control-prev:focus, .carousel-control-prev:hover,
            .carousel-control-next:focus,
            .carousel-control-next:hover {
                color: #fff;
                text-decoration: none;
                outline: 0;
                opacity: .9;
            }

            .carousel-control-prev {
                left: -25px;
            }

            .carousel-control-next {
                right: -30px;
            }

            .carousel-control-prev-icon,
            .carousel-control-next-icon {
                display: inline-block;
                width: 20px;
                height: 20px;
                background: transparent no-repeat center center;
                -webkit-background-size: 100% 100%;
                background-size: 100% 100%;
            }

            .carousel-control-prev-icon {
                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M4 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E");
            }

            .carousel-control-next-icon {
                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M1.5 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E");
            }</style>
            <div id="carouselBannerIndicators" data-ride="carousel" class="carousel slide">
                <ol style="bottom: -13px;" class="carousel-indicators">
                    <li data-target="#carouselBannerIndicators" data-slide-to='0' class="active"></li>
                    <li data-target="#carouselBannerIndicators" data-slide-to='1'></li>
                    <li data-target="#carouselBannerIndicators" data-slide-to='2'></li>
                    <li data-target="#carouselBannerIndicators" data-slide-to='3'></li>
                    <li data-target="#carouselBannerIndicators" data-slide-to='4'></li>
                </ol>
                <div role="listbox" style="border-radius: 4px;" class="carousel-inner">
                   <div class="item active"><img style="width:100%" src="../../statics/picture/gitchat/475d2c24a7414ed994255268da9c1ddb.gif"
                                                  alt="" sid="5aa1d2b4f622f7137a21f16b" ltype=""
                                                  aid=""
                                                  class="d-block img-fluid"></div>
                    <div class="item"><img style="width:100%" src="../../statics/picture/gitchat/2322701fdd994c809de8399744d06e0f.gif" alt=""
                                           sid="5a9cc6efa80c047e76c24416" ltype="" aid=""
                                           class="d-block img-fluid"></div>
                    <div class="item"><img style="width:100%" src="../../statics/picture/gitchat/e207b4392c904250bcd70d5b81660899.gif" alt=""
                                           sid="5a9debe38c9abf11854aa3f0" ltype=""
                                           aid=""
                                           class="d-block img-fluid"></div>
                    <div class="item"><img style="width:100%" src="../../statics/picture/gitchat/9f3c4f2bf96440318d5d0891b670181f.gif" alt=""
                                           sid="5a94ab0d7a0cbc5fa76ce479" ltype=""
                                           aid=""
                                           class="d-block img-fluid"></div>
                    <div class="item"><img style="width:100%" src="../../statics/picture/gitchat/c23ddd46d0644e46bec3a907aeb85946.gif" alt=""
                                           sid="5a8798dae94fe05e37615c38" ltype=""
                                           aid=""
                                           class="d-block img-fluid"></div>
                </div>
                <a href="#carouselBannerIndicators" role="button" data-slide="prev" class="carousel-control-prev"><span
                        aria-hidden="true" class="carousel-control-prev-icon"></span><span
                        class="sr-only">Previous</span></a><a href="#carouselBannerIndicators" role="button"
                                                              data-slide="next" class="carousel-control-next"><span
                    aria-hidden="true" class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a>
            </div>
            <script>$("#carouselBannerIndicators").swiperight(function () {
                $("#carouselBannerIndicators").carousel('prev');
            });
            $("#carouselBannerIndicators").swipeleft(function () {
                $("#carouselBannerIndicators").carousel('next');
            });
            $('#carouselBannerIndicators img').click(function () {
                window.location.href = $(this).attr('aid') + '';
            });</script>
            <div data-step="3" data-intro="加入GitChat作者群，认识更多朋友。" style="margin-top:25px;">

                <c:forEach items="${writerList}" var="writer" varStatus="start">
                <a href="javascript:void(0)" class="recommedAuthor"><img
                        style="width: 32px;height: 32px;" src="${writer.writerhead}">
                    <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">${writer.writername}</div>
                </a>
                </c:forEach>

                <%--<a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/6f1d56e5109544d0a8af38bff1ec7797.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">孙亖</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/4c618bba8b4a4091bec5a181fa9723e0.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">肃肃其羽</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/111a9e862b56469d98f9e1838b3ebd46.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">王俊生</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/efcce6af3390443abfffaa09dbc24b53.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">刘盼</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/4b10098221c94ac99277fdebc127deb7.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">100offer</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/060a824d699c4cb1812ccdf42b32e8f6.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">阿福</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/02252f0c4cff463a933c0a50e0864556.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">宋璐</div>
            </a><a href="javascript:void(0)" class="recommedAuthor"><img
                    style="width: 32px;height: 32px;" src="../../statics/picture/gitchat/e22c25519df441a2b28f9b4d87ae0e32.gif">
                <div style="display: inline-block;padding: 0 11px 0 6px;font-size: 14px;">加兴</div>
            </a>--%>
                    <a href="javascript:void(0)" class="moreHotAuthor"><span>更多推荐作者</span><span
                    style="font-size:12px;margin-left: -5px;" class="icon2 lnr-chevron-right"></span></a></div>
        </div>
        <div style="border:0;margin-top:10px;padding:0 25px 0 25px;" class="mazi-activity-container item-container">
            <div style="font-size: 16px;color:#555;line-height: 50px;font-weight:500;">达人课<a id="changeColumns" href="#"
                                                                                             onclick="changeHomeColumn(1); return false;"
                                                                                             style="font-size:14px;font-weight:500;line-height:50px;float:right;"><span
                    id="syncColumn" style="vertical-align: middle;display: inline-block;" class="icon2 lnr-sync"></span><span
                    style="margin-right:10px;display: inline-block;">换一换</span></a></div>
            <div style="border-bottom: 1px solid #f5f5f5;"></div>
            <div id="homeColumns" style="display: flex;margin-top: 1px;">
                <c:forEach items="${classList}" var="classList" varStatus="start">
                <a style="margin-left:8px;margin-right:8px;" href="javascript:void(0)"
                   class="book">
                   <div class="cover"><img src="${classList.writerimage}"></div>
                    <div class="name">${classList.chatclasstitle}</div>
                    <div class="author">${classList.writername}</div>
                    <div class="price">${classList.chatclassprice}</div>
                    <div class="intros">${classList.chatclasshour}</div></a>
                </c:forEach>
                <%--<c:forEach items="${classList}" var="class" varStatus="start">
                    <a href="javascript:void(0)" class="book">
                        <div class="cover"><img src="${class.writerimage}"></div>
                        <div class="name">${class.chatclasstitle}</div>
                        <div class="author">${class.writername}</div>
                        <div class="price"><span style="color: red"></span><span
                                style="text-decoration:line-through;font-size: 12px;margin-left:5px;color: #999">${class.chatclassprice}</span>
                        </div>
                        <div class="intros">${class.chatclasshour}</div>
                    </a>
                </c:forEach>--%>

                <%--<a href="javascript:void(0)" class="book">
                <div class="cover"><img src="../../statics/picture/gitchat/10c86a4b518845a48d184edd55655e9f.gif"></div>
                <div class="name">Angular 小专题：玩转注射器</div>
                <div class="author">大漠穷秋</div>
                <div class="price">¥ 9.99</div>
                <div class="intros">共 9 课时</div>
            </a><a style="margin-left:8px;margin-right:8px;" href="javascript:void(0)"
                   class="book">
                <div class="cover"><img src="../../statics/picture/gitchat/8fd704a866994f34ab12175085ee3428.gif"></div>
                <div class="name">Django Web 开发极简实战</div>
                <div class="author">杨健</div>
                <div class="price">¥ 9.99</div>
                <div class="intros">共 9 课时</div>
            </a><a href="javascript:void(0)" class="book">
                <div class="cover"><img src="../../statics/picture/gitchat/e7859936361747e29561149b6fcbf27a.gif"></div>
                <div class="name">编程语言底层之系统和并发</div>
                <div class="author">李永京</div>
                <div class="price"><span style="color: red">限时 ¥9.99</span><span
                        style="text-decoration:line-through;font-size: 12px;margin-left:5px;color: #999">¥ 19.99</span>
                </div>
                <div class="intros">共 13 课时</div>
            </a>--%>

            </div>
        </div>
        <a href="javascript:void(0)">
            <div style="background-color:#fff;font-weight:500;line-height:40px;text-align:center;margin-top:-10px;">
                <span>查看全部课程</span></div>
        </a>
        <div id="chatItemContainer" style="border:0;margin-top:10px;padding:0 25px 0 25px;"
             class="mazi-activity-container item-container">
            <div style="font-size: 16px;color:#555;line-height: 50px;font-weight:500;"><span
                    style="color: #c93;margin-right:10px;">最热</span><a href="javascript:void(0)"><span
                    style="margin-right:10px;">最新</span></a><a href="javascript:void(0)"><span>免费</span></a></div>
            <div style="border-bottom: 1px solid #f5f5f5;"></div>

            <c:forEach items="${chatList}" var="chat" varStatus="start">
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="${chat.writerhead}" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">${chat.chattitle}</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">${chat.writername}</div>
                            <div class="item-author-descV2">${chat.writertag}</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">${chat.chathits}</span></div>
                        <a href="javascript:void(0)" class="textTag category">${chat.chattopic}</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">${chat.chattag}</div>
                    </div>
                </div>
            </a></div>
            </c:forEach>

            <%--<div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/b47163deedfa4114952f5ac1a601aa61.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">从点线面体谈开发到架构师的转型</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">李艳鹏</div>
                            <div class="item-author-descV2">高级技术专家</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">187</span></div>
                        <a href="javascript:void(0)" class="textTag category">架构</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/37a638a28efc4dc1a4f71e52337e5b07.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">程序员简历优化实战</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">安晓辉</div>
                            <div class="item-author-descV2">《程序员的成长课》作者</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">272</span></div>
                        <a href="javascript:void(0)" class="textTag category">职场</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <span style="color:#c9a063;" class="icon2 lnr-clock">本周四 20:30</span></div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/080ba433547e4fc7a5fa9503e7ec9e5c.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">Image 图像转化为 PDF 文件</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">张奇</div>
                            <div class="item-author-descV2">stevenzqzq</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">122</span></div>
                        <a href="javascript:void(0)" class="textTag category">移动开发</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <div style="background-color: #c9a063;color:#ffffff;" class="textTag">免费</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/b47163deedfa4114952f5ac1a601aa61.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">通用架构师应该如何把控迁移技术方案</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">李艳鹏</div>
                            <div class="item-author-descV2">高级技术专家</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">176</span></div>
                        <a href="javascript:void(0)" class="textTag category">架构</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/742df82884ea48febfa46c388114b8b2.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">Java 平台反应式编程（Reactive Programming）入门</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">成富</div>
                            <div class="item-author-descV2">资深全栈软件工程师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">74</span></div>
                        <a href="javascript:void(0)" class="textTag category">编程语言</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/c9b8f7c6e9cd4b8bbcf4a9d8b74ca72a.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">Spring 框架之 AOP 原理剖析</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">加多</div>
                            <div class="item-author-descV2">淘宝/攻城狮</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">124</span></div>
                        <a href="javascript:void(0)" class="textTag category">架构</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/111a9e862b56469d98f9e1838b3ebd46.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">Apollo 配置中心详解</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">王俊生</div>
                            <div class="item-author-descV2">新时代程序员</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">63</span></div>
                        <a href="javascript:void(0)" class="textTag category">开源软件</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/54d65efa59d14319b2c4c200cdedd93e.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">程序员炒股，如何计算股票投资组合的风险和收益</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">chen_h</div>
                            <div class="item-author-descV2">AI 工程师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">168</span></div>
                        <a href="javascript:void(0)" class="textTag category">人工智能</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/df1c0c244aee41669b78cc0aaaa99e9b.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">薪资提不上去是因为你不懂市场需求</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">清寒素尘</div>
                            <div class="item-author-descV2">JAVA高级开发工程师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">106</span></div>
                        <a href="javascript:void(0)" class="textTag category">职场</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <div style="background-color: #c9a063;color:#ffffff;" class="textTag">免费</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/bd1998b2d8af4143a2ca58d1f5e60d9f.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">一只猪的 Scrum 开发经历</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">李烨</div>
                            <div class="item-author-descV2">高级软件工程师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">166</span></div>
                        <a href="javascript:void(0)" class="textTag category">敏捷</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <span style="color:#c9a063;" class="icon2 lnr-clock">下周一 20:30</span></div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/26bd7100e6f94d0896929ea6c140d1ed.gif" class="item-author-thumbV2"><img
                            style="border: 0;margin: 17px 0 0 -37px;width: 40px;height: 40px;" src="../../statics/picture/gitchat/rvip.png">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">Spring Data REST 与 Spring RestTemplate 实战详解</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">张振华</div>
                            <div class="item-author-descV2">Java开发经理</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">96</span></div>
                        <a href="javascript:void(0)" class="textTag category">架构</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/dcd817a4b7be41d69043165433c49708.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">小程序开发入门</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">连胜</div>
                            <div class="item-author-descV2">攻城狮</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">170</span></div>
                        <a href="javascript:void(0)" class="textTag category">移动开发</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <span style="color:#c9a063;" class="icon2 lnr-clock">下周二 20:30</span></div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/52095bef9dc047e0821b3e8df2567669.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">京东从0到1敏捷转型的故事</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">杜伟忠~Duke</div>
                            <div class="item-author-descV2">战略咨询顾问</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">164</span></div>
                        <a href="javascript:void(0)" class="textTag category">敏捷</a>
                        <div style=";background-color: #c9a063;color:#ffffff;" class="textTag">买一赠一</div>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/f993bfc4f82848ba81ae55aac612f546.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">可靠消息服务的分布式事务</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">飞天的猪</div>
                            <div class="item-author-descV2">同盾科技开发</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">143</span></div>
                        <a href="javascript:void(0)" class="textTag category">架构</a>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <div style="background-color: #c9a063;color:#ffffff;" class="textTag">免费</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/2d62648bf2d04bdeb7493112f2a8c5ad.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">从0开始，设计研发一个全功能通用大数据系统</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">在路上</div>
                            <div class="item-author-descV2">大数据/AGI架构师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">137</span></div>
                        <a href="javascript:void(0)" class="textTag category">大数据</a>
                        <div style=";background-color: #c9a063;color:#ffffff;" class="textTag">买一赠一</div>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                        <div style="background-color: #c9a063;color:#ffffff;" class="textTag">免费</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/c070e5d782cf43e38556633c0906d515.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">区块链畅想</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">Fengy</div>
                            <div class="item-author-descV2">Python全栈开发工程师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">119</span></div>
                        <a href="javascript:void(0)" class="textTag category">区块链</a>
                        <div style=";background-color: #c9a063;color:#ffffff;" class="textTag">买一赠一</div>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>
            <div style="padding:0;border-bottom: 1px solid #f5f5f5;" class="col-md-12"><a
                    href="javascript:void(0)">
                <div style="border:0;padding:0;" class="mazi-item">
                    <div style="padding: 10px 0 10px 0;" class="item-name-cardV2"><img
                            src="../../statics/picture/gitchat/19852a3768e94fc9b5c2fec5210aec5a.gif" class="item-author-thumbV2">
                        <div class="item-author-ndV2">
                            <div class="item-titleV2">深入理解 Java 多线程核心知识——跳槽面试必备</div>
                            <div style="padding-top: 3px;" class="item-author-nameV2">Colie</div>
                            <div class="item-author-descV2">高级研发工程师</div>
                        </div>
                    </div>
                    <div style="margin: 0 0 8px -10px;" class="mazi-item-bottom">
                        <div style="margin-left:8px;display: inline;"><span class="icon2 lnr-user"></span><span
                                class="text">99</span></div>
                        <a href="javascript:void(0)" class="textTag category">编程语言</a>
                        <div style=";background-color: #c9a063;color:#ffffff;" class="textTag">买一赠一</div>
                        <div style="background-color: #6e8b84;color:#ffffff;" class="textTag">读者圈</div>
                    </div>
                </div>
            </a></div>--%>
        </div>
        <div>
            <div id="noMoreToLoad" style="display:none;height:60px;text-align:center;line-height: 60px;color:#555;">--
                我们是有底线的 --
            </div>
        </div>
    </div>
    <div id="indexRight"
         style="float:left;width: 360px;margin-top:75px;z-index: -1;height: 100%;padding-bottom: 100px;padding-left: 10px;overflow:hidden;"
         class="hidden-xs hidden-sm">
        <div style="margin: 0 auto;padding-top: 20px;color: #666666;font-size: 14px;font-weight:500">主题</div>
        <div style="border-top:1px solid #ff9100;margin-top:10px;"></div>
        <div style="margin: 0 auto;display:inline-block;"><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/dd53cb80-1c05-11e7-8187-65a30c956cd7"
                style="width:25px;margin-right:5px;"><span>前端</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/4b807350-348a-11e7-8728-a9cb89af1d5d"
                style="width:25px;margin-right:5px;"><span>移动开发</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/d5c726d0-b635-11e7-955b-b55efdfa1bf6"
                style="width:25px;margin-right:5px;"><span>硬件与物联网</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/45741e20-5bdc-11e7-a916-3bc36c078bd8"
                style="width:25px;margin-right:5px;"><span>区块链</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/be039710-1c05-11e7-9d4d-1121a99bb498"
                style="width:25px;margin-right:5px;"><span>人工智能</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/c0082920-b3f1-11e7-9e2f-8367361a88f2"
                style="width:25px;margin-right:5px;"><span>数学与算法</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/d5a56510-1c05-11e7-9d4d-1121a99bb498"
                style="width:25px;margin-right:5px;"><span>大数据</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/cc8a9d60-1c05-11e7-8187-65a30c956cd7"
                style="width:25px;margin-right:5px;"><span>架构</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/29d250c0-bc89-11e7-a513-09587bc95d13"
                style="width:25px;margin-right:5px;"><span>开源软件</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/8c17e090-9f4e-11e7-b002-c1f7ed467750"
                style="width:25px;margin-right:5px;"><span>编程语言</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/064d9590-5179-11e7-8f9d-e1a46a00e053"
                style="width:25px;margin-right:5px;"><span>软件工程实践</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/b4495b10-1c05-11e7-8187-65a30c956cd7"
                style="width:25px;margin-right:5px;"><span>测试</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/fa6cb380-2b2d-11e7-93f9-893e15f43873"
                style="width:25px;margin-right:5px;"><span>运维</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/10953840-3ca3-11e7-9a83-95fed495c599"
                style="width:25px;margin-right:5px;"><span>安全</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/aa5b64e0-1c05-11e7-ba87-1ba9759a0caa"
                style="width:25px;margin-right:5px;"><span>技术管理</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/c5c3fee0-1c05-11e7-8187-65a30c956cd7"
                style="width:25px;margin-right:5px;"><span>敏捷</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/99722ba0-1c05-11e7-b2fd-1d704832d7d1"
                style="width:25px;margin-right:5px;"><span>职场</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/a11dfa00-1c05-11e7-b2fd-1d704832d7d1"
                style="width:25px;margin-right:5px;"><span>产品与运营</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/8d3f9ca0-1c05-11e7-ba87-1ba9759a0caa"
                style="width:25px;margin-right:5px;"><span>生活</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/17bbd190-9d0d-11e7-be01-51f282d58fd1"
                style="width:25px;margin-right:5px;"><span>写作与翻译</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;margin-right:10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/0186a7c0-2831-11e7-a4f0-afdbe5283f35"
                style="width:25px;margin-right:5px;"><span>教育</span></a><a
                style="border: 1px solid #f5f5f5;height: 40px;display: inline-block;float: left;                  background-color: #ffffff;padding-left: 10px;padding-right:10px;font-size: 14px;line-height:40px;                  margin-top: 10px;min-width:170px;"
                href="javascript:void(0);"><img
                src="../../statics/images/gitchat/85241c80-1c05-11e7-9d4d-1121a99bb498"
                style="width:25px;margin-right:5px;"><span>其它</span></a>
        </div>
        <div style="width:100%;margin:0 auto;border-bottom: 1px solid #f0f0f0;display:inline-block;margin-bottom:8px;"></div>
        <a data-step="1" data-intro="发布Chat活动，开启讲师之旅。" style="width:100%;height:40px;line-height: 26px;order-radius: 0;"
           target="_blank" href="javascript:void(0);" role="button" class="btn btn-primary">创建一场
            Chat</a><a style="margin-top:10px;width:100%;height:40px;line-height: 26px;order-radius: 0;" target="_blank"
                       href="javascript:void(0);" role="button" class="btn btn-primary">成为达人课作者</a>
        <div style="width:100%;margin:0 auto;border-bottom: 1px solid #f0f0f0;display:inline-block;"></div>
        <div style="margin: 0 auto;padding-top: 20px;color: #666666;font-size: 14px;font-weight:500"><span>精品课程</span><a
                style="float:right;" href="javascript:void(0);"><span>更多</span><span
                style="font-size:12px;margin-left: -5px;" class="icon2 lnr-chevron-right"></span></a>
            <div style="border-top:1px solid #ff9100;margin-top:10px;"></div>
            <div style="margin: 0 auto;display:inline-block;width: 100%;">

                <c:forEach items="${hotClassList}" var="hotClass" varStatus="start">
                <div style="margin:5px 0 5px 0;padding:0;"><a
                        href="javascript:void(0);">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">${hotClass.chatclasstitle}
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">${hotClass.writername}</div>
                            <div style="float:right;"><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;"
                                    class="text">共 ${hotClass.chatclasshour} 课时</span></div>
                        </div>
                    </div>
                </a></div>
                </c:forEach>

                <%--<div style="margin:5px 0 5px 0;padding:0;"><a
                        href="javascript:void(0);">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">Angular 小专题：玩转注射器
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">大漠穷秋</div>
                            <div style="float:right;"><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;"
                                    class="text">共 9 课时</span></div>
                        </div>
                    </div>
                </a></div>
                <div style="margin:5px 0 5px 0;padding:0;"><a
                        href="http://gitbook.cn/gitchat/column/5a96694d7a0cbc5fa76d4dac">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">Django Web 开发极简实战
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">杨健</div>
                            <div style="float:right;"><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;"
                                    class="text">共 9 课时</span></div>
                        </div>
                    </div>
                </a></div>
                <div style="margin:5px 0 5px 0;padding:0;"><a
                        href="javascript:void(0);">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">编程语言底层之系统和并发
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">李永京</div>
                            <div style="float:right;"><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;" class="text">共 13 课时</span>
                            </div>
                        </div>
                    </div>
                </a></div>
                <div style="margin:5px 0 5px 0;padding:0;"><a
                        href="javascript:void(0);">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">Linux 内核 C 语言深度解析
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">王利涛</div>
                            <div style="float:right;"><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;" class="text">共 13 课时</span>
                            </div>
                        </div>
                    </div>
                </a></div>
                <div style="margin:5px 0 5px 0;padding:0;"><a
                        href="javascript:void(0);">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">手把手教你编写 QQ 机器人
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">刘宗铭</div>
                            <div style="float:right;"><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;"
                                    class="text">共 9 课时</span></div>
                        </div>
                    </div>
                </a></div>--%>
            </div>
        </div>
        <div style="margin: 0 auto;padding-top: 20px;color: #666666;font-size: 14px;font-weight:500">
            <span>最新 Chat</span><a style="float:right;" href="javascript:void(0);"><span>更多</span><span
                style="font-size:12px;margin-left: -5px;" class="icon2 lnr-chevron-right"></span></a>
            <div style="border-top:1px solid #ff9100;margin-top:10px;"></div>
            <div style="margin: 0 auto;display:inline-block;width: 100%;">

                <c:forEach items="${newChatList}" var="newChat" varStatus="start">
                    <div style="margin:5px 0 5px 0;padding:0;"><a
                            href="javascript:void(0);">
                        <div class="mazi-item">
                            <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                                 class="item-title">${newChat.chattitle}
                            </div>
                            <div style="overflow:hidden;" class="default-wrap">
                                <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">${newChat.writername}</div>
                                <div style="float:right;"><span
                                        style="font-size: 12px;margin:2px 0 0 -8px;line-height: 16px;"
                                        class="icon2 lnr-user"></span><span
                                        style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;"
                                        class="text">${newChat.chathits}</span></div>
                            </div>
                        </div>
                    </a></div>
                </c:forEach>

                <%--<div style="margin:5px 0 5px 0;padding:0;"><a
                        href="javascript:void(0);">
                    <div class="mazi-item">
                        <div style="text-align: justify;color: #555;font-size: 15px;margin:5px 0 5px 0;font-weight:400"
                             class="item-title">极简风格的演讲型幻灯片设计
                        </div>
                        <div style="overflow:hidden;" class="default-wrap">
                            <div style="font-size: 12px;font-weight:400;padding-left:10px;float:left;">Alex</div>
                            <div style="float:right;"><span
                                    style="font-size: 12px;margin:2px 0 0 -8px;line-height: 16px;"
                                    class="icon2 lnr-user"></span><span
                                    style="margin:2px 5px 0 -5px;font-size: 12px;line-height: 16px;"
                                    class="text">21</span></div>
                        </div>
                    </div>
                </a></div>--%>

            </div>
        </div>
        <div data-step="4" data-intro="关注GitChat服务号，获取活动状态通知。" style="width:100%; text-align: center; margin-top: 20px">
            <img src="../../statics/images/gitchat/FugaAUCJPglWvm7ZO6Vldhc6Iq6h" height="250" width="250"
                 style="margin: 0 auto">
            <div style="font-size: 18px" class="mpText">微信扫码关注 GitChat</div>
        </div>
        <div style="border:1px solid #fafafa;margin:20px 0 15px 0;"></div>
        <div style="font-size:10px;color:#dcdcdc;text-align: center;">© gitbook.cn all rights reserved, 京ICP备16004941号
        </div>
        <div style="text-align:center;color:#dcdcdc;margin:10px;"><a
                href="javascript:void(0);" target="_blank">《程序员》</a><span
                style="margin:5px 10px;">|</span><a id="aboutusLink" href="javascript:void(0);">关于我们</a><span
                style="margin:5px 10px;">|</span><a id="contactUsLink" data-toggle="modal"
                                                    href="javascript:void(0);">联系客服</a></div>
    </div>
</div>
<script src="../../statics/js/gitchat/wxlogin.js"></script>
<div class="fat-nav">
    <div class="fat-nav__wrapper">
        <div style="margin: 0 auto;font-size: 30px;color: #ffffff;text-align: center;margin-top: 60px;"><img
                style="width: 50px;" src="../../statics/picture/gitchat/logo.png"></div>
        <div id="loginInputDiv" style="width: 100%">
            <div style="text-align:center;color: #ffffff;margin-top:10px;font-size: 16px;letter-spacing: 2px;">微信扫描登录
            </div>
            <div id="login_container" style="text-align: center;height: 250px;overflow: hidden;"></div>
        </div>
    </div>
</div>
<div id="authorModal" style="margin-top: 60px;" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     class="modal fade">
    <div role="document" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span
                        aria-hidden="true">×</span></button>
                <h4 id="authorModalLabel" class="modal-title">帐号设置</h4></div>
            <div class="modal-body">
                <div style="display:inline-block;width: 100%;">
                    <div style="display:inline;float:left;padding: 20px 0 0 10px;min-width: 280px;">
                        <div id="authorThumb"
                             style="display: inline-block;float:left;width: 100px;height: 100px;border: 1px solid #cccccc;margin-right: 20px;                      line-height: 100px;font-size: 30px;text-align: center;-webkit-border-radius: 50px;margin-bottom:20px;">
                            头像
                        </div>
                        <form id="thumbUploadForm" style="margin-top:25px;" method="post" action="/upload/book/image"
                              enctype="multipart/form-data">
                            <div style="display: inline" class="form-group"><a href="javascript:;"
                                                                               class="file">选择头像<input
                                    id="thumbInputFile" type="file" name="tmpFile"
                                    onchange="javascript:submitThumbForm()"></a>
                                <p style="font-size:12px;" class="help-block">最佳分辨率：200*200像素</p></div>
                        </form>
                    </div>
                </div>
                <div style="display:inline-block;width:100%;border-top:1px dashed #f5f5f5;height:20px;"></div>
                <div style="display:inline-block;width:100%;">
                    <div style="float:left;line-height:30px;">昵 称:</div>
                    <div style="margin-left:70px;"><input id="authorName" style="margin-bottom: 10px;" type="text"
                                                          placeholder="用户昵称" value="" class="form-control"></div>
                </div>
                <div style="display:inline-block;width:100%;">
                    <div style="float:left;line-height:30px;">微信号:</div>
                    <div style="margin-left:70px;"><input id="weixinAccount" style="margin-bottom: 10px;" type="text"
                                                          placeholder="不填写微信号就不能发布Chat活动哦^_^" value=""
                                                          class="form-control"></div>
                </div>
                <div style="display:inline-block;width:100%;">
                    <div style="float:left;line-height:30px;">头 衔:</div>
                    <div style="margin-left:70px;"><input id="authorTitle" style="margin-bottom: 10px;" type="text"
                                                          placeholder="用户头衔" value="" class="form-control"></div>
                </div>
                <div style="display:inline-block;width:100%;">
                    <div style="float:left;line-height:30px;">背景介绍:</div>
                    <div style="margin-left:70px;"><textarea id="authorBackground" style="margin-bottom: 10px;" rows="3"
                                                             placeholder="用户背景简介" class="form-control"></textarea><input
                            id="hideCustomerThumbImage" style="display:none"></div>
                </div>
                <div style="font-size: 25px;line-height: 35px;"></div>
                <div id="thumbUploadingAlertDiv" style="display:none;margin-top: 50px;margin-bottom: -20px;"
                     class="alert alert-info">正在上传头像，请稍等......
                </div>
                <div id="updatingAlertDiv" style="display:none;margin-top: 50px;margin-bottom: -20px;"
                     class="alert alert-info">正在更新，请稍等......
                </div>
                <div id="emailCheckAlertDiv" style="display:none;margin-top: 50px;margin-bottom: -20px;"
                     class="alert alert-danger">邮件地址格式不正确，请重新填写
                </div>
                <div id="dupEmailAlertDiv" style="display:none;margin-top: 50px;margin-bottom: -20px;"
                     class="alert alert-danger">此邮件地址已经被其他用户使用
                </div>
            </div>
            <div style="margin-top: 20px;" class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-default">取消</button>
                <button id="authorSubmitBtn" type="button" data-dismiss="modal" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
<script>if (!(/MicroMessenger/i).test(window.navigator.userAgent)) {
    var state = encodeURI(window.location.href);
    $.ajax({
        url: "/weixin/login/qr",
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function (data, status) {
            if (data.code == 0) {
                var obj = new WxLogin({
                    id: "login_container",
                    appid: data.appId,
                    scope: data.scope,
                    redirect_uri: data.redirectUrl,
                    state: state,
                    style: "white",
                    href: "https%3A%2F%2Foabbwo5lj.qnssl.com%2FweixinLoginQr.css"
                });
            }
        }
    });
}</script>
<script src="../../statics/js/gitchat/jquery.fatnav.js"></script>
<script>new gnMenu(document.getElementById('gn-menu'));</script>
</body>
<script src="../../statics/js/gitchat/jweixin-1.0.0.js"></script>
</html>
