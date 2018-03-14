<%--
Created by IntelliJ IDEA.
User: Administrator
Date: 2018年3月9日,0009
Time: 21:58
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="referrer" content="unsafe-url">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="yes">
    <link href="../../statics/images/fg.png" rel="SHORTCUT ICON">
    <script	type="text/javascript" src="../../statics/js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="../../statics/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="../../statics/css/login.css" />
    <link rel="stylesheet" href="../../statics/css/common.css"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="../../statics/js/html5shiv.js"></script>
    <![endif]-->
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?6bcd52f51e9b3dce32bec4a3997715ac";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        var CFG={
            BASE_URL : "https://csdnimg.cn/release/passport/",    //当前页面对应的虚拟路径,页面j
            API_URL  : "https://passport.csdn.net/",               //当前项目默认的后端API地址
            ROOT_URL  : "https://passport.csdn.net/",              //当前项目根路径, JS跳转
            STATIC_URL : "https://csdnimg.cn/release/passport/",             //本项目静态资源
            STATIC_GLOBAL_URL : "https://csdnimg.cn/",               //全局静态资源
            TRACK_KUICK_ID : "0e1a1f29-37da-4c44-8a33-b4735dc85f10"
        }
    </script>
    <title>注册账号</title>
    <script>
        var errclass = "";
        var errmsg = "";
        var okcalsses = [];
    </script>
    <link rel="stylesheet" href="../../statics/css/login_new.css"/>
    <%--<script type="text/javascript" src="../../statics/js/passport.js"></script>--%>
</head>
<body>
<div class="login_main">
    <div class="login_left">
        <div class="img_mask"></div>
        <div class="login_l_c_re">
            <div class="login_l_c">
                <div class="login_l_c_t">
                    <a href="/main/index" target="_blank">
                        <img src="../../statics/images/logo.png">
                        <%--<svg width="98" height="23" xmlns="http://www.w3.org/2000/svg"><path d="M25.725 16.732c1.809.662 5.58 1.32 8.63 1.32 3.286 0 5.115-.911 5.261-2.326.134-1.29-1.212-1.465-4.923-2.346-5.127-1.259-8.399-3.209-8.078-6.323.372-3.617 5.205-6.35 12.62-6.35 3.615 0 7.12.254 8.935.85l-.623 4.561c-1.179-.41-5.691-.98-8.743-.98-3.095 0-4.697.975-4.808 2.044-.14 1.353 1.47 1.416 5.49 2.487 5.443 1.384 7.823 3.332 7.512 6.352-.365 3.553-4.713 6.573-13.395 6.573-3.614 0-6.728-.66-8.444-1.32l.566-4.542zm-3.8 5.115c-1.182.41-3.63.69-7.053.69-9.84 0-15.152-4.626-14.524-10.743C1.1 4.506 8.968.406 17.584.406c3.337 0 5.301.269 7.142.72l-.59 4.91c-1.225-.413-4.095-.792-6.417-.792-5.07 0-9.375 1.512-9.868 6.297-.44 4.278 2.582 6.323 8.284 6.323 1.985 0 4.912-.284 6.265-.696l-.474 4.68zM76.743 1.841c19.767-3.734 21.473 2.975 20.862 8.91l-1.151 10.982h-6.275l1.05-10.016c.228-2.206 1.641-6.52-5.184-6.358-2.362.058-3.533.382-3.533.382l-1.644 15.992h-6.154L76.742 1.84zm-24.967-.52c1.41-.154 3.578-.31 6.56-.31 4.978 0 9.003.868 11.496 2.693 2.238 1.702 3.728 4.458 3.315 8.45-.38 3.714-2.308 6.315-5.116 7.924-2.568 1.517-5.805 2.165-10.672 2.165-2.87 0-5.607-.155-7.69-.464L51.776 1.32zm4.114 16.392c.48.093 1.11.186 2.355.186 4.98 0 8.492-2.452 8.845-5.899.512-4.982-2.603-6.725-7.85-6.694-.68 0-1.625 0-2.125.091L55.89 17.713z" fill="#FFF" fill-rule="evenodd"/></svg>--%>
                    </a>
                </div>
                <div class="login_l_c_b">
                    <p class="login_l_c_p" id="dev-slogon"></p>

                </div>
            </div>
        </div>
    </div>
    <div class="login_r_wrap">
        <div class="log_r_t">
            <a href="https://passport.csdn.net/account/login?service=http%3A%2F%2Fwww.csdn.net%2F">登录</a>
        </div>
        <div class="login_c regist_c">
            <div class="login_c_t">欢迎注册</div>
            <div class="login_c_c regist_c_c">
                <%--<div class="regist_step">
                    <label class="step_orange"><span><i>1</i></span><em>注册码</em></label><strong></strong>
                    <label><span><i>2</i></span><em>用户名及密码</em></label><strong></strong>
                    <label><span><i>3</i></span><em>完成</em></label>
                </div>--%>
                <%--<div class="offical">
                    &lt;%&ndash;<h3>关注公众号，回复手机号获取注册码</h3>&ndash;%&gt;
                    <div class="offical_c">
                        <div class="offical_c_l">
                            <img src="../../statics/picture/coderlife.jpg">
                        </div>
                    </div>
                </div>--%>

                    <div style="height: 50px"></div>

                <form id="PcForm"
                      action="doRegister"
                      method="post">
                    <div class="txt_wrap">
                        <input type="text" placeholder="请输入用户名"
                               class="txt_inpt pc_inpt" name="uname" id="uname">
                        <div class="error-mess" style="width: 368px;display: none" id="errorName">
                            <span class="error-icon"></span><span id="error-message">用户名不合格</span>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $("#uname").focus(function () {
                                        $("#errorName").css("display","none");
                                })
                                $("#uname").blur(function () {
                                    var uname=$("#uname").val();
                                    if(""==uname){
                                        $("#errorName").css("display","inline-block");
                                    }
                                })

                                $("#upwd").blur(function () {
                                    var upwd=$("#upwd").val();
                                    if(""==upwd){
                                        $("#errorPwd").css("display","inline-block");
                                    }
                                })
                                $("#upwd").focus(function () {
                                    $("#errorPwd").css("display","none");
                                })
                            })
                        </script>


                        <div style="height: 50px"></div>



                        <input type="text" placeholder="请输入密码"
                               class="txt_inpt pc_inpt" name="upwd" id="upwd">
                        <div class="error-mess"style="width: 368px;display: none"id="errorPwd">
                            <span class="error-icon"></span><span id="error-messagepwd" >密码不合格</span>
                        </div><input
                            type="hidden" name="agree" value="on">

                        <c:if test="${num}==0" >
                            <div class="error-mess" style="display: none" id="errormess">
                                <span class="error-icon"></span><span id="error-message">注册失败</span>
                            </div>
                        </c:if>

                        <div class="veri_tips"></div>


                    </div>
                    <input id="pcSec" accesskey="l" value="登录" tabindex="6"
                           type="submit" class="next_btn next_step" data-kuick='{"act":"csdn06","desc":"下一步:设置用户名/密码"}'>
                </form>


                <div class="check clause">
                    <span></span><em>我已仔细阅读并接受<a href="https://passport.csdn.net/account/mobileregister?action=registrationPolicyView" target="_blank">fg用户服务条款</a></em>
                </div>
            </div>
        </div>
        <div class="login_copyright">京 ICP 证 09002463 号 | Copyright ©
            1999-2018, CSDN.NET, All Rights Reserved</div>
    </div>
