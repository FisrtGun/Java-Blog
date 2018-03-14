/**
 * Created by Administrator on 17-6-9.
 */
$(function() {
    var ajItem = $(".ajlist");
    var t = new Date().getTime();
    ajItem.each(function(){
        var _this = $(this);
        var ajUrl = _this.attr('l') || false;
        if(!ajUrl) return false; else ajUrl =  ajUrl + '?t=' + t;
        var ajLoadingStr = '<p class="loading"><i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i><span class="sr-only">Loading...</span></p>';
        var ajShowLoading = _this.attr('showLoading') || false;
        if(ajShowLoading){
            _this.html(ajLoadingStr);
        }
        $.ajax({
            type: "GET",
            url: ajUrl,
            dataType:'json',
            success: function (data) {
                if(data.status){
                    _this.html(data.html);
                }else{
                    alert(data.msg);
                }

            },
            error : function (data){

            }
        });
    });
    //限时秒杀
    $.ajax({
        type: "GET",
        //url: 'resource/test_seckill.json',
        url: CONFIG_EDU_URLS["ajax_url"]+'home/ajax_spike',
        dataType:'json',
        success: function (data) {
            if(data.status && data.result.length>0){
                var seckillstr = '';
                data.result.map(function(item,index){
                    if(index<4){
                        seckillstr += '<li class="seckill_item"><a href="'+item.link+'" target="_black" title="'+item.name+'"><img src="resource/images/blank178x121.png" class="default"><img class="loading" src="'+item.pic+'" alt=""><span data-endtime="'+item.endtime+'" class="countdown"><em>00:00:00</em></span><span class="title ellipsis-2">'+item.name+'</span><span class="price"><del class="market_price">￥'+item.market_price+'</del><em class="sale_price">￥'+item.promotion+'</em></span></a></li>';
                    }
                });
                $('.second_kill_wrap').html(seckillstr);
                    imgload();
                $('#second_kill').show(function(){
                    setInterval(countdown,1000);
                });
            }else{
                console.log(data.msg);
            }
        },
        error : function (data){
        }
    });
    function imgload(){
        $('.second_kill_wrap img.loading').each(function(){
            var url = $(this).attr('src');
            var _this = $(this);
            loadImage(url,function(){
                _this.parent().find('.default').attr('src',url);
            })
        });
    }
    function loadImage(url, callback) {
        var img = new Image(); //创建一个Image对象，实现图片的预下载
        img.onload = function(){
            img.onload = null;
            callback();
        }
        img.src = url; 
    }
    var count = 0;
    function countdown(){
        count++;
        $('.countdown').each(function(){
            var timeleft = parseInt($(this).data('endtime'));
            updateTime(timeleft-count,$(this));
        });
    }
    function updateTime(ts,ele){
        var d, h, m, s;
        d = Math.floor(ts/(24*3600));
        h = Math.floor((ts%(24*3600))/3600);
        m = Math.floor(((ts%(24*3600))%3600)/60);
        s = ((ts%(24*3600))%3600)%60;
        h<10?h='0'+h:'';
        m<10?m='0'+m:'';
        s<10?s='0'+s:'';
        parseInt(d)>0?h = parseInt(d)*24+parseInt(h):'';
        ts>0?ele.html('<em>'+h+':'+m+':'+s+'</em>'):ele.html('<em>秒杀结束</em>');
    }
});