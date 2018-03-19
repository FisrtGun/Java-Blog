<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年3月18日,0018
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>分页</title>
    <script type="text/javascript" src="../../statics/js/jquery-1.11.1.min.js"></script>
    <style data-for="result" type="text/css" id="css_newi_result">
        body {
        color: #333;
        background: #fff;
        padding: 6px 0 0;
        margin: 0;
        position: relative;
        min-width: 900px
    }

    body, th, td {
        font-family: arial
    }

    #page {
        font: 14px arial;
        white-space: nowrap;
        padding-left: 35px;
    }

    #page a, #page strong {
        display: inline-block;
        vertical-align: text-bottom;
        height: 36px;
        text-align: center;
        line-height: 34px;
        text-decoration: none;
        overflow: hidden;
        margin-right: 9px;
        background: #fff;
    }

    #page a {
        cursor: pointer
    }

    #page a:hover {
        background: 0 0
    }

    #page .n:hover, #page a:hover .pc {
        background: #f2f8ff;
        border: 1px solid #38f
    }

    #page .n {
        height: 34px;
        padding: 0 18px;
        border: 1px solid #e1e2e3
    }

    #page span {
        display: block
    }

    #page .pc {
        width: 34px;
        height: 34px;
        border: 1px solid #e1e2e3;
        cursor: pointer
    }

    #page strong .pc {
        border: 0;
        width: 36px;
        height: 36px;
        line-height: 36px
    }

    .bod {
        background: #f2f8ff;
        border: 1px solid #38f
    }
    </style>
</head>
<body>
<li class="tip_box clearfix">
    <%--<button type="button" class="txt btn-feed-refresh">刚刚阅读在这里，点击刷新</button>
    <div class="read-here csdn-tracking-statistics" data-mod="popu_464" data-dsm="post">
        <a>刚刚阅读在这里，点击刷新</a>
    </div>--%>
    <div id="page"style="display: inline-block;width: 100%;text-align: center;overflow:hidden;text-overflow:ellipsis;white-space: nowrap">
        <a><span class="n" id="pageUp">上一页</span></a>
        <%--<script type="text/javascript">
            var pageInt =${pageUtils.index};
            if (pageInt == "1") {
                $("#pageUp").attr('href', "javascript:;").css("background-color", "#f5f6f7");
            } else {
                $("#pageUp").attr('href', "index?index=${pageUtils.index-1}").css("background-color", "f2f8ff");
            }
        </script>--%>

        <a>
            <span class="pc">1</span></a>
        <a>
            <span class="pc">2</span></a>
        <a>
            <span class="pc">3</span></a>
        <a>
            <span class="pc">4</span></a>
        <a>
            <span class="pc">5</span></a>
        <a>
            <span class="pc">6</span></a>
        <a>
            <span class="pc">7</span></a>
        <a>
            <span class="pc">8</span></a>
        <a>
            <span class="pc">9</span></a>
        <a>
            <span class="pc">10</span></a>


        <%--<script type="text/javascript">
            var i =${pageUtils.index};
            if(i == "1"){
                $("#page1").css({"border": "1px solid #398bde"});
            }
            if(i == "2"){
                $("#page2").css({"border": "1px solid #398bde"});
            }
            if(i == "3"){
                $("#page3").css({"border": "1px solid #398bde"});
            }
            if(i == "4"){
                $("#page4").css({"border": "1px solid #398bde"});
            }
            if(i == "5"){
                $("#page5").css({"border": "1px solid #398bde"});
            }
            if(i == "6"){
                $("#page6").css({"border": "1px solid #398bde"});
            }
            if(i == "7"){
                $("#page7").css({"border": "1px solid #398bde"});
            }
            if(i == "8"){
                $("#page8").css({"border": "1px solid #398bde"});
            }
            if(i == "9"){
                $("#page9").css({"border": "1px solid #398bde"});
            }
            if(i == "10"){
                $("#page10").css({"border": "1px solid #398bde"});
            }
           /* $("#page").on("click", "a", function () {
                $(this).css({"border": "1px solid #398bde"});
            });*/


        </script>--%>


        <a><span class="n" id="pageDown">下一页</span></a>
        <%--<script type="text/javascript">
            var pageInt =${pageUtils.index};
            var totalPage =${pageUtils.totalPage}
            if (pageInt == totalPage) {
                $("#pageDown").attr('href', "javascript:;").css("background-color", "#f5f6f7");
            } else {
                $("#pageDown").attr('href', "index?index=${pageUtils.index+1}").css("background-color", "f2f8ff");
            }
        </script>--%>
        <script type="text/javascript">
            var totalPage =${pageUtils.totalPage};
            var indexPage="";
            var pageInde="";
            var pageNext="<a><span class=\"n\" id=\"pageUp\">"+"上一页"+"</span></a>";
            var pageLast="<a><span class=\"n\" id=\"pageDown\">"+"下一页"+"</span></a>";
            for(var i=1;i<=totalPage;i++){
            indexPage="<a><span class=\"pc\">"+i+"</span></a>";
            pageInde+=indexPage;
            }
            $("#page").html(pageNext+pageInde+pageLast);


            let pageInt =1;
            $(document).ready(function () {
                $('#page').on("click","a",function () {
                    $(this).siblings().removeClass("bod");

                    $(this).eq(pageInt+1).addClass("bod");
                    var vals = $(this).children().text();
                    if (vals === "上一页") {
                        if (pageInt===1){alert("已经是第一页")}else {
                            pageInt=pageInt-1;
                            ajaxs(pageInt);
                        }
                    } else if (vals === "下一页") {
                        if(pageInt===totalPage){alert("已经最后一页")}else {
                            pageInt=pageInt+1;
                            ajaxs(pageInt);
                        }
                    } else {
                        pageInt = vals;
                        ajaxs(pageInt);
                    }
                    $("#page").children("a").eq(pageInt).addClass("bod");
                });
                $("#page").children("a").eq(pageInt).addClass("bod");
            });
            function ajaxs(pageInt) {
                $.ajax({
                    "url": "/mainController/indexPage",//要提交的路径
                    "Type": "post",//提交方式
                    "data": "index=" + pageInt,//发送到服务器的数据
                    "dataType": "json",//指定返回的数据格式
                    beforeSend: function () {
                        $("#feedlist_id").html('加载中...');
                    }, //加载执行方法
                    "success": function (data) {
                        var newsList = eval(data); //数组
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
                            news+=newdemo;
                        });
                        $("#feedlist_id").html(news);
                    },//响应成功后要执行代码
                    "error": function () { //请求失败后要执行代码
                        alert("错误！");
                    }
                });
            }
        </script>
    </div>
</li>
</body>
</html>
