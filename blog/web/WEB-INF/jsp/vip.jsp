<%--
  Created by IntelliJ IDEA.
  User: kgc
  Date: 2018/3/13
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<!-- saved from url=(0033)http://download.csdn.net/vip_code -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<script async=""
            src="http://order.csdn.net/get_status?callback=get_pay_status&amp;order_number=302018031015283854923&amp;type=3&amp;flag=6&amp;t=1520666951203&amp;is_ajax=1&amp;_=1520666951204"></script>
    &lt;!&ndash;<script charset="utf-8" src="./VIP会员支付_files/b.js"></script>&ndash;&gt;-->
    <!-- <script charset="utf-8" src="./vipjs/b.js"></script>-->
    <script type="text/javascript" charset="utf-8" src="../../statics/vipcss/apiaccept"></script>
    <!-- <script src="./VIP会员支付_files/push.js"></script>-->
    <!--<script src="./vipjs/push.js"></script>-->

    <title>VIP会员支付</title>
    <meta content="always" name="referrer">

    <meta name="description" content="下载频道 - CSDN.NET">
    <meta name="keywords" content="">
    <meta name="author" content="CSDN">
    <meta name="Copyright" content="CSDN">
    <link rel="apple-touch-icon" href="http://csdnimg.cn/public/favicon.ico">
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <!--<script src="./VIP会员支付_files/hm.js"></script>-->
    <!--<script src="./vipjs/hm.js"></script>-->
    <script type="text/javascript">
        var dl_cdn_url = '//csdnimg.cn/release/download';
        var query_tag = '';
        var needInsertBaidu = false;
    </script>
    <!--    <link rel="stylesheet" href="./VIP会员支付_files/content_toolbar.css">-->
    <link rel="stylesheet" href="../../statics/vipcss/content_toolbar.css">
    <!-- <link rel="stylesheet" href="./VIP会员支付_files/font-awesome.min.css">-->
    <link rel="stylesheet" href="../../statics/vipcss/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="./VIP会员支付_files/bootstrap.css">-->
    <link rel="stylesheet" href="../../statics/vipcss/bootstrap.css">
    <!--<link rel="stylesheet" href="/css/iconfont.css?/v=">-->
    <!--<link rel="stylesheet" href="./VIP会员支付_files/common.css">-->
    <link rel="stylesheet" href="../../statics/vipcss/common.css">
    <!--<link rel="stylesheet" href="./VIP会员支付_files/download_new.css">-->
    <link rel="stylesheet" href="../../statics/vipcss/download_new.css">
    <!--<script src="./VIP会员支付_files/jquery-1.11.1.min.js" type="text/javascript"></script>-->
    <!--<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>--> <!--解决出现两条工具栏（标题栏）-->
    <!--<script type="text/javascript" src="./js/libs.js"></script>-->
    <!-- <script type="text/javascript" src="./js/sigleMin.js"></script>-->

    <!-- <script type="text/javascript" src="./js/placeholder.js"></script>-->
    <!--<link rel="canonical" href="http://download.csdn.net/vip_code">-->
    <!-- 请置于所有广告位代码之前 -->
    <!--  <script src="./js/ds.js"></script>-->

    <link rel="stylesheet" type="text/css" href="../../statics/vipcss/goTop.min.css">
    <style type="text/css"></style>
    <style type="text/css"></style>
    <!--<script type="text/javascript" charset="utf-8" src="./js/tracking-1.0.2.js"></script>
    <script type="text/javascript" charset="utf-8" src="./js/main-1.0.2.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="v=201803091828"
            src="./js/download.config.js"></script>-->
    <!--<style type="text/css"></style>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/showHide"
             src="./jss/showHide.js"></script>-->
    <!--  <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/tab"
              src="./js/tab.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/followMenu"
            src="./js/followMenu.js"></script>-->
    <!--  <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/show"
              src="./js/show.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/hide"
             src="./js/hide.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/securityHide" src="./js/securityHide.js"></script>-->
    <!--  <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
              data-requiremodule="apps/PreviewImage" src="./js/PreviewImage.js"></script>-->
    <!--   <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
               data-requiremodule="apps/_getCookieValue" src="./js/_getCookieValue.js"></script>-->
    <!--   <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/uploadImg"
               src="./js/uploadImg.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
             data-requiremodule="apps/_verificaUser" src="./js/_verificaUser.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/Download"
             src="./js/Download.js"></script>-->
    <!--  <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/praiseFn"
              src="./js/praiseFn.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/dlFunc"
            src="./js/dlFunc.js"></script>-->
    <!-- <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/attention"
             src="./js/attention.js"></script>-->
    <!--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="apps/dlReport"
            src="./js/dlReport.js"></script>-->
