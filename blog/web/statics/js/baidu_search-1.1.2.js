!function(e){var t,a,n;n={API_SERVER:"//zhannei-dm.csdn.net/",API_KEYWORD_GET_URL:"recommend/baidu_keyword",API_BAIDU_CACHE_URL:"recommend/baidu_zhannei_search",API_STATISTIC_SERVER:"//statistic.csdn.net/",SUB_DOMAIN:["blog.csdn.net","download.csdn.net","bbs.csdn.net","edu.csdn.net","geek.csdn.net"],keyword:"",autorun:!1,install:!0,baiduSearchAPPID:"10742016945123576423",debug:{active:!1,currentUrl:"http://blog.csdn.net/dqcfkyqdxym3f8rb0/article/details/66666666",API_SERVER:"http://devpassport.csdn.net/"}};for(var c in n)"API_SERVER"!=c&&"API_STATISTIC_SERVER"!=c&&c.indexOf("API")>-1&&(n.debug.active?n[c]=n.debug.API_SERVER+n[c]:n[c]=n.API_SERVER+n[c]);a={getRequest:function(e,t){var a,n,c,r={};switch(t=t||"search"){case"hash":a=e.split("#")[1]||"";break;case"search":a=e.split("?")[1]||"",a=a.split("#")[0]}for(c=a.split("&"),n=0;n<c.length;n++)r[c[n].split("=")[0]]=decodeURI(c[n].split("=")[1]);return r},parseCFG:function(){e("script").each(function(t){var c=e(this).attr("src");if(c&&c.indexOf("baidu_search")>-1){var r=a.getRequest(c);return n.keyword=r.keyword||n.keyword,n.autorun="true"==r.autorun,void(n.install="false"!=r.install)}})},autorun:function(){""!=n.keyword?csdn.baiduSearch(n.keyword,function(e){csdn.baiduCacheBuild(n.keyword,e)}):csdn.baiduKeywordGet(function(e){csdn.baiduSearch(e,function(t){csdn.baiduCacheBuild(e,t)})})},trackByGraylog:function(t,a){e.get(n.API_STATISTIC_SERVER+t,a)},filterData:function(e){var t=[];for(var a in e){var n=e[a];if(!/^.*(-IT资源大本营|-专业IT技术发表平台)$/.test(n.title)){var c=n.title;c=c.replace("-<em>CSDN</em>下载",""),c=c.replace("- <em>CSDN</em>下载",""),c=c.replace("-CSDN下载",""),c=c.replace(" - 下载频道 - CSDN.NET",""),c!==n.title,n.title=c,t.push(n)}}return t},removeCurrent:function(e){var t=window.location.href.split("#")[0],a=[];for(var n in e){var c=e[n],r=c.linkUrl.split("?")[0];r!=t&&a.push(c)}return a}},t={baiduSearchInstall:function(e){var t=document.createElement("script");t.type="text/javascript",t.charset="utf-8",t.src="https://gsp0.baidu.com/yrwHcjSl0MgCo2Kml5_Y_D3/api/customsearch/apiaccept?sid="+n.baiduSearchAPPID+"&v=2.0&callback=csdn.afterBaiduSearchInit",t.onerror=function(){a.trackByGraylog("baidu_search_error",{step:"install"}),"function"==typeof csdn.baiduSearchInstallError&&csdn.baiduSearchInstallError()};var c=document.getElementsByTagName("script")[0];c.parentNode.insertBefore(t,c)},afterBaiduSearchInit:function(){return csdn.cse=new BCse.Search(n.baiduSearchAPPID),"function"==typeof csdn.afterCasInit?void csdn.afterCasInit(n.keyword,csdn.cse):void(n.autorun&&a.autorun())},baiduSearch:function(e,t,c,r){if(c)if(c.indexOf("/")>-1)csdn.cse.setSearchRange(3,[c.split("/")[1]]);else{var i=c.split(".csdn.net");i.length>1&&(c=i[0]),csdn.cse.setSearchRange(2,[c+".csdn.net"])}else csdn.cse.setSearchRange(2,n.SUB_DOMAIN);r||(r=1),csdn.cse.getResult(e,function(n){a.trackByGraylog("baidu_search_success"),n=a.filterData(n),csdn.baiduCacheBuild(e,n);var c=a.removeCurrent(n);t(c)},r)},baiduKeywordGet:function(t){e.ajax({url:n.API_KEYWORD_GET_URL,type:"GET",contentType:"text/plain;charset=UTF-8",data:{url:n.debug.active?n.debug.currentUrl:window.location.href,result_size:1},success:function(e){e.length>0&&(n.debug.active,t(e[0].keyword))}})},baiduCacheBuild:function(t,a){var c="?keyword="+t;"2"==csdn.cse.param.ct&&csdn.cse.param.cc.indexOf("%26")==-1?c+="&domain_type="+csdn.cse.param.cc.split(".csdn.net")[0]:"3"==csdn.cse.param.ct&&(c+="&url_type="+csdn.cse.param.cc),e.ajax({url:n.API_BAIDU_CACHE_URL+c,type:"POST",dataType:"text",contentType:"text/plain;charset=UTF-8",data:JSON.stringify(a)})},baiduSearchCFG:n},void 0===window.csdn&&(window.csdn={});for(i in t)window.csdn[i]=t[i];a.parseCFG(),n.install&&csdn.baiduSearchInstall()}($);