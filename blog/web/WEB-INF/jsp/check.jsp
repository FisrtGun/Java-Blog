<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年3月14日,0014
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="referrer" content="always">
    <title>${thing} - fg搜索</title>
    <link href="../../statics/css/bootstrap.css" rel="stylesheet">
    <link href="../../statics/css/common.css" rel="stylesheet">
    <link href="../../statics/css/content_toolbar.css" rel="stylesheet">
    <link href="../../statics/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../../statics/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <link rel="stylesheet" href="../../statics/css/introduction.css" media="screen" title="no title" charset="utf-8">
    <link type="text/css" href="../../statics/css/main.css" rel="stylesheet">
    <link href="../../statics/css/common_1.css" rel="stylesheet">
    <script type="text/javascript">
        var CFG = {
            API_URL: "//so.csdn.net/so/"
        }

    </script>
    <!-- 请置于所有广告位代码之前 -->
    <script src="../../statics/js/ds.js"></script>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        _hmt.push(['_setVisitTag', '256', 'search_csdn']);
    </script>
    <script src="../../statics/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../../statics/js/jsonp.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../statics/js/bootstrap.min.js"></script>
    <script src="../../statics/js/ser_person.js" type="text/javascript"></script>
    <script type="text/javascript">
        var loginname = getCookie('UserName');
        var currentUserName = loginname;

        function getCookie(objName) {
            var arrStr = document.cookie.split("; ");
            for (var i = 0; i < arrStr.length; i++) {
                var temp = arrStr[i].split("=");
                if (temp[0] == objName) {
                    return decodeURI(temp[1]);
                }
            }
        }

        function GetQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }

        //var show_course = false;

        $(document).ready(function () {

            $("ul.search-type li").click(function () {
                var ili = $(".search-type")[0].children.length;
                for (var i = 0; i < ili; i++) {
                    $(".search-type")[0].children[i].style.color = "#000000";
                }

                if (this.innerHTML == "头条") {

// 			    		leavecode();
                    $("#tt")[0].value = "news";
                    $("#tb")[0].value = "news";

                    $(".search-type")[0].children[4].style.color = "#990000";

                    $("#ot")[0].value = $("input[name='o1']:checked").val();
                    $("#ob")[0].value = $("input[name='o1']:checked").val();
                    $("#st")[0].value = "";
                    $("#sb")[0].value = "";

                    $("#o_news")[0].style.display = "inline";
                    $("#o_disscus_code")[0].style.display = "none";
                    $("#o_doc")[0].style.display = "none";
// 			    		$("#o_ask")[0].style.display="none";
                    $("input[name='o1']").each(function () {
                        if ($(this).val() == "") {
                            $(this).attr("checked", true);
                        }
                    });
// 			    		$("input[name='o1'][value='time'").attr("checked",true);
// 						$("#codeSelector")[0].style.display="none";
// 						$("#codeSelector2")[0].style.display="none";
// 						$(".solve_pupup")[0].style.display="none";

                } else if (this.innerHTML == "博客") {
// 			    		leavecode();
                    $("#tt")[0].value = "blog";
                    $("#tb")[0].value = "blog";

                    $(".search-type")[0].children[1].style.color = "#990000";

                    $("#ot")[0].value = "";
                    $("#ob")[0].value = "";
                    $("#st")[0].value = "";
                    $("#sb")[0].value = "";

                    $("#o_news")[0].style.display = "none";
                    $("#o_disscus_code")[0].style.display = "none";
                    $("#o_doc")[0].style.display = "none";
// 			    		$("#o_ask")[0].style.display="none";
// 			    		$("#codeSelector")[0].style.display="none";
// 			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
                } else if (this.innerHTML == "学院") {
// 			    		leavecode();
                    $("#tt")[0].value = "course";
                    $("#tb")[0].value = "course";

                    $(".search-type")[0].children[5].style.color = "#990000";

                    $("#ot")[0].value = "";
                    $("#ob")[0].value = "";
                    $("#st")[0].value = "";
                    $("#sb")[0].value = "";

                    $("#o_news")[0].style.display = "none";
                    $("#o_disscus_code")[0].style.display = "none";
                    $("#o_doc")[0].style.display = "none";
// 			    		$("#o_ask")[0].style.display="none";
// 			    		$("#codeSelector")[0].style.display="none";
// 			    		$("#codeSelector2")[0].style.display="none";
// 			    		$(".solve_pupup")[0].style.display="none";
                } else if (this.innerHTML == "论坛") {
// 			    		leavecode();
                    $("#tt")[0].value = "discuss";
                    $("#tb")[0].value = "discuss";

                    $(".search-type")[0].children[2].style.color = "#990000";

                    $("#ot")[0].value = $("input[name='o1']:checked").val();
                    $("#ob")[0].value = $("input[name='o1']:checked").val();
                    $("#st")[0].value = "";
                    $("#sb")[0].value = "";

                    $("#o_news")[0].style.display = "none";
                    $("#o_disscus_code")[0].style.display = "inline";
                    $("#o_doc")[0].style.display = "none";
                } else if (this.innerHTML == "下载") {
// 			    		leavecode();
                    $("#tt")[0].value = "doc";
                    $("#tb")[0].value = "doc";

                    $(".search-type")[0].children[3].style.color = "#990000";

                    $("#ot")[0].value = "";
                    $("#ob")[0].value = "";
                    $("#st")[0].value = $("input[name='o3']:checked").val();
                    $("#sb")[0].value = $("input[name='o3']:checked").val();

                    $("#o_news")[0].style.display = "none";
                    $("#o_disscus_code")[0].style.display = "none";
                    $("#o_doc")[0].style.display = "none";
                } else {
                    $("#tt")[0].value = "";
                    $("#tb")[0].value = "";

                    $(".search-type")[0].children[0].style.color = "#990000";

                    $("#ot")[0].value = "";
                    $("#ob")[0].value = "";
                    $("#st")[0].value = "";
                    $("#sb")[0].value = "";

                    $("#o_news")[0].style.display = "none";
                    $("#o_disscus_code")[0].style.display = "none";
                    $("#o_doc")[0].style.display = "none";
                }
                document.search_form_1.submit();
            });
        });

        function changeOrder(value) {
            $("#ot")[0].value = value;
            $("#ob")[0].value = value;

            document.search_form_1.submit();
        }

        function changeDocOrder(value) {
            $("#st")[0].value = value;
            $("#sb")[0].value = value;

            document.search_form_1.submit();
        }

        $(document).ready(function () {

            var ili = $(".search-type")[0].children.length;
            var t = GetQueryString("t");
            if (t == "news") {
                $(".search-type")[0].children[4].style.color = "#990000";

                $("#o_news")[0].style.display = "inline";
                $("#o_disscus_code")[0].style.display = "none";
                $("#o_doc")[0].style.display = "none";
                $("input[name='o1']").each(function () {
                    if ($(this).val() == "") {
                        $(this).attr("checked", true);
                    }
                });
            } else if (t == "blog") {
                $(".search-type")[0].children[1].style.color = "#990000";

                $("#o_news")[0].style.display = "none";
                $("#o_disscus_code")[0].style.display = "none";
                $("#o_doc")[0].style.display = "none";
            } else if (t == "course") {
                $(".search-type")[0].children[5].style.color = "#990000";

                $("#o_news")[0].style.display = "none";
                $("#o_disscus_code")[0].style.display = "none";
                $("#o_doc")[0].style.display = "none";
            } else if (t == "discuss") {
                $(".search-type")[0].children[2].style.color = "#990000";

                $("#o_news")[0].style.display = "none";
                $("#o_disscus_code")[0].style.display = "inline";
                $("#o_doc")[0].style.display = "none";
                $("input[name='o2']").each(function () {
                    if ($(this).val() == "") {
                        $(this).attr("checked", true)
                    }
                });
            } else if (t == "code") {
                $(".search-type")[0].children[3].style.color = "#990000";

                $("#o_news")[0].style.display = "none";
                $("#o_disscus_code")[0].style.display = "none";
                $("#o_doc")[0].style.display = "none";
                $("input[name='o2']").each(function () {
                    if ($(this).val() == "") {
                        $(this).attr("checked", true)
                    }
                });
            } else if (t == "doc") {
                $(".search-type")[0].children[3].style.color = "#990000";

                $("#o_news")[0].style.display = "none";
                $("#o_disscus_code")[0].style.display = "none";
                $("#o_doc")[0].style.display = "none";
                $("input[name='o3']").each(function () {
                    if ($(this).val() == "") {
                        $(this).attr("checked", true);
                    }
                });
            } else {
                $(".search-type")[0].children[0].style.color = "#990000";

                $("#o_news")[0].style.display = "none";
                $("#o_disscus_code")[0].style.display = "none";
                $("#o_doc")[0].style.display = "none";
            }
        });

        $(function () {
            //注销自动提示代码
            /*		    var oT =$(".search-text2:eq(0)");
                        var oT2 =$(".search-text2:eq(1)");
                        var oFormcon = $(".search-from2");
            /!*		    var oForm1 = oFormcon[0].children[0];
                        var oForm2 = oFormcon[1].children[0];

                        var pos1 = getPos(oForm1).top;
                        var pos2 = getPos(oForm2).top;   *!/

                        var oUl = document.getElementById('search-suggest2');
                        var oUl2 = document.getElementById('search-suggest3');
                        var url=document.domain;
                        if (window.location.port != 80) {
                            url += ":" +window.location.port;
                        }
                        var URL = CFG.API_URL +'so/search/so/autocomplete.do';
                        var aLi=oUl.children;
                        var aLi2=oUl2.children;

                        window.iNow=-1;
                        window.iNow2=-1;
                        oT.focus();
                        var oldValue='';
                        var oldValue2='';

                        oT.onkeyup=function(ev)
                        {
                            var oEvent=ev || event;
                            if(oEvent.keyCode==40 || oEvent.keyCode==38){
                                return;
                            }

                            if(oEvent.keyCode==13){
                                 this.parentNode.parentNode.submit();
                            }

                            jsonp(URL, {q: oT.value}, function (json){

                                if(json.suggestions.length==0)
                                {
                                    oUl.style.display='none';
                                }
                                else
                                {
                                    oUl.style.display='block';
                                    var data = eval('('+json.suggestions+')');
                                }
                                oUl.innerHTML='';
                                for(var i=0; i<data.length; i++)
                                {
                                    var oLi=document.createElement('li');
                                    oLi.innerHTML=data[i].key;
                                    oUl.appendChild(oLi);
                                }

                                for(var i=0; i<aLi.length; i++){
                                aLi[i].index=i;
                                aLi[i].onmouseover=function(){
                                for(var i=0; i<aLi.length; i++){
                                    aLi[i].style.background='';
                                }
                                this.style.background='#ccc';

                                iNow=this.index;

                                }

                                aLi[i].onclick=function()
                                {
                                     oT.value=aLi[this.index].innerHTML;
                                }

                                }

                            }, 'callback');


                            oldValue=oT.value;
                        }

                        oT.onkeydown=function(ev){

                            var oEvent=ev || event;
                            if(oEvent.keyCode==40){
                                iNow++;

                                if(iNow==aLi.length){
                                    iNow=-1;
                                }

                                for(var i=0; i<aLi.length; i++){
                                    aLi[i].style.background='';
                                }
                                if(iNow!=-1){
                                    aLi[iNow].style.background='#ccc';
                                    oT.value=aLi[iNow].innerHTML;
                                }else{
                                    oT.value=oldValue;
                                }
                            }

                            if(oEvent.keyCode==38){
                                iNow--;
                                if(iNow==-2){
                                    iNow=aLi.length-1;
                                }

                                for(var i=0; i<aLi.length; i++){
                                    aLi[i].style.background='';
                                }
                                if(iNow!=-1){
                                    aLi[iNow].style.background='#ccc';
                                    oT.value=aLi[iNow].innerHTML;
                                }else{
                                    oT.value=oldValue;
                                }
                                return false;
                            }
                        }


                        oT2.onkeyup=function(ev)
                        {
                            var oEvent=ev || event;
                            if(oEvent.keyCode==40 || oEvent.keyCode==38){
                                return;
                            }

                            if(oEvent.keyCode==13){
                                 this.parentNode.parentNode.submit();
                            }

                            jsonp(URL, {q: oT2.value}, function (json){

                                if(json.suggestions.length==0)
                                {
                                    oUl2.style.display='none';
                                }
                                else
                                {
                                    oUl2.style.display='block';
                                    var data2 = eval('('+json.suggestions+')');
                                }
                                oUl2.innerHTML='';
                                for(var i=0; i<data2.length; i++)
                                {
                                    var oLi2=document.createElement('li');
                                    oLi2.innerHTML=data2[i].key;
                                    oUl2.appendChild(oLi2);
                                }

                                for(var i=0; i<aLi.length; i++){
                                aLi2[i].index=i;
                                aLi2[i].onmouseover=function(){
                                for(var i=0; i<aLi2.length; i++){
                                    aLi2[i].style.background='';
                                }
                                this.style.background='#ccc';
                                iNow2=this.index;

                                }

                                aLi2[i].onclick=function()
                                {
                                    oT2.value=aLi2[this.index].innerHTML;
                                }

                                }

                            }, 'callback');


                            oldValue2=oT2.value;
                        }

                        oT2.onkeydown=function(ev){

                            var oEvent=ev || event;
                            if(oEvent.keyCode==40){
                                iNow2++;

                                if(iNow2==aLi2.length){
                                    iNow2=-1;
                                }

                                for(var i=0; i<aLi2.length; i++){
                                    aLi2[i].style.background='';
                                }
                                if(iNow2!=-1){
                                    aLi2[iNow2].style.background='#ccc';
                                    oT2.value=aLi2[iNow2].innerHTML;
                                }else{
                                    oT2.value=oldValue2;
                                }
                            }

                            if(oEvent.keyCode==38){
                                iNow2--;
                                if(iNow2==-2){
                                    iNow2=aLi2.length-1;
                                }

                                for(var i=0; i<aLi2.length; i++){
                                    aLi2[i].style.background='';
                                }
                                if(iNow2!=-1){
                                    aLi2[iNow2].style.background='#ccc';
                                    oT2.value=aLi2[iNow2].innerHTML;
                                }else{
                                    oT2.value=oldValue2;
                                }
                                return false;
                            }
                        }
                        oT.onclick=function(ev){
                            var oEvent=ev || event;
                            oEvent.cancelBubble=true;
                        }

                        oT2.onclick=function(ev){
                            var oEvent=ev || event;
                            oEvent.cancelBubble=true;
                        }

                        document.onclick = function()
                        {
                            oUl.style.display='none';
                            oUl2.style.display='none';
                        }*/
        });

        $(".search-type").find('li').hover(function () {
            $(this).css("color", "rgb(153, 0, 0);");
        }, function () {
            $(this).css("color", "rgb(153, 0, 0);");
        })
    </script>

