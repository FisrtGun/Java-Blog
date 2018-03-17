/**
 * Created by fengjj on 2017/6/21.
 */
//var _hmt = _hmt || [];
//(function() {
//    var hm = document.createElement("script");
//    hm.src = "https://hm.baidu.com/hm.js?6bcd52f51e9b3dce32bec4a3997715ac";
//    var s = document.getElementsByTagName("script")[0];
//    s.parentNode.insertBefore(hm, s);
//})();
//function insertBaiduJS(){
//    var hm = document.createElement("script");
//    hm.src = "https://hm.baidu.com/hm.js?6bcd52f51e9b3dce32bec4a3997715ac";
//    var s = document.getElementsByTagName("script")[0];
//    s.parentNode.insertBefore(hm, s);
//}
(function(window,undefined){
    //通过url 获取查询关键词
    var _csdnDataObj = {};
    var csdnObj = {}
    var _patternArr = ['search_bc_5']
    /****
     * {
     *  key:[num,flag]
     * }
     * key 策略模式
     * num 间隔条数
     * flag 前后顺序  true:csdn在前   false:百度在前
     * **/
    var _patterns = {
        //"search_cb_1":[1,true],
        //"search_cb_2":[2,true],
        //"search_cb_4":[4,true],
        //"search_cb_8":[8,true],
        // "search_bc_1":[1,false],
        // "search_bc_2":[2,false],
        // "search_bc_4":[4,false],
        // "search_bc_8":[8,false]
        "search_bc_5":[5,false]
    }
    var _types = { 
        "codes_snippet":'',
        "blog":"blog",
        "discuss":"bbs",
        "doc":"download",
        "news":"geek",
        "course":"edu"
    }
    csdnObj.configs = {
        keyWord:'',
        url:'//so.csdn.net/so/search0/s.do?q=',
        curPage:1,
        totalPage:1,
        postUrl:'',
        curPatternID:csdnObj.getPatternID,
        curPatetern:'',
        postBaiduDataUrl:'http://ec.csdn.net/search/push?key=',
        type:'all',
        exceptSites:['codes_snippet'],
        author:''
    }
    csdn.cse = null;
    csdnObj.getCookieByKey = function(key){
        var cookie = '';
        var cookieStr = document.cookie || cookie;
        var cookieObj = {};
        cookieStr.split(';').forEach(function(value){
            var arr = value.split('=');
            cookieObj[$.trim(arr[0])] = $.trim(arr[1]);
        })
        return cookieObj[key] || null;
    }
    csdnObj.getPatternID = function(){
        // 生产环境
        var  uuid = csdnObj.getCookieByKey('uuid_tt_dd'),
            id =Math.random()*_patternArr.length;
        if(uuid){
            id = uuid.slice(12,19).replace(/\b(0+)/gi,"");
        }else{
            csdnObj.reportPattern('not_exist');
        }
        return parseInt(id)%_patternArr.length;

        //测试
        //return 3;
    }
    csdnObj.setCurPatternID = function(){
        csdnObj.configs.curPatternID = csdnObj.getPatternID();
    }
    csdnObj.getSearchProps = function(){
        if(window.location.search.split('?')[1]){
            var searchArr = decodeURIComponent(window.location.search).split('?')[1].split('&');
            var len = searchArr.length;
            var searchObj = {}
            if(len>0){
                searchArr.forEach(function(searchItem){
                    searchObj[searchItem.split('=')[0]] = searchItem.split('=')[1]
                })
            }
            csdnObj.configs.keyWord = (searchObj['q'] && (searchObj['q'] != 'null'))?searchObj['q']:'';
            csdnObj.configs.curPage = (searchObj['p'] && (searchObj['p'] != 'null'))?searchObj['p']:1;
            csdnObj.configs.type = (searchObj['t'] && (searchObj['t'] != 'null'))?searchObj['t']:"all";
        }else{
            return ;
        }
    }
    //数据渲染成功后引入统计系统
    //function addTracking(){
    //    var script = document.createElement("script");
    //    script.type = "text/javascript";
    //    script.charset = "utf-8";
    //    document.body.appendChild(script);
    //}
    csdnObj.getSearchInfoHandle = function(data){
        csdnObj.configs.totalPage = data.totalNum;
    }
    csdnObj.getBaiduDataFailed = function(flag){
        if($('.search-list-con').find('.J_search').length > 0){
            //只有csdn的数据,没有百度的数据
            csdnObj.reportPattern('search_csdn');
            csdnObj.setStrategy();
        }else{
            //csdn 百度的数据均没有
            csdnObj.reportPattern('search_0');
        }
    }
    csdnObj.errorHandle = function(err){

        if(!err.status && err.reason !== 'Success!'){
            csdnObj.getBaiduDataFailed(false);
        }
    }
    //处理结果回调函数示例
    csdnObj.display = function(data){
        // 生产环境代码
        csdn.cse.getSearchInfo(csdnObj.configs.keyWord,csdnObj.getSearchInfoHandle)
        csdn.cse.getError(csdnObj.errorHandle);
        if(data && data.length>0){
            csdnObj.setCsdnDataObj();
            var _baiduDataArray = csdnObj.distinct(data);
            if(_baiduDataArray.length>0){
                csdnObj.patternHandle(_baiduDataArray);
            }else{
                csdnObj.reportPattern('search_csdn')
            }
        }else{
            if($('.search-list-con').find('.J_search').length>0){
                csdnObj.reportPattern('search_csdn')
            }else{
                csdnObj.reportPattern('search_0')
            }
        }
        //为搜索结果list 增加策略
        csdnObj.setStrategy();
        resultListAdInsert();
    }
    csdnObj.loadBaiduData = function(cse){
            if(csdnObj.configs.type !== 'all'){
                csdn.cse.setSearchRange(2,[_types[csdnObj.configs.type]+'.csdn.net'])
            }
            if(csdnObj.configs.author){
                csdn.cse.setSearchRange(3,[csdnObj.configs.author]);
            }
            cse.getResult(csdnObj.configs.keyWord,csdnObj.display,csdnObj.configs.curPage);
        //模拟
        //csdnObj.display();
    }
    csdnObj.loadScript = function(){
        var script = document.createElement("script");
        script.type = "text/javascript";
        script.charset = "utf-8";
        script.src = "http://zhannei.baidu.com/api/customsearch/apiaccept?sid=10742016945123576423&v=2.0&callback=loadBaiduData";
        script.onerror = function(){
            csdnObj.getBaiduDataFailed(true);
        }
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(script, s);
    }
    //_csdnDataObj key = url value = boolean  为了去重所用
    csdnObj.setCsdnDataObj = function(){
        $('.J_search').each(function(){
            var url = $(this).find('dt').find('a').eq(0).attr('href')
            _csdnDataObj[url] = true;
        })
    }
    //修改每个a标签上的strategy
    csdnObj.setStrategy = function(){
        $('.search-list-con .J_search').each(function(index){
            $(this).find('a').attr('strategy',csdnObj.configs.curPatetern+'_'+index)
        })
    }
    //提交当前用的什么模式
    csdnObj.reportPattern = function(patternStr){
/*        csdnObj.configs.curPatetern = patternStr;
        var img = new Image();
        img.src = 'http://csdnimg.cn/Judiciary.png?'+patternStr;
        img.onload = img.onerror = function(){
            img.onload = img.onerror = null;
            img = null;
        }*/
    }
    //去重
    csdnObj.distinct = function(data){
        return  data.filter(function(obj){
            return !_csdnDataObj[obj['linkUrl']];
        })
    }
    //不同模式展示处理
    csdnObj.patternHandle = function(data){
        //console.log('pattern id',csdnObj.configs.curPatternID,_patterns[_patternArr[csdnObj.configs.curPatternID]])
        var $csdnDl = $('.search-list-con').find('.J_search'),
            num = _patterns[_patternArr[csdnObj.configs.curPatternID]][0],
            order = _patterns[_patternArr[csdnObj.configs.curPatternID]][1],
            count = 0,
            $frag = $('<div></div>'),
            csdnLen = $csdnDl.size(),
            baiduLen = data.length,
            insertIndex = 0;
        //csdn的数据为空时 将百度的数据直接插入
        if(csdnLen == 0){
            //上报此时只有百度的数据
            csdnObj.reportPattern('search_baidu')
            data.forEach(function(obj,index){
                var $dl = $('<dl class="search-list J_search"></dl>'),
                    $dt = $('<dt></dt>'),
                    $a = $('<a></a>');
                $a.attr('href',obj['linkUrl']).attr('target','_blank').html(obj['title']);
                $dt.append($a);
                $dl.append($dt);
                var $dd_abstract = $('<dd class="search-detail"></dd>').html(obj['abstract']);
                $dl.append($dd_abstract);
                var $dd_dispUrl = $('<dd class="search-link"></dd>'),
                    $a_dispUrl = $('<a></a>').attr('href',obj['linkUrl']).attr('target','_blank').html(obj['linkUrl']);
                $dd_dispUrl.append($a_dispUrl);
                $dl.append($dd_dispUrl);
                $frag.append($dl);
            })
            $('.search-list-con').append($frag.children());

            return false;
        }
        //两方数据皆有 上报
        csdnObj.reportPattern(_patternArr[csdnObj.configs.curPatternID])
        //csdn baidu 数据穿插
        data.forEach(function(obj,index){
            var $dl = $('<dl class="search-list J_search"></dl>'),
                $dt = $('<dt></dt>'),
                $a = $('<a></a>');
            $a.attr('href',obj['linkUrl']).attr('target','_blank').html(obj['title']);
            $dt.append($a);
            $dl.append($dt);
            var $dd_abstract = $('<dd class="search-detail"></dd>').html(obj['abstract']);
            $dl.append($dd_abstract);
            var $dd_dispUrl = $('<dd class="search-link"></dd>'),
                $a_dispUrl = $('<a></a>').attr('href',obj['linkUrl']).attr('target','_blank').html(obj['linkUrl']);
            $dd_dispUrl.append($a_dispUrl);
            $dl.append($dd_dispUrl);
            $frag.append($dl);
            count++;
            if(csdnLen === baiduLen){ //去重以后csdn的搜索结果和 百度搜索结果条数相同
                if(!order){
                    if(count == num){
                        insertIndex = (index+1)-num;
                        $frag.children().insertBefore($csdnDl.eq(insertIndex));
                        count = 0;
                    }else if((index+1) == baiduLen){
                        insertIndex = baiduLen - (index+1)%num;
                        $frag.children().insertBefore($csdnDl.eq(insertIndex));
                    }
                }else{
                    if(count == num){
                        insertIndex = index;
                        $frag.children().insertAfter($csdnDl.eq(insertIndex));
                        count = 0;
                    }else if((index+1) == baiduLen){
                        insertIndex = csdnLen-1;
                        $frag.children().insertAfter($csdnDl.eq(insertIndex));
                    }
                }
            }else if(csdnLen < baiduLen){ //去重以后csdn的搜索结果 小于 百度搜索结果条数相同
                if(!order){// 百度在前
                    if(count == num){
                        if( (index-num) > csdnLen){
                            $csdnDl.eq(0).parent().append($frag.children())
                        }else{
                            insertIndex = (index+1)-num;
                            $frag.children().insertBefore($csdnDl.eq(insertIndex));
                            count = 0;
                        }
                    }else if((index+1) >= baiduLen){
                        //insertIndex = csdnLen - 1;
                        $csdnDl.eq(0).parent().append($frag.children())
                        //$frag.children().insertBefore($csdnDl.eq(insertIndex));
                    }
                }else{ //csdn在前
                    if(count == num){
                        if((index+1)>=csdnLen){
                            insertIndex = csdnLen - 1;
                        }else {
                            insertIndex = index;
                        }
                        $frag.children().insertAfter($csdnDl.eq(insertIndex));
                        count = 0;
                    }else if((index+1) >= csdnLen){
                        insertIndex = csdnLen-1;
                        $frag.children().insertAfter($csdnDl.eq(insertIndex));
                    }
                }
            }else { //去重以后csdn的搜索结果 大于 百度搜索结果条数相同
                if(!order){
                    if(count == num){
                        insertIndex = (index+1)-num;
                        $frag.children().insertBefore($csdnDl.eq(insertIndex));
                        count = 0;
                    }else if((index+1) == baiduLen){
                        insertIndex =(index+1)-count;
                        $frag.children().insertBefore($csdnDl.eq(insertIndex));
                    }
                }else{
                    if(count == num){
                        insertIndex = index;
                        $frag.children().insertAfter($csdnDl.eq(insertIndex));
                        count = 0;
                    }else if((index+1) == baiduLen){
                        insertIndex = index+num-count;
                        $frag.children().insertAfter($csdnDl.eq(insertIndex));
                    }
                }
            }


        })
    }
    csdnObj.postBaiduData = function(data){
        $.ajax({
            type: "POST",
            dataType:'text',
            url: csdnObj.configs.postBaiduDataUrl+csdnObj.configs.keyWord+'&type=so',
            data:JSON.stringify(data),
            success: function(msg){
                //console.log('success')
                //csdnObj.reportPattern('success');
            },
            error:function(err){
                //console.log(err)
                //csdnObj.reportPattern('error');
            }
        });
    }
    csdnObj._types=_types;
    window.loadBaiduData = csdnObj.loadBaiduData;
    csdnObj.init = function(opts){
        csdnObj.getSearchProps();
        //referrer 为blog站点时在url中解析author
      
		if(document.getElementById('user_get')){
			csdnObj.configs.author = document.getElementById('user_get').value;
		}	
        if(csdnObj.configs.exceptSites.indexOf(csdnObj.configs.type)>-1){
            return false;
        }
        // csdnObj.loadScript();
        csdnObj.setCurPatternID();
    }
    window.csdnObj = window.csdnObj || {};
    window.csdnObj.init = csdnObj.init;
    window.csdnObj.init();
    window.csdnObj=csdnObj;
})(window)


