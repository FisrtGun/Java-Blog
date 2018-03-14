var cssId = 'gitchat-csdn-ad';
if (!document.getElementById(cssId))
{
    var head  = document.getElementsByTagName('head')[0];
    var link  = document.createElement('link');
    link.id   = cssId;
    link.rel  = 'stylesheet';
    link.type = 'text/css';
    link.href = '/dist/gitbook/css/csdn_ad.css';
    link.media = 'all';
    head.appendChild(link);
}

var html  = document.getElementsByTagName('html')[0];
var popDiv  = document.createElement('div');
popDiv.id = 'gitchat-ad-div-id';
popDiv.className   = 'gitchat-ad-popup';
var closeDiv  = document.createElement('div');
closeDiv.className   = 'gitchat-ad-close gitchat-ad-ns-close';
var contentDiv = document.createElement('div');
contentDiv.className = 'gitchat-ad-content';
var h1Div = document.createElement('div');
h1Div.className = 'gitchat-ad-h1';
h1Div.innerHTML += '邀请您成为GitChat讲师';
var c1Div = document.createElement('div');
c1Div.className = 'gitchat-ad-c1';
c1Div.innerHTML += '<ol class="gitchat-ad-rounded-list">\n' +
    '<li><a target="_blank" href="http://gitbook.cn?guide=yes">注册登录、发布Chat</a></li>\n' +
    '<li><a target="_blank" href="http://gitbook.cn?guide=yes">预定众筹、撰写文章</a></li>\n' +
    '<li><a target="_blank" href="http://gitbook.cn?guide=yes">交流答疑、获取收益</a></li>\n' +
    '</ol>';
var acceptButton = document.createElement('a');
var linkText = document.createTextNode("接受邀请");
acceptButton.appendChild(linkText);
acceptButton.className = 'gitchat-ad-button';
acceptButton.title = "接受邀请";
acceptButton.href = "http://gitbook.cn?guide=yes";
acceptButton.target="_blank";
contentDiv.appendChild(acceptButton);
contentDiv.appendChild(h1Div);
contentDiv.appendChild(c1Div);
popDiv.appendChild(closeDiv);
popDiv.appendChild(contentDiv);
html.appendChild(popDiv);

$(window).scroll(function() {
    if ($(window).scrollTop() >= 1500 || $(window).scrollTop() > ($(document).height() - $(window).height())) {
        $('.gitchat-ad-popup').css( "right", "20px" )
    } else {
        $('.gitchat-ad-popup').css( "right", "-280px" );
    }
});

$('.gitchat-ad-close').click(function(){
    $('.gitchat-ad-popup').hide();
});