</head>
<body>

<script id="toolbar-tpl-scriptId" prod="so" skin="black" src="../../statics/js/content_toolbar.js"
        domain="//so.csdn.net/so/" type="text/javascript"></script>

<div class="topadv">
    <!-- 广告位开始 -->
    <ins data-revive-zoneid="154" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
    <!-- 广告位结束 -->
</div>
<div class="main-container">

    <!--con-l start{-->
    <div class="con-l">
        <ul class="search-type">
            <li>全部</li>
            <!-- 		    	<li>代码片</li> -->
            <li>博客</li>
            <li>论坛</li>
            <li>下载</li>
            <li>头条</li>
            <li>学院</li>
        </ul>
        <div class="search-from2" style="position:relative">
            <form id="search_form_1" name="search_form_1" action="check">
                <div class="search-text-con2" style="position:relative">
                    <input type="text" path="q" class="search-text2" id="keyword" name="q" value="${thing}"
                           autocomplete="off"/>
                    <input type="hidden" id="tt" name="t" value=""/>
                    <input type="hidden" id="ot" name="o" value=""/>
                    <input type="hidden" id="st" name="s" value=""/>
                    <input type="hidden" id="lant" name="l" value=""/>
                    <ul class="search-suggest2" id="search-suggest2" style="top: 32px"></ul>
                </div>
                <div class="search-btn-con2">
                    <input type="Submit" value="搜一搜" class="search-btn2">
                </div>

            </form>

            <div class="search-addition-con">
                <div id="o_news" style="display:none" class="search-addition">
                    <em><input type="radio" name="o1" value="simi" onchange="changeOrder(this.value);"
                               onClick="this.blur();" checked></em><span>按相关度排序</span>
                    <em><input type="radio" name="o1" value="time" onchange="changeOrder(this.value);"
                               onClick="this.blur();"></em><span>按时间排序 </span>
                </div>
                <div id="o_disscus_code" style="display:none" class="search-addition">
                    <em><input type="radio" name="o2" value="simi" onchange="changeOrder(this.value);"
                               onClick="this.blur();" checked></em><span>按相关度排序 </span>
                    <em><input type="radio" name="o2" value="reply" onchange="changeOrder(this.value);"
                               onClick="this.blur();"></em><span>按回复数排序</span>
                </div>
                <div id="o_doc" style="display:none" class="search-addition">
                    <em><input type="radio" name="o3" value="all" onchange="changeDocOrder(this.value);"
                               onClick="this.blur();" checked></em><span>全部</span>
                    <em><input type="radio" name="o3" value="1" onchange="changeDocOrder(this.value);"
                               onClick="this.blur();"></em><span>文档</span>
                    <em><input type="radio" name="o3" value="2" onchange="changeDocOrder(this.value);"
                               onClick="this.blur();"></em><span>代码类</span>
                    <em><input type="radio" name="o3" value="3" onchange="changeDocOrder(this.value);"
                               onClick="this.blur();"></em><span>工具类</span>
                </div>
            </div>
        </div>
        <p class="showinfor" id="showfault" style="display:none"><span>您是不是要找:</span>
            <a href='?p=1&q=ajax&t=&domain=&o=&s=&u=&l=&f=false' id='research'>ajax</a><span>?</span></p>

        <div class="search-list-con csdn-tracking-statistics" data-mod="popu_281" data-dsm="post">

            <c:forEach items="${newList}" var="newList" varStatus="n">
                <dl class="search-list J_search">
                    <dt>
                        <a href="http://blog.csdn.net/zym_zb/article/details/76660730" target="_blank"
                           strategy="SearchFromCsdn">${newList.ntitle}</a>
                        <a href="http://blog.csdn.net/zym_zb/article/details/76660730" target="_blank"
                           strategy="SearchFromCsdn">&nbsp;&nbsp;-&nbsp;fg博客</a>
                    </dt>
                    <dd class="author-time">作者：<a href="http://blog.csdn.net/zym_zb"
                                                  target="_blank">${newList.nauthor}</a>&nbsp;&nbsp;&nbsp;日期：<fmt:formatDate
                            value="${newList.ncreateTime}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;&nbsp;&nbsp;浏览&nbsp;${newList.nview}&nbsp;次
                    </dd>
                    <dd class="search-detail">${newList.ntitle}

                                <span style="width:200px;overflow:hidden;text-overflow:ellipsis;white-space: nowrap">${newList.nconten}...</span></dd>
                    <dd class="search-link"><a href="http://blog.csdn.net/zym_zb/article/details/76660730"
                                               target="_blank">http://blog.csdn.net/zym_zb/article/details/76660730</a>
                    </dd>
                </dl>
            </c:forEach>

        </div>
        <%--<div class="baidu_img"
             style="text-align: center; font-size: 14px; color:#999; line-height:14px; background-color:white; padding-bottom:15px;">
            <span>搜索结果部分由</span>
            <img src="../../statics/picture/baidu_logo.png" style="vertical-align: bottom">
            <span>提供</span>
        </div>--%>

        <div class="csdn-pagination hide-set">
		        <span class="page-nav">
			        <span class="text">共${newListCount}条结果</span>
			        
			        
			        
			        
			        	
							
								
								
									<a href="?p=1&q=ajax&t=&domain=&o=&s=&u=&l=&f="
                                       class="btn btn-xs btn-default active"
                                    >
										1 </a>
								
							
						
	                
			        	
							
								
								
									<a href="?p=2&q=ajax&t=&domain=&o=&s=&u=&l=&f="

                                       class="btn btn-xs btn-default">
										2 </a>
								
							
						
	                
			        	
							
								
								
									<a href="?p=3&q=ajax&t=&domain=&o=&s=&u=&l=&f="

                                       class="btn btn-xs btn-default">
										3 </a>
								
							
						
	                
			        	
							
								
								
									<a href="?p=4&q=ajax&t=&domain=&o=&s=&u=&l=&f="

                                       class="btn btn-xs btn-default">
										4 </a>
								
							
						
	                
			        	
							
								
								
									<a href="?p=5&q=ajax&t=&domain=&o=&s=&u=&l=&f="

                                       class="btn btn-xs btn-default">
										5 </a>
								
							
						<span class="ellipsis">...</span>
	                
			        	
							
								
								
									<a href="?p=11&q=ajax&t=&domain=&o=&s=&u=&l=&f="

                                       class="btn btn-xs btn-default">
										11 </a>
								
							
						
	                
				    
				    
						
							
							
								<a href="?p=2&q=ajax&t=&domain=&o=&s=&u=&l="
                                   class="btn btn-xs btn-default btn-next">&gt; </a>
							
						
					
			        
		        </span>
            <span class="page-go">
			        <span class="text">到第</span>
			        <input type="text" style="width:30px; border:1px solid #ccc;" id="p1" value="1"/>
			        <span class="text">页</span>
			        
						
						
							<button type="button" class="btn btn-xs btn-default btn-go"
                                    onclick="location.href='?p=' + $('#p1').val() + '&q=ajax&t=&o=&s=&u=&l=&f='">GO</button>
						
					
				</span>
        </div>

        <div style="display:none">
            <p class="pointout"></p>
        </div>
        <div class="search-from2">
            <form action="check">
                <div class="search-text-con2" style="position:relative">
                    <input type="text" path="q" class="search-text2" name="q" id="keyword" value="${thing}"
                           autocomplete="off"/>
                    <input type="hidden" id="tb" name="t" value=""/>
                    <input type="hidden" id="ob" name="o" value=""/>
                    <input type="hidden" id="sb" name="s" value=""/>
                    <input type="hidden" id="lanb" name="l" value=""/>
                    <ul class="search-suggest2" id="search-suggest3" style="bottom: 30px;"></ul>
                </div>
                <div class="search-btn-con2">
                    <input type="submit" value="搜一搜" class="search-btn2">
                </div>
            </form>
        </div>
    </div>
    <!--}con-l end-->
    <div class="con-r">
        <div class="rightadv">
            <!-- 广告位：PC端-CSDN搜索结果页视窗1 -->
            <script>
                (function () {
                    var s = "_" + Math.random().toString(36).slice(2);
                    document.write('<div id="' + s + '"></div>');
                    (window.slotbydup = window.slotbydup || []).push({
                        id: '5469520',
                        container: s,
                        size: '300,250',
                        display: 'inlay-fix'
                    });
                })();
            </script>
        </div>
        <div class="rightadv">
            <!-- 广告位：PC端-CSDN搜索结果页视窗2 -->
            <script>
                (function () {
                    var s = "_" + Math.random().toString(36).slice(2);
                    document.write('<div id="' + s + '"></div>');
                    (window.slotbydup = window.slotbydup || []).push({
                        id: '5469534',
                        container: s,
                        size: '300,250',
                        display: 'inlay-fix'
                    });
                })();
            </script>
        </div>
    </div>