</head>
<body>

<%--<div class="csdn-toolbar csdn-toolbar tb_disnone ">
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
        <div class="pull-right login-wrap ">
            <ul class="btns">
                <li class="toolbar-tracking csdn-tracking-statistics tracking-click" data-mod="popu_369"><a
                        href="http://download.csdn.net/vip_code#" style="padding:0" target="_blank"></a></li>
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
                                                                                                src="../../statics/vipimage/2_caibaozi0521.jpg">
                        <div class="toolbar-circle" style="display: block;"></div>
                    </a></div>
                    <div class="userControl">
                        <div><a href="http://blog.csdn.net/caibaozi0521" target="_blank">我的博客</a></div>
                        <div><a class="xiaoxi" href="http://msg.csdn.net/" target="_blank">消息<span class="toolbar-newsL"
                                                                                                   style="margin-left: 4px; display: inline;">(2)</span></a>
                        </div>
                        <div><a href="http://my.csdn.net/my/account/changepwd" target="_blank">设置</a></div>
                        <div><a href="http://bbs.csdn.net/forums/Service" target="_blank">反馈</a></div>
                        <div><a href="http://oldblog.csdn.net/home/help.html" target="_blank">帮助</a></div>
                        <div><a href="http://passport.csdn.net/account/logout">退出</a></div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>--%>
<jsp:include page="common.jsp" flush="true"></jsp:include>
<script src="static/vipjs/goTop-v1.0.min.js"></script>
<%--<script type="text/javascript" src="static/vipjs/content_toolbar.js"></script>--%>
<!--&lt;!&ndash; 百度自动推送工具代码 &ndash;&gt;
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = '//zz.bdstatic.com/linksubmit/push.js';
        } else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>-->


<script type="text/javascript">
    //            var protocol = window.location.protocol;
    //             document.write('<script type="text/javascript" src="' +protocol+ '//csdnimg.cn/pubfooter/js/repoAddr2.js?v=' + Math.random() + '"></'+'script>');
</script>
<div class="news-nav">
    <div class="container clearfix">
        <div class="nav-bar">
            <a href="https://download.csdn.net/">首页</a>
            <a class=" " href="https://download.csdn.net/album">精品专辑</a>
            <a href="https://download.csdn.net/rankings">排行榜</a>
            <!-- <a href="https://download.csdn.net/help" >帮助</a> -->
            <!--<a href="https://download.csdn.net/advanced_search" >高级搜索</a>  -->
            <%--<a class=" current" href="https://download.csdn.net/vip_code">VIP</a>--%>
            <a class=" current" href="vip">VIP</a>
            <a href="https://download.csdn.net/my">我的资源</a>
            <a class=" " href="https://download.csdn.net/upload">上传资源赚积分</a>

            <a class=" " href="https://download.csdn.net/my/downloads">已下载</a>
            <a class=" " href="https://download.csdn.net/my/favs">我的收藏</a>
        </div>
        <div class="search-download">
            <a href="https://download.csdn.net/help" class="help"><i class="fa fa-question-circle"></i>下载帮助</a>
        </div>
    </div>
</div>


<!-- //toolbar nav -->


<script type="text/javascript" src="static/vipjs/cart_jsonp.js"></script>
<script src="static/vipjs/qrcode.js"></script>
<script src="static/vipjs/ab.plus.js"></script>
<link rel="stylesheet" href="../../statics/vipcss/download_profile.css">
<script>
    adhoc('init', {
        appKey: 'ADHOC_4d912fda-3edb-4e60-aa30-528bb5fddcb6',
        crossDomain: 'csdn.net'
        //defaultFlags: {isNewHomePage: false} //仅用于编程模式：设置试验变量默认值（获取试验变量失败时使用）
    })
