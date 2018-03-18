<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年3月18日,0018
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分页</title>
    <style data-for="result" type="text/css" id="css_newi_result">body {
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
        padding-left: 35px
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
        background: #fff
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
    </style>
</head>
<body>
<li class="tip_box clearfix">
    <%--<button type="button" class="txt btn-feed-refresh">刚刚阅读在这里，点击刷新</button>
    <div class="read-here csdn-tracking-statistics" data-mod="popu_464" data-dsm="post">
        <a>刚刚阅读在这里，点击刷新</a>
    </div>--%>
    <div id="page">
        <a href="index?index=${pageUtils.index-1}" class="n" id="pageUp">上一页</a>
        <script type="text/javascript">
            var pageInt =${pageUtils.index};
            if (pageInt == "1") {
                $("#pageUp").attr('href', "javascript:;").css("background-color", "#f5f6f7");
            } else {
                $("#pageUp").attr('href', "index?index=${pageUtils.index-1}").css("background-color", "f2f8ff");
            }
        </script>

        <a href="index?index=1" id="page1">
            <span class="pc">1</span></a>
        <a href="index?index=2" id="page2">
            <span class="pc">2</span></a>
        <a href="index?index=3" id="page3">
            <span class="pc">3</span></a>
        <a href="index?index=4" id="page4">
            <span class="pc">4</span></a>
        <a href="index?index=5" id="page5">
            <span class="pc">5</span></a>
        <a href="index?index=6" id="page6">
            <span class="pc">6</span></a>
        <a href="index?index=7" id="page7">
            <span class="pc">7</span></a>
        <a href="index?index=8" id="page8">
            <span class="pc">8</span></a>
        <a href="index?index=9" id="page9">
            <span class="pc">9</span></a>
        <a href="index?index=10" id="page10">
            <span class="pc">10</span></a>


        <script type="text/javascript">
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


        </script>


        <a href="index?index=${pageUtils.index+1}" class="n" id="pageDown">下一页</a>
        <script type="text/javascript">
            var pageInt =${pageUtils.index};
            var totalPage =
            ${pageUtils.totalPage}
            if (pageInt == totalPage) {
                $("#pageDown").attr('href', "javascript:;").css("background-color", "#f5f6f7");
            } else {
                $("#pageDown").attr('href', "index?index=${pageUtils.index+1}").css("background-color", "f2f8ff");
            }
        </script>
    </div>
</li>
</body>
</html>