if (window.csdn === undefined) {
    window.csdn = {};
}
//重新定义百度Cas对象初始化操作
csdn.afterCasInit=function (keyword,cse) {
    var domain="";
    if(csdnObj.configs.type !== 'all'){
        domain=csdnObj._types[csdnObj.configs.type];
    }
    if(csdnObj.configs.author){
        domain="/"+csdnObj.configs.author;
    }
    csdn.baiduSearch(keyword,function(data){
        csdnObj.display(data);
    },domain,csdnObj.configs.curPage)
}

//重新定义百度Cas对象初始化操作
csdn.baiduSearchInstallError=function () {
    resultListAdInsert();
}


function resultListAdInsert(){
    var $list=$(".J_search");
    var startIndex=2;
    var step=5;
    var adArray=[];
    $list.each(function(i){
        if(i==startIndex||(i-startIndex)%step==0){
            var id="_yd_ad_"+(adArray.length+1);
            var adTpl='<dl class="search-list yd_a_d_so" id="'+id+'"></dl>';
            $(this).after(adTpl);
            adArray.push(id);
        }
    });
    if(adArray.length>0){
        $("#ydajs").attr("data-insert-nodes",adArray.join(","));
        $("#ydajs").attr("src","//shared.ydstatic.com/js/yatdk/3.0.0/stream.js");
    }

}