</script>
<!--<script type="text/javascript">
    $(function () {
        $('.vip_buy_t_r .vip_pay strong').html($('.card_cur').attr('data-val') + '元');
        query_order_info();
        $(".vip_card_wrap").each(function () {
            $(this).on('click', function () {
                $('.vip_buy_t_l_t').find('dl').removeClass("card_cur");
                $(this).addClass("card_cur");
                $('.vip_buy_t_r .vip_pay strong').html($(this).attr('data-val') + '元');
                //二维码显示
                query_order_info();
            })
        })
    });

    //生成二维码
    function generate_code(container_id, code_url) {
        //参数1表示图像大小，取值范围1-10；参数2表示质量，取值范围'L','M','Q','H'
        var qr = qrcode(6, 'M');
        qr.addData(code_url);
        qr.make();
        $("#" + container_id).html(qr.createImgTag(3, 3));

        if (container_id == "wechat_payment") {
            $("#" + container_id).html($("#" + container_id).html());
        } else {
            $("#" + container_id).html($("#" + container_id).html());
        }
    }

    function show_pay_code(type, data) {
        if (data.status != 1) {
            alert('二维码获取失败,请刷新页面后重试!');
            return false;
        }
        generate_code('wechat_payment', data.wxpayurl);
        generate_code('zhifubao_payment', data.alipayurl);
    }

    function show_pay_error(data) {
        //alert('二维码获取失败,请刷新页面后重试!');
        if (window.console && console.log) {
            console.log(data.status + " show_pay_error");
        }
    }


    function show_pay_timeout() {
        $('.vip_pay_list').find('li').show();
        if (confirm("二维码已过期，刷新页面重新获取")) {
            query_order_info();
        } else {
            $("#notify").find('p').html("<a href='/vip_code' >点击重新获取</a>");
            $("#wechat_payment").html('<img src="//csdnimg.cn/pubstaticsatic/img/csdn-userimg250.gif" width="131" height="131"/>');
            $("#zhifubao_payment").html('<img src="//csdnimg.cn/pubstaticsatic/img/csdn-userimg250.gif" width="131" height="131"/>');
        }
    }

    function query_order_info() {
        $('.vip_pay_list').find('li').show();
        $("#notify").hide();
        var is_edu_vip = $('#is_edu_vip').val();
        var buy_num = 1;
        var product_id = $('.card_cur').attr('product-id');
        var goods_id = $('.card_cur').attr('goods-id');
        var flag = $('.card_cur').attr('flag');
        if (goods_id == '2607' && is_edu_vip == '1') {
            $('.vip_pay_list').find('li').hide();
            $("#notify").find('p').html('已开通');
            $("#notify").show();
        } else {
            $("#wechat_payment").html('<img src="//csdnimg.cn/release/download/old_static/images/loading.gif" width="131" height="131"/>');
            $("#zhifubao_payment").html('<img src="//csdnimg.cn/release/download/old_static/images/loading.gif"  width="131" height="131"/>');
            cart.scan_pay(product_id, goods_id, buy_num, 3, flag, show_pay_code, show_pay_error, show_pay_timeout);
        }


    }