</div>









<!--kucik deal report   位于公共jquery后面-->
<script type='text/javascript'>


    var _kuickDeal = _kuickDeal || [];
    window._kuickDeal = _kuickDeal;
    var onKDReadyFinish=function(){};
    (function(){
        var _dealProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        var _sdkURL = _dealProtocol + 'deal.kuick.cn/sdk/v1/';

        _kuickDeal.push(['SDK_URL', _sdkURL]);
        _kuickDeal.push(['KUICK_API_URL', _dealProtocol + 'api.kuick.cn/api/v1.0']);
        _kuickDeal.push(['DEAL_API_URL', _dealProtocol + 'deal-api.kuick.cn/api/v1.0']);
        _kuickDeal.push(['APP_KEY',CFG.TRACK_KUICK_ID]);
        _kuickDeal.push(['LOG_LEVEL', '3']);

        (function() {
            if(typeof define === 'function' && define.amd) {
                require([_sdkURL + 'kuickdeal-pc.min.js'], function(kd){
                    window.kuickDeal = kd;
                });
            } else {
                var deal = document.createElement('script');
                deal.type='text/javascript';
                deal.async = false;
                deal.src = _sdkURL + 'kuickdeal-pc.min.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(deal, s);
            }
        })();
    })();
    var onKDReady = function(){
        $("[data-kuick]").on("click",function(){
            var data=$(this).data("kuick");
            console.log("kuick track:",data);
            kuickDeal.onBehaviour(data.act, data.desc);
        })

        $("body").trigger("onKDReady");
        onKDReadyFinish();

    }

    if (typeof kuickDeal == "undefined"){
        if(document.addEventListener){
            document.addEventListener('KDReady', onKDReady, false);
        } else if (document.attachEvent){
            document.attachEvent('KDReady', onKDReady);
            document.attachEvent('onKDReady', onKDReady);
        }
    } else {
        kuickDeal.ready(onKDReady);
    }
</script>
</body>
</html>