</div>
<div id="csdn_pub_footer" class="margin_foot_top" style="padding-top:20px; padding-bottom:20px;text-align: center">

    <script src="../../statics/js/publib_footer-1.0.2.js"></script>
</div>
<%--<script src="../../statics/js/baidu_search-1.1.2.js" type="text/javascript"></script>--%>
<%--<script src="../../statics/js/baidu_site_search.js" type="text/javascript"></script>--%>
<script async="async"
        charset="utf-8"
        data-id="8935aa488dd58452b9e5ee3b44f1212f"
        data-hide-ad-label="0"
        data-div-Style="width: 100%; border: 0px;background-image: url(images/201608021757063065.png);background-repeat: no-repeat;background-position: bottom right;"
        data-img-Style="float:right;width:120px;display:none"
        data-tit-Style="margin-left:-10px;font-family: 'Microsoft Yahei';font-size: 16px;line-height: 20px;margin-bottom: 7px;font-weight: normal;color:#2981a9;"
        data-des-Style="margin-left:-10px;font-size: 14px;color: #666666;margin-bottom: 5px;font-family: microsoft yahei;line-height: 22px;overflow: hidden;"
        id="ydajs"></script>
<script src="../../statics/js/baidu_opensug-1.0.0.js" type="text/javascript"></script>
<script type="text/javascript">
    //var txtObj = document.getElementById("keyword");
    //回调函数，用于获取用户当前选择的文字
    function show(str) {
        // console.log(str);
        // txtObj.innerHTML = str;
    }

    var params = {
        "XOffset": "5",
        "YOffset": "-3",
        "fontSize": "14px",		//文字大小
        "line-height": "30px",
        "padding": "0 5px",
        "borderColor": "#e2e2e2", 	//提示框的边框颜色
        "bgcolorHI": "#cccccc",		//提示框高亮选择的颜色
        "sugSubmit": false		//在选择提示词条是是否提交表单
    };
    BaiduSuggestion.bind("keyword", params, show);
</script>
</body>


</html>