</script>-->
<div class="home_page_wrap">
    <input type="hidden" value="0" id="is_edu_vip">
    <div class="main container">
        <!--购买下载频道VIP-->
        <div class="vip_buy_wrap">
            <div class="vip_card_buy vip_buy_top clearfix">
                <div class="vip_buy_t_l">
                    <div class="vip_buy_t_l_t clearfix" style="padding: 10px 0">
                        <dl class="vip_card_wrap" flag="6" data-val="168.00" goods-id="2607" product-id="1361">
                            <dt><img src="../../statics/vipimage/vip_edu.png" alt="img">
                                <img src="../../statics/vipimage/hot_buy.png" alt="img" class="hot_buy">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>下载VIP+ CSDN学院会员：1000+专区课程免费观看</h5>
                                <h3>168.00元</h3>
                            </dd>
                        </dl>
                        <dl class="vip_card_wrap card_cur" flag="6" data-val="199.00" goods-id="2640" product-id="1394">
                            <dt><img src="../../statics/vipimage/GitChat.jpg" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>下载VIP+GitChat &amp;《程序员》季卡：学习资源一步到位【原价331元，春季限时特惠】</h5>
                                <h3>199.00元</h3>
                            </dd>
                        </dl>
                        <dl class="vip_card_wrap" flag="6" data-val="128.00" goods-id="2002" product-id="935">
                            <dt><img src="../../statics/vipimage/vip_card_year.png" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>下载VIP年卡：原价300多 只卖128￥</h5>
                                <h3>128.00元</h3>
                                <p>1200次/年</p>
                            </dd>
                        </dl>
                        <dl class="vip_card_wrap" flag="6" data-val="78.00" goods-id="2622" product-id="1376">
                            <dt><img src="../../statics/vipimage/vip_card_season_new.png" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>下载VIP季卡：300个资源免积分下载</h5>
                                <h3>78.00元</h3>
                                <p>300次/3个月</p>
                            </dd>
                        </dl>

                    </div>
                    <div class="vip_buy_t_l_t clearfix" style="padding: 10px 0">
                        <dl class="vip_card_wrap" flag="5" data-val="98.00" goods-id="514" product-id="1">
                            <dt><img src="../../statics/vipimage/vip_c.png" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>C币250枚</h5>
                                <h3>98.00元</h3>
                            </dd>
                        </dl>
                        <dl class="vip_card_wrap" flag="5" data-val="198.00" goods-id="516" product-id="1">
                            <dt><img src="../../statics/vipimage/vip_c.png" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>C币1000枚</h5>
                                <h3>198.00元</h3>
                            </dd>
                        </dl>
                        <dl class="vip_card_wrap" flag="5" data-val="298.00" goods-id="520" product-id="1">
                            <dt><img src="../../statics/vipimage/vip_c01.png" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>C币3000枚</h5>
                                <h3>298.00元</h3>
                            </dd>
                        </dl>
                        <dl class="vip_card_wrap" flag="5" data-val="398.00" goods-id="515" product-id="1">
                            <dt><img src="../../statics/vipimage/vip_c01.png" alt="img">
                                <div class="card_mask"></div>
                            </dt>
                            <dd>
                                <h5>C币5000枚</h5>
                                <h3>398.00元</h3>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="vip_buy_t_r">
                    <div class="vip_pay"><span>支付金额</span><strong>199.00元</strong></div>
                    <ul class="vip_pay_list">
                        <li class="vip_list_fir">
                            <div class="pay_erweima" id="wechat_payment"><img
                                    src="data:image/gif;base64,R0lGODdhgQCBAIAAAAAAAP///ywAAAAAgQCBAAAC/4yPqcvtD6OctNqLs968+w8B4kiW5mSOx8mobQoobjDDNinfNwqvZTPLpYS+mEG3SyBtvOHx9zIumEpRsbiEIoIPLs0avT6lWPA3a2ZtzSH2uEkMv+dr3BhdJtPb+jO82ifmt3eXhmZoV/enWJhY0xP1mJgnKShU2YjJeKYmqXaJ6EU1SAoq5aklGpq6OgmI2jeqaSoo60Zqe6qVZ9mFSPt6CztLl8sbrBsoV9oIvGkMSPnbjNzrQMwpvFsMyYzbPTw9BU7u2A3Uih2eLM0eyeqUnfy5DP1c3m6dn9m6f50uTl89bco21bq16GDBOAZ9uWs4LlbACqoe8mF4kZA3jP/cFjpk6AWdxEOaSooz+RClQpIjWSp82RHmt5QnWRJ0GTPnTJkqddpEuIFeHZSjeN4ECsKC0GMzi/o86jGphKXUmp572hJphnVU5cHyZ61iSGROI7brmmsdR29dz24zyy+eqa9x14rVGrct2bd6hyIVOtYvzcFKdTjjExgwXnlGLU41XO2xK8FrnfXc6BDnvXkERYa9yvjd5LlZQPaLNjDrZLSgSS8xzXmkZ41lWcul+Bce09kR6XrlO1FDYt1VeVuGVzv41tzmYmfsffr3auWpuQK8vRnJYZ0ihzvPe9222+nkBVKuHj796I7aI29GzPw57JVvzSd3LF38x9T012P/lj7fXtiZZ19NsXnXHXD44SHaeI0h6J5mnSDXWYSQ7VQcauflV45viqnmIFYQbighhd9BtFtmBrrGInfu8WZbYMctCJo93snIHnM4khjcfRPilyJcof1zSIAbwghVixfsqJlMQRoZZFkJidbeey/ydyWAGIzoY4VCXnaXf1VWliN5FSFJGG2tgVcQlzUqiGZjSro2YpQXEljVh4Wp5qGOUOmp4ol4CunPjwnyCWegdkZlV4fUCWbjdYu6eWCSilKJT5m+PSmigkzWxyaYjoKIpZZHNqhhmD+u+memhGZpaKkhmvphlXXCStyXrTbHKqLx3HrqkDse2t+swIJVV565/zZBlHoFtvnmryYOOiNTtsaHqa/WLitgo7KlaimHSQRLJnTlafgZjbyStN2rRAIK0ZlqrltkluUaV6aSwyZLrmTbRiXvkIUuhqzAuJ346bcG00owv5xG0Ce0Nj3sZL78UhrwoQwuDKXFDEu8KHz1cgyuwr1iUyy6AsIr8r/XKjxorObex2x0G2esUbXZsnypsKXNe6+yAOeaVqJsgWrqszSjahW9AYepsZd0Sm1hpVZ3THLSObMZ9NEw7/dxr8+6HB2+Xi9SNL1jC73pMumiPWrEaEa8b9NrY0hkuqqW7WLeQse5tZXBpo313I9eBvjgo2ItZdUDp4l3wSn/J7njF/+v2HfjdgdeOY9XY1Wx1tk9qvRPop5LwdMGHhvqz3jzDLGXzYK8M7udfh27yatj627CMSM9O9QZ+t37Yijbe7vwWZeLs65Di7m7mXwTvzfCd7YOZOCmU6qvibVeyLq4Y5bcvdOegs/71K9J1fe/Zhd8/MdSxS8z89GW3tz8h3OLosPtX+6r8S3MHmRb3+sw9y7bKU5apBIf0RCYsCYNj4Bsc93pfscojzXve/nTHvCu1z/nqSNcj8Nf1KCXwc2dDVcMNGHtaCc/D/rnOcobz9JE+ECJ1Y1x5xvZ3SKlw4Y5r12ms9/nVKizA6qLgy4cXQezJrMLdsty5oJNFD/4RClzQipcN5KdqwRoxf0972T860/wkDa58D2Ogk484ww1mL5sGSuOxGsZANmYRhCqUWUJPOLLDGe15lGLc1Uj4xPDGEiqbdGAhoxg9OQmw5qNrJHGy6HY/ke5laHPfG/0mR9z+D72iXKUpCylKU+JylSq8pQFAAA7"
                                    width="129" height="129"></div>
                            <p>微信支付</p>
                        </li>
                        <li>
                            <div class="pay_erweima pay_zhifubao" id="zhifubao_payment"><img
                                    src="data:image/gif;base64,R0lGODdhgQCBAIAAAAAAAP///ywAAAAAgQCBAAAC/4yPqcvtD6OctNqLs968+w8B4kiWpnIa47Sq4tEGMWy+T42nSM7be0kDsHyxoi+oa/R4qCWuSQoOhS6qjHisJhnOZ2J2y16jYfIYPLagjdaQGK18A8vstdjdrkol9ryjD/c1dybnhwe1F9GHNFjXeEcHmaanNYhYabaIycaYKRlndjlJGCpolZOYiEpJylmx9XOKVQPa6RprO9uZWxq7NAW8qWvKq/rIxNUVrDiro9k6TMobCE3L90ksLOvn6Lkt+ls2Lbk6Wv58Hm2M/NfstZC+7VxYzIrec6hNHV8/mipujx5Af9e4kcOGKxuzb6z+wVNXUJTEgQ5rBTRoSCE1i/8JH2b0CKWLt3UkL5Y0F62byJAiU7pkiBLmrZnuWrK0aTJnzJM0ZdZcCaIaxyn7LAU9erPoR1BKNyIFUW7iwqYIn8YM106ewKz91ql8xxEoV0xSwYG9+NXa2GqwzPZyetVoXK3s1JwVamoe3Vtea4aViwdWVG19R2o8pnTXq7uD8c7li9ZvMrpM3zUeV3eyYoI7CWvOa/ku5suHDXdMO1Tfz4Mt4XZz2LNtw8+c+ZEF7U0wY3y3pQ0EdGxzv8bEefs+/hejXuGeHXdVTbl3ZSdun4OMjHGzXsgexfIUXZr5XO3BI1EP3zy5+Ne9l0/mDv/lSbeka1d9D7Hzafmz92f/7lhRQfHB9J1PH6WVmEJ25VYeZzetdx+A7RXiGmINVshgdospl59svqxmYGCSSbjQg/15CBtrqEnHon/WzbdhWROqpVsvBXrI3TIBHhcPcAe+hGN+GfiY1IijCdlfdelFhFuR0X3IToJrrUgBkbixB6Vt100JoohPOnnkj2LWWJiWJiJ3JYhBjilXbMZR9WWae4Hn4JL6ifVMmG6KeWZrcW65ppNaBtokdNshhKVUfhaWGo+tiUcfol3qNGCN7tXp6JxLlXZpT2DKCSOUZUZIpacn7kYjkpm+qOCMjZ6pXqGi4sehhrNiiiGGKb4FWItkyirldPnYx6uNvrapDHqO/2FFpaIXUgjtf3siCGSvxJp6a5hKLvvmpFuSR2CL4FqHZaI6YTaqsVlNu1WnyIbLVrVqESXvPab9em1omsLVqI+LynnpsOPK2m+0/2apr46uEkzbrn76mzCTt1p5gbvqeocdxLbiu+Ce0xWn6af+5bmhx7SCTC6qEPLZKrHpwioudgUu6OzG3q4spcU7Fmzrje9SHGmISZpHMppV8ofwxdbKmHTN/NJWKZ0otiyywxFuqzGcCq/1cszrsub0uztTlLGRAoLdMspDl8iphZt2hzaJamP68cOmeXkwnvVKanfEU9mtLaV06pks3QAXrreBaxb99MRxV91w22z2vLawa//DqSvU1nJcOa07Ys53cjkjDXLAMyZObbFY711r1PvqmzrjpN/cHMV5uz231W8PCDO38BJea9i7dxityDka+vNWkCqru/GqHrxy0Isrr3nwh+PksuTTUw5o8dcnXjO6nlPN/LF93+0B6ELfabDZJI5dsYrPrq/x8rheLbHz9BOfqtIsJ40V8bFPdTFSlukAaBwBmux9ZBvg8eIlrW4pjnpsc9HCvvWbuOVKg94K1uVI9TxV2Y9dvzvV/4Y1uuH5r2v34x4LS4W4wnHgdv8bFOwkGMAN0FB08ztUlGSow0d9MGRlK9YD+6Sm2UWQiI9JXgnhNsH+pcteFiudCIGVxP1vLXE4SrQXF1snv/6lUGcyM6DfWAXBEXawi+1aIxgn58NXRQ6DAxSU++qTQwbSMXzngg7ONpdA8u0xbUhToBPVh0gcPk6QeFOi/ep2HqN9Dn9NE9yfGhlJQg3yb/eSl1U+CcpQinKUpCylKU/5gQIAADs="
                                    width="129" height="129"></div>
                            <p>支付宝支付</p>
                        </li>
                        <li id="notify" style="display: none;">
                            <p><a href="http://download.csdn.net/vip_code">点击重新获取</a></p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="intro_contact clearfix" style="padding: 0;margin: 20px 10px">
                <div class="intro_contact_l" style="width: 100%">
                    <h4 class="vip_buy_com">使用说明：</h4>
                    <ul class="intro_list">
                        <li><i class="fa fa-caret-right"></i><span>1、下载权益：季卡会员拥有300次下载资源权益；半年卡会员拥有600次下载资源权益；年卡会员拥有1200次下载资源权益；</span>
                        </li>
                        <li><i class="fa fa-caret-right"></i><span>2、有效期限：季卡会员有效期为3个月；半年卡会员有效期为6个月；年卡会员有效期为12个月；</span>
                        </li>
                        <li><i class="fa fa-caret-right"></i><span>3、会员到期：当拥有的下载次数使用完或者超过规定时间后自动过期；</span></li>
                        <li><i class="fa fa-caret-right"></i><span>4、需要发票的用户，发票快递费需要自付，请联系客服；QQ：3456678348；电话：010-64351436；邮箱：vip@csdn.net；</span>
                        </li>
                        <li><i class="fa fa-caret-right"></i><span>5、<font style="color: red">声明</font>：VIP购买成功后且已经使用则不可退款；</span>
                        </li>
                        <li><i class="fa fa-caret-right"></i><span>6、禁止用户使用任何方式利用本站资源为他人提供有偿下载服务，一经发现，本站有权查封该账号；</span>
                        </li>
                        <li><i class="fa fa-caret-right"></i><span>7、会员续费：如果当期会员未到期进行续费的用户，新的会员次数/时间累加；</span></li>
                        <li><i class="fa fa-caret-right"></i><span>8、C币规则：<a style="color: #428bca;"
                                                                             href="http://mall.csdn.net/cbuy/about#4"
                                                                             target="_blank">点击查看</a></span></li>
                        <li><i class="fa fa-caret-right"></i><span>9、VIP用户、非VIP用户每日下载上限为20个资源；</span></li>
                        <li><i class="fa fa-caret-right" style="float: left;margin-top: 8px"></i><em
                                style="font-size: 14px;width: 95%">10、GitChat 超级会员可免费享受 GitChat 全部内容服务，<a
                                style="color: #428bca;" href="http://gitbook.cn/gitchat/vip" target="_blank">详情查看</a>；购买后，请通过「<a
                                style="color: #428bca;" target="_blank" href="http://order.csdn.net/myorder">订单中心</a>」中的提示完成会员兑换。如有疑问，请添加「GitChat
                            小助手」微信（ID：GitChatty 或 GitChatty2）；</em></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>
<!--<script type="text/javascript" src="//csdnimg.cn/pubfooter/js/publib_footer-1.0.2.js?v=--><!--"></script>-->

<!--<script type="text/javascript" src="//csdnimg.cn/pubfooter/js/tracking-1.0.2.js?v="></script>
<script type="text/javascript" src="//csdnimg.cn/rabbit/exposure-click/main-1.0.2.js?v="></script>-->

<script language="javascript" type="text/javascript" src="./js/publib_footer-1.0.3.js"></script>
<link rel="stylesheet" type="text/css" href="./css/pub_footer_1.0.3.css">
<script language="javascript" type="text/javascript" src="./js/async-1.0.0.js"></script>
<script data-main="//csdnimg.cn/release/download/js/apps/download.config.js?/v=201803091828"
        src="./js/require.js"></script>


<div style="position:fixed; top:0; left:0; overflow:hidden;"><input style="position:absolute; left:-300px;" type="text"
                                                                    value="" id="focus_retriever" readonly="true"></div>
<div class="meau-gotop-box" style="right: 8px; bottom: 40px; z-index: 110;"><a href="http://download.csdn.net/vip_code#"
                                                                               id="backtop" class="btn-meau"
                                                                               title="返回顶部">
    <svg xmlns="http://www.w3.org/2000/svg" width="19" height="12">
        <path d="M9.314 0l9.313 9.314-2.12 2.121-7.193-7.192-7.193 7.192L0 9.314z" fill="#FFF"
              fill-rule="evenodd"></path>
    </svg>
</a></div>
</body>
</html>