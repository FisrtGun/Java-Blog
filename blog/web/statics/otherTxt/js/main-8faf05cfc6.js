function set_guanzhu_status(e) {
    var t = "http://my.csdn.net/index.php/follow/check_is_followed/" + encodeURIComponent(e) + "/" + encodeURIComponent(_blogger) + "?jsonpcallback=?";
    $.getJSON(t, {}, function (e) {
        1 == e.succ && 1 == e.info ? ($("#span_add_follow").addClass("attented").text("已关注"), $("#fan").text(parseInt($("#fan").text()) + 1)) : $("#span_add_follow")[0].onclick = guanzhu
    }, "json")
}
function guanzhu() {
    var e = "http://my.csdn.net/index.php/follow/do_follow?jsonpcallback=?";
    return $.getJSON(e, {username: _blogger}, function (e) {
        1 == e.succ ? $("#span_add_follow").addClass("attented").text("已关注").on("click", function () {
            return !1
        }) : alert(e.msg)
    }), !1
}
function getUN() {
    var e = document.cookie.match(new RegExp("(^| )UserName=([^;]*)(;|$)"));
    return e ? e[2] : ""
}
function loginto(e) {
    e && getUN() ? location = "http://my.csdn.net/my/letter/send/" + _blogger : window.csdn.loginbox()
}
function js_logined(e) {
    location = "../../../"
}
function baidudatatemp(e) {
    var t = e["abstract"], i = e.dispTime, n = e.linkUrl, a = e.title, o = '<dl class="clearfix csdn-tracking-statistics recommend_article" data-mod="popu_387" data-poputype="feed"  data-feed-show="false"  data-dsm="post"><a href="' + n + '"  target="_blank" strategy="searchFromBaidu1"><dd><h2>' + a + '</h2><div class="summary">' + t + '</div><ul><li class="time">' + i + "</li></ul></dd></a></dl>";
    return o
}
function trackByGraylog(e, t) {
    var i = window.location.protocol + "//statistic.csdn.net/";
    $.get(i + e, t)
}
function showResult(e) {
    for (var t = [], i = 0; i < e.length; i++)selfURL.indexOf(e[i].linkUrl.split("?")[0]) === -1 && t.push(baidudatatemp(e[i]));
    for (var n = $(".recommend_list").children().not("script").not("div"), i = 1; i <= n.length; i += 2)$(n[i]).after(t[i - 1] + t[i]);
    var a = n.length % 2 === 0 ? n.length : n.length - 1;
    if (n.length < t.length)for (var i = a; i < t.length; i++)$(".recommend_list").append(t[i])
}
function addLoadEvent(e) {
    var t = window.onload;
    "function" != typeof window.onload ? window.onload = e : window.onload = function () {
        t(), e()
    }
}
function overflow_hide(e, t, i) {
    e.map(function () {
        return $(this).height() > t ? this : null
    }).addClass("overflow-hide " + i)
}
function loginbox(e) {
    document.domain = "csdn.net";
    var t = $("#pop_win"), i = "";
    null != e && void 0 != e && "" != e && (i = "?anchor=" + e), t.html('<iframe src="https://passport.csdn.net/account/loginbox?service=http://static.blog.csdn.net/callback.htm' + i + '" frameborder="0" height="600" width="400" scrolling="no"></iframe>'), $("#popup_mask").css({
        opacity: .5,
        width: $(document).width() + "px",
        height: $(document).height() + "px"
    }), $("#popup_mask").css("display", "block"), t.css({
        top: ($(window).height() - t.height()) / 2 + $(window).scrollTop() + "px",
        left: ($(window).width() - t.width()) / 2
    }), setTimeout(function () {
        t.show(), t.css({opacity: 1})
    }, 200), $("#popup_mask").unbind("click"), $("#popup_mask").bind("click", function () {
        $("#popup_mask").hide();
        var e = $("#pop_win");
        return $("#common_ask_div_sc").css("display", "none"), e.css({opacity: 0}), setTimeout(function () {
            e.hide()
        }, 350), !1
    })
}
function init_comment() {
    load_comment_form(), editor = $(editorId);
    var e = null;
    editor.length > 0 && editor.focus(function () {
        e = setInterval(function () {
            commentTip("还能输入" + (1e3 - editor.val().length) + "个字符")
        }, 200)
    }).blur(function () {
        e && clearInterval(e)
    }), loadList(1, !0)
}
function noComments() {
    $(listOutBoxClass).html("")
}
function loadList(index, isSub) {
    if (0 == commentscount)return outoBlog.MoreComment(), void noComments();
    $(listId)[0] || $(listOutBoxClass).html('<div id="comment_list"></div>');
    var url = location.href.toString().split("/"), cmtUrl = "http://" + url[2] + "/" + url[3] + "/phoenix/comment/list/" + fileName + "?is_list=1";
    isSub && (cmtUrl += "&_" + Math.random()), $.get(cmtUrl, function (json) {
        var data = "object" == typeof json ? json : eval("(" + json + ")"), RecordCount = data.page.RecordCount;
        list = isSub ? data.list : list.concat(data.list), RecordCount > 0 && (RecordCount < list.length ? $("#comment_bar").css("display", "none") : $("#comment_bar").css("display", "block")), 0 !== list.length && (tatolList = list);
        var listHtml = "", topics = getTopics(list);
        topics.length < 4 && $("#comment_bar").css("display", "none"), 1 == index && (topics = topics.slice(0, 3));
        for (var total = data.total > 0 ? data.total : topics.length, i = 0; i < total; i++) {
            var comment = topics[i], layer = totalFloor - i;
            layer > 0 && (listHtml += getItemHtml(comment, layer))
        }
        listHtml += '<div class="clear"></div>', $(listId).html(listHtml), dp.SyntaxHighlighter.HighlightAll("code2"), new CNick(listId + " a.username").showNickname(), $("#comment_bar").html('<a id="load_comments" class="btn btn-large more_comment_btn" page="' + (index + 1) + '">查看 <span>' + RecordCount + '</span> 条热评<i class="icon iconfont icon-xiajiantou"></i></a>'), setBtnEvent(), outoBlog.MoreComment()
    })
}
function getTopics(e) {
    for (var t = [], i = 0; i < e.length; i++) {
        var n = e[i];
        0 == n.ParentId && (n.Replies = getReplies(n, e), t.push(n))
    }
    return t
}
function getReplies(e, t) {
    for (var i = [], n = 0; n < t.length; n++) {
        var a = t[n];
        a.ParentId == e.CommentId && (a.Replies = getReplies(a, t), i.push(a))
    }
    return i
}
function getItemHtml(e, t, i, n) {
    var a = ' <div class="comment_li_box clearfix">';
    if (a += '         <dl class="comment_list clearfix" id="comment_item_' + e.CommentId + '">', a += "           <dt>", a += '               <a href=' + e.UserName + '"/"><img src="' + e.Userface + '" alt="' + e.UserName + '"></a></dt>', a += "           <dd>", a += '             <ul class="com_r clearfix">', a += '               <li class="top bot clearfix">', a += '                 <h4><a href=' + e.UserName + '"/">' + e.UserName + "</a></h4>", a += '                 <span class="time">' + e.PostTime + "</span>", a += '                 <span class="floor_num" floor=' + (i || t) + ">" + (e.ParentId > 0 ? " " : t + "楼") + "</span>", a += "                   <div>", 0 == !e.Replies.length && (a += '                     <button class="btn btn-noborder rec_number">' + e.Replies.length + '条回复<i class="icon iconfont icon-xiajiantou"></i></button>'), a += '                     <a href="#reply" class="com_reply btn btn-noborder reply_btn" title="回复" commentid="' + e.CommentId + '" floor="' + t + '">回复</a>', "" != currentUserName && "" != e.UserName && e.UserName.toLowerCase() == currentUserName.toLowerCase() ? a += '                 <a href="#delete" class="btn btn-noborder com_reply" commentid="' + e.CommentId + '" floor="' + i + '">删除</a>' : "" != currentUserName && currentUserName.toLowerCase() == username.toLowerCase() && (a += '                 <a href="#delete" class="com_reply" commentid="' + e.CommentId + '" floor="' + i + '">删除</a>'), a += "                   </div>", a += "               </li>", a += '               <li class="mid clearfix">', a += '                 <div class="comment_p">' + replaceUBBToHTML(e) + "</div>", a += "               </li>", a += '               <li class="bot clearfix">', a += "                </li>", a += "              </ul>", a += "            </dd>", a += "          </dl>", null != e.Replies) {
        a += '<div class="child_comment" data-listshow="false">', a += '   <div class="autoHeight clearfix">';
        for (var o = 0; o < e.Replies.length; o++)a += getChildItemHtml(e.Replies[o], o + 1, t, n + 1);
        a += "   </div>", a += "</div>"
    }
    return a += "       </div>"
}
function getChildItemHtml(e, t, i, n) {
    var a = '    <dl class="comment_list clearfix" id="comment_item_' + e.CommentId + '">';
    if (a += "      <dt>", a += '          <a href=' + e.UserName + '"/">', a += '              <img src="' + e.Userface + '" alt="' + e.UserName + '">', a += "          </a>", a += "      </dt>", a += "      <dd>", a += '        <ul class="com_r clearfix">', a += '          <li class="top clearfix">', a += '            <h4><a href=' + e.UserName + '"/">' + e.UserName + "</a></h4>", a += '            <span class="time">' + e.PostTime + "</span>", a += '            <span class="floor_num" floor=' + (i || t) + "></span>", a += "          </li>", a += '          <li class="mid clearfix">', a += '            <div class="comment_p">' + replaceUBBToHTML(e) + "</div>", a += "          </li>", a += '          <li class="mid clearfix">', a += "               <label>", "" != currentUserName && "" != e.UserName && e.UserName.toLowerCase() == currentUserName.toLowerCase() ? a += '<a href="#delete" class="com_reply btn btn-noborder" commentid="' + e.CommentId + '" floor="' + i + '">删除</a>' : "" != currentUserName && currentUserName.toLowerCase() == username.toLowerCase() && (a += '<a href="#delete" class="com_reply btn btn-noborder" commentid="' + e.CommentId + '" floor="' + i + '">删除</a>'), a += "               </label>", a += "                </li>", a += "              </ul>", a += "            </dd>", a += "          </dl>", null != e.Replies) {
        a += '<div class="child_comment" data-listshow="false">', a += '   <div class="autoHeight clearfix">';
        for (var o = 0; o < e.Replies.length; o++)a += getChildItemHtml(e.Replies[o], o + 1, t, n + 1);
        a += "   </div>", a += "</div>"
    }
    return a
}
function getComment(e, t) {
    for (var i = 0; i < t.length; i++) {
        var n = t[i];
        if (n.CommentId == e)return n
    }
    return null
}
function paging(e, t, i) {
    var n = Math.floor(totalFloor / 5) + (totalFloor % 5 == 0 ? 0 : 1), a = n > 5 ? 5 : n, e = e || 0, t = t ? t : a, i = i || ".page_btn_event[page=1]";
    if (totalFloor < 5)return !1;
    for (var o = '<div class="pagebox"><div class="page_btn page_header" page="1"><i class="icon iconfont icon-shouye"></i></div><div class="page_btn page_back"><i class="icon iconfont icon-zuojiantou"></i></div>', s = e; s < t; s++)o += '<div class="page_btn page_btn_event" page=' + (s + 1) + ">" + (s + 1) + "</div>";
    o += '<div class="page_btn page_go"><i class="icon iconfont icon-youjiantou"></i></div><div class="page_btn page_footer" page="' + n + '"><i class="icon iconfont icon-weiye"></i></div></div>', $("#comment_bar").html(o), $(i).addClass("page_activ")
}
function RedrawnPaging(e) {
    var t = Math.floor(totalFloor / 5) + (totalFloor % 5 == 0 ? 0 : 1), i = parseInt($(e).next().attr("page")), n = parseInt($(e).prev().attr("page")), a = parseInt($(e).attr("page"));
    if (Boolean(i) || i === t) {
        if (!Boolean(n) && 0 !== n) {
            var o = a - 3 > 0 ? a - 3 : 0, s = a + 2 < t ? a + 2 : 5;
            1 === a && t > 6 ? s = 5 : 1 === a && t < 5 ? s = t : 2 === a && t < 6 ? s = t - a : 2 === a && t > 5 && (s = a + 3), paging(o, s, e)
        }
    } else {
        var s = a + 2 < t ? a + 2 : t, o = a === t ? a - 5 : a - 3;
        a + 1 === t && t > 5 ? o = a - 4 : a + 1 === t && t < 6 ? o = 0 : a === t && t < 6 ? o = 0 : a === t && t > 5 && (o = a - 5), paging(o, s, e)
    }
    $(".page_btn_event[page=" + a + "]").addClass("page_activ")
}
function showcomment(e) {
    for (var t = getTopics(tatolList), i = "", n = 5 * (e - 1); n < 5 * e; n++) {
        var a = t[n], o = totalFloor - n;
        a instanceof Object && (i += getItemHtml(a, o))
    }
    i += '<div class="clear"></div>', $(listId).html(i), dp.SyntaxHighlighter.HighlightAll("code2"), new CNick(listId + " a.username").showNickname()
}
function removeClass(e, t) {
    $.each($(e), function (e, i) {
        $(i).removeClass(t)
    })
}
function page_btn_event() {
    $(document).on("click", ".page_btn_event", function (e) {
        removeClass(".page_btn_event", "page_activ"), $(this).addClass("page_activ"), RedrawnPaging(this);
        var t = parseInt($(this).attr("page"));
        showcomment(t)
    }), $(document).on("click", ".page_back , .page_go", function () {
        var e = parseInt($(".page_activ").attr("page")), t = Math.floor(totalFloor / 5) + (totalFloor % 5 == 0 ? 0 : 1);
        if ($(this).attr("class").indexOf("page_back") != -1) {
            if (e < 2)return !1;
            showcomment(e - 1), RedrawnPaging($(".page_activ")), removeClass(".page_btn_event", "page_activ"), $(".page_btn_event[page=" + (e - 1) + "]").addClass("page_activ")
        } else if ($(this).attr("class").indexOf("page_go") != -1) {
            if (e + 1 > t)return !1;
            showcomment(e + 1), RedrawnPaging($(".page_activ")), removeClass(".page_btn_event", "page_activ"), $(".page_btn_event[page=" + (e + 1) + "]").addClass("page_activ")
        }
    }), $(document).on("click", ".page_header,.page_footer", function () {
        var e = (parseInt($(".page_activ").attr("page")), Math.floor(totalFloor / 5) + (totalFloor % 5 == 0 ? 0 : 1));
        $(this).attr("class").indexOf("page_header") != -1 ? (showcomment(1), e > 5 ? paging(0, 5) : paging(0, e), removeClass(".page_btn_event", "page_activ"), $(".page_btn_event[page=1]").addClass("page_activ")) : $(this).attr("class").indexOf("page_footer") != -1 && (showcomment(e), e > 5 ? paging(e - 5, e) : paging(0, e), removeClass(".page_btn_event", "page_activ"), $(".page_btn_event[page=" + e + "]").addClass("page_activ"))
    })
}
function deleteCommentList(e) {
    for (var t = 0; t < tatolList.length; t++)tatolList[t].CommentId === parseInt(e) && tatolList.splice(t, 1);
    totalFloor > 5 ? (showcomment(1), paging()) : (showcomment(1), totalFloor < 6 && $(".more_comment").fadeOut(300))
}
function setBtnEvent() {
    $("#load_comments").click(function () {
        totalFloor > 5 ? (showcomment(1), paging()) : (showcomment(1), $(".more_comment").fadeOut(300))
    }), $(document).on("click", ".com_reply", function () {
        var e = $(this).attr("href");
        e = e.substring(e.lastIndexOf("#"));
        var t = $(this).attr("commentid"), i = tatolList != [] ? tatolList : list;
        switch (e) {
            case"#reply":
                return currentUserName && (replyComment(t, i), setEditorFocus()), !0;
            case"#quote":
                return currentUserName && (quoteComment(t, list), setEditorFocus()), !0;
            case"#report":
                reportComment(t, $(this));
                break;
            case"#delete":
                deleteComment(t);
                break;
            default:
                return !0
        }
        return !1
    })
}
function setEditorFocus() {
    var e = editor.val();
    editor.val(""), editor.focus(), editor.val(e)
}
function quoteComment(e, t) {
    var i = getComment(e, t), n = i.Content;
    i.Content.length > 50 && (n = i.Content.substring(0, 50) + "..."), editor.val("[quote=" + (null == i.UserName ? "游客" : i.UserName) + "]" + n + "[/quote]\r\n")
}
function replyComment(e, t) {
    var i = getComment(e, t);
    editor.val("[reply]" + i.UserName + "[/reply]\r\n"), $("#comment_replyId").val(e)
}
function reportComment(e, t) {
    report(e, 3, t)
}
function deleteComment(e) {
    if (confirm("你确定要删除这篇评论吗？")) {
        var t = blog_address + "/phoenix/comment/delete?commentid=" + e + "&filename=" + fileName;
        $.get(t, function (t) {
            1 == t.result && (--totalFloor, $("#comment_item_" + e).parent().hide().remove())
        })
    }
}
function replaceUBBToHTML(e) {
    for (var t = $.trim(e.Content), i = /\[code=([\w#\.]+)\]([\s\S]*?)\[\/code\]/gi, n = []; null != (mc = i.exec(t));)n.push(mc[0]), t = t.replace(mc[0], "--code--");
    if (t = replaceQuote(t), t = t.replace(/\[reply]([\s\S]*?)\[\/reply\][\r\n]{0,2}/gi, "回复$1："), t = t.replace(/\[url=([^\]]+)]([\s\S]*?)\[\/url\]/gi, '<a href="$1" target="_blank">$2</a>'), t = t.replace(/\[img(=([^\]]+))?]([\s\S]*?)\[\/img\]/gi, '<img src="$3" style="max-width:400px;max-height:200px;" border="0" title="$2" />'), t = t.replace(/\r?\n/gi, "<br />"), n.length > 0)for (var a = /--code--/gi, o = 0; null != (mc = a.exec(t));)t = t.replace(mc[0], n[o]), o++;
    return t = t.replace(/\[code=([\w#\.]+)\]([\s\S]*?)\[\/code\]/gi, function (e, t, i) {
        return "" == $.trim(i) ? "" : '<pre name="code2" class="' + t + '">' + i + "</pre>"
    })
}
function replaceQuote(e) {
    var t = /\[quote=([^\]]+)]([\s\S]*)\[\/quote\]/gi.exec(e);
    return t ? e.replace(t[0], "<fieldset><legend>引用“" + t[1] + "”的评论：</legend>" + replaceQuote(t[2]) + "</fieldset>") : e
}
function load_comment_form() {
    $("#commentbox").hide();
    var e = getcookie("UserName").toLowerCase();
    if (islock)$("#commentsbmitarear").html("<div class='notice'>该文章已被禁止评论！</div>"); else if (currentUserName || null != e && "" != e && void 0 != e)$("#commentbox").show(), $(".publish_btn").click(function () {
        $("#commentform").submit()
    }); else {
        var t = encodeURIComponent(location.href);
        $("#commentsbmitarear").html('<div class="guest_link"><span class="log_ico"><i class="icon iconfont icon-yonghu"></i></span><span class="txt">目前您尚未登录，请 <a href="https://passport.csdn.net/account/login?from=' + t + '">登录</a> 或 <a href="http://passport.csdn.net/account/register?from=' + t + '">注册</a> 后进行评论</span></div>')
    }
    ubb_event()
}
function getcookie(e) {
    var t = document.cookie.indexOf(e), i = document.cookie.indexOf(";", t);
    return t == -1 ? "" : unescape(document.cookie.substring(t + e.length + 1, i > t ? i : document.cookie.length))
}
function subform(e) {
    var t = !1;
    if (c_doing)return !1;
    var i = $.trim($(editorId).val());
    if ("" == i)return commentTip("评论内容没有填写!"), !1;
    if (i.length > 1e3)return commentTip("评论内容太长了，不能超过1000个字符！"), !1;
    var n = $("#commentId").val();
    commentTip("正在发表评论...");
    new Date;
    return $(editorId).attr("disabled", !0), $("button[type=submit]", e).attr("disabled", !0), "" === $("#comment_replyId").val() && (t = !0), c_doing = !0, $.ajax({
        type: "POST",
        url: $(e).attr("action"),
        data: {commentid: n, content: i, replyId: $("#comment_replyId").val(), boleattohome: $("#boleattohome").val()},
        success: function (i) {
            if (c_doing = !1, commentTip(i.content), i.result) {
                var n = $("#comment_replyId").val();
                $(editorId).val(""), $("#comment_replyId,#comment_verifycode").val(""), commentscount++, t && (totalFloor += 1), loadList(1, !0), t = !1, $(editorId).attr("disabled", !1), $("button[type=submit]", e).attr("disabled", !1), void 0 != n && "" != n && $("html,body").animate({scrollTop: $("#comment_item_" + n).offset().top}, 1e3)
            }
        }
    }), !1
}
function commentTip(e) {
    $("#tip_comment").html(e).show(), clearTimeout(_c_t), _c_t = setTimeout(function () {
        $("#tip_comment").hide()
    }, 1e4)
}
function ubb_event() {
    $(document).on("click", "#lang_list", function (e) {
        editor = $(editorId);
        var t = editor.selection();
        editor.focus();
        var i = $(this).attr("code"), n = e.target;
        switch (i) {
            case"code":
                $("#lang_list");
                editor.val("[code=" + $.trim(n.href.split("#")[1]) + "]\n" + t + "\n[/code]");
                break;
            default:
                editor.val("[" + i + "]" + t + "[/" + i + "]")
        }
        return !1
    })
}
function csdnBlogDirectory(e) {
    if (!(e.length < 2)) {
        var t = "";
        t += '<ol class="first_li">';
        for (var i = 0, n = 0, a = 0, o = 0, s = 0, r = 0; r < e.length; r++) {
            var l = parseInt(e[r].tagName.substr(1), 10);
            if (i || (i = l), l > i ? (t += '<ol class="second_li">', n++) : l < i && n > 0 && (t += "</ol>", n--), 1 == l)for (; n > 0;)t += "</ol>", n--;
            i = l;
            var c = e.eq(r).text().replace(/^[\d.、\s]+/g, "");
            if (c = c.replace(/[^a-zA-Z0-9_\-\s\u4e00-\u9fa5]+/g, ""), c.length < 100)switch (l) {
                case 1:
                    ++a, o = 0, s = 0, t += '<li><a href="#t' + r + '">' + a + ". " + c + "</a></li>", e.eq(r).html('<a name="t' + r + '"></a>' + e.eq(r).html());
                    break;
                case 2:
                    ++o, s = 0, t += '<li><a href="#t' + r + '">' + a + "-" + o + ". " + c + "</a></li>", e.eq(r).html('<a name="t' + r + '"></a>' + e.eq(r).html());
                    break;
                case 3:
                    ++s, t += '<li><a href="#t' + r + '">' + a + "-" + o + "-" + s + ". " + c + "</a></li>", e.eq(r).html('<a name="t' + r + '"></a>' + e.eq(r).html())
            }
        }
        for (; n > 0;)t += "</ol>", n--;
        $("#csdnBlogDir").html(t)
    }
}
function openct(e) {
    return "[+]" == e.innerHTML ? $(e).attr("title", "收起").html("[-]").parent().next().show() : $(e).attr("title", "展开").html("[+]").parent().next().hide(), e.blur(), !1
}
function report(e, t, i) {
    $.createMask();
    var n = blog_address + "/common/reports?id=" + e + "&t=" + t;
    if (location.href.indexOf("dev") > -1) {
        var a = blog_address.split("/")[3];
        n = "http://dev.blog.csdn.net:5391/" + a + "/common/report?id=" + e + "&t=" + t
    }
    if (3 == t) {
        var o = i.attr("floor");
        n += "&floor=" + o
    }
    var s = (document.documentElement.clientHeight - 400) / 2 + (document.documentElement.scrollTop || document.body.scrollTop), r = (document.documentElement.clientWidth - 400) / 2;
    $("#report_dialog").load(n).css({top: s + "px", left: r}).show()
}
function deleteArticle(e) {
    confirm("你确定要删除这篇文章吗？") && $.get(blog_address + "/phoenix/article/delete?articleId=" + e, function (e) {
        var t = e;
        t.result ? (alert("文章已删除！"), location.reload()) : t.content ? alert(t.content) : alert("无法删除，请到后台删除！")
    })
}
function openWindow(e, t) {
    var i = (t || encodeURI(document.title), e || encodeURIComponent(document.location), function () {
        (screen.width - 600) / 2, (screen.height - 450) / 2;
        window.open(e, "", "toolbar=0,resizable=1,scrollbars=yes,status=1,width=600,height=400") || (location.href = e)
    });
    /Firefox/.test(navigator.userAgent) ? setTimeout(i, 0) : i()
}
function GetCategoryArticles(e, t, i, n) {
    var a = "top_" + e;
    if ("top" == i) {
        var o = $("#" + a + " li");
        if (o.length > 0)return
    }
    var s = "/" + t + "/svc/GetCategoryArticleList?id=" + e + "&type=" + i;
    $.get(s, function (o) {
        if ("top" == i) {
            var s = $("#" + a);
            s.html(""), $(o).each(function (e) {
                var i = o[e];
                if (n != i.articleid) {
                    var a = "http://blog.csdn.net/" + t + "/article/details/" + i.articleid, r = "top_aritcle_" + i.articleid + Math.random().toString().replace("0.");
                    s.append('<li class="tracking-ad" data-mod="popu_140"><em>•</em><a href=\'' + a + "'  id='" + r + '\' target="_blank"></a></li> '), $("#" + r).text(i.title), $("#" + r).attr("title", i.title)
                }
            });
            var r = $(s.parent().parent().find("em")[0]).text().replace("（", "").replace("）", "");
            if (parseInt(r) > 5) {
                var l = s.parent().find(".subItem_t a").attr("href");
                s.append('<li style="padding-left: 300px;"><a href=\'' + l + '\' target="_blank">更多</a></li>')
            }
        } else if ("foot" == i) {
            $(".my_article_t_cur").removeClass("my_article_t_cur"), $("#samecate" + e).addClass("my_article_t_cur");
            var c = $(".my_list.fl"), d = $(".my_list.fr");
            c.html(""), d.html("");
            var h = 0;
            $.each(o, function (e) {
                var i = o[e];
                if (h < 11 && n != i.articleid) {
                    var a = "http://blog.csdn.net/" + t + "/article/details/" + i.articleid, s = "foot_aritcle_" + i.articleid + Math.random().toString().replace("0."), r = "<li><a href='" + a + "'  id='" + s + '\' target="_blank"></a><label><span>' + i.posttime + '</span><i class="fa fa-eye"></i><em>' + i.viewcount + "</em></label></li> ";
                    h % 2 == 1 ? d.append(r) : c.append(r), h++, $("#" + s).text(i.title), $("#" + s).attr("title", i.title), $(".my_article").show()
                }
            });
            var r = $(".my_article_t_l.my_article_t_cur em").text().replace("（", "").replace("）", "");
            if (parseInt(r) > 10) {
                var l = $(".my_article_t_l.my_article_t_cur").attr("moreurl");
                "" != l && ($(".my_more").remove(), $(".my_article_c_c").append("<a href=" + l + ' class="my_more">更多文章</a>'))
            }
        }
    })
}
function left_fixed_event() {
    $(".left_fixed").hover(function () {
        $(".left_fixed").stop(!0, !1), $(".left_fixed").is(":animated") ? $(".left_fixed").css({left: 0}) : $(".left_fixed").animate({left: 0}, 500, function () {
            $(".left_show_button").css({display: "none"})
        })
    }, function () {
        $(".left_fixed").delay(1e3).animate({left: -40}, 500, function () {
            $(".left_show_button").css({display: "block"})
        })
    })
}
function m_over_m(e, t) {
    __mm_over = !0, showMedalInfo(e.target, t)
}
function m_out_m() {
    __mm_over = !1, hideMedalInfo()
}
function showMedalInfo(e, t) {
    __mm_intro && (document.body.removeChild(__mm_intro), __mm_intro = null);
    var i = "", n = $(e).attr("src"), a = "", o = "";
    n.indexOf("zhuanlandaren") > -1 ? (a = "专栏达人", o = "授予成功创建个人博客专栏的用户。专栏中添加五篇以上博文即可点亮！撰写博客专栏浓缩技术精华，专栏达人就是你！") : n.indexOf("chizhiyiheng") > -1 ? (a = "持之以恒", o = "授予每个自然月内发布4篇或4篇以上原创或翻译IT博文的用户。不积跬步无以至千里，不积小流无以成江海，程序人生的精彩需要坚持不懈地积累！") : n.indexOf("weiruanmvp") > -1 ? (a = "微软MVP", o = "授予通过CSDN博客平台积极分享微软相关技术知识和专业技能，并做出突出贡献的用户。") : n.indexOf("bokezhixing") > -1 && (a = "博客之星", o = '授予通过"CSDN博客之星评选"中脱颖而出的十大博客之星称号的用户。'), i += "<div  style='  z-index:99999 ; left: 15%;  top: -9px;  position: absolute;  width: 0;  height: 0;  border-left: 10px solid transparent;  border-right: 10px solid transparent;  border-bottom: 8px solid #EAEAEA; '></div>", i += "<dl onmouseover='__mm_over=true;' onmouseout='m_out_m();'>", i += "<dt><img src='" + n.replace(".png", "") + "middle.png' /></dt>", i += "<dd><strong>" + a + "</strong>" + o + "</dd>", i += "</dl>", __mm_intro = document.createElement("div"), __mm_intro.className = "medal_intro";
    var s = $(e).position(), r = s.left - 46;
    r < 0 && (r = 0), __mm_intro.style.left = r + "px", __mm_intro.style.top = s.top + 32 + 4 + "px", __mm_intro.innerHTML = i, document.body.appendChild(__mm_intro)
}
function hideMedalInfo() {
    setTimeout(function () {
        !__mm_over && __mm_intro && (document.body.removeChild(__mm_intro), __mm_intro = null)
    }, 500)
}
$(function () {
    !function () {
        var e = function (e) {
            var e = e ? e : "body", t = $(e + " img"), i = navigator.userAgent.toLowerCase();
            return 0 !== t.length && (0 === $(".imgViewDom").length && ($("body").append('<div class="imgViewDom disnone" style="display: none;"><img src=""></div>'), $("body").append("<style>.imgViewDom{display:none;position:fixed;top:0;left:0;height:100%;width:100%;z-index:99999999;background: rgba(255, 255, 255,0.8);overflow: auto;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;display:-moz-box;-moz-box-align:center;-moz-box-pack:center;display:-o-box;-o-box-align:center;-o-box-pack:center;display:-ms-box;-ms-box-align:center;-ms-box-pack:center; display:box;box-align:center;box-pack:center;}.imgViewDom img{cursor: zoom-out;}</style>"), $(".imgViewDom").on("click", function () {
                    i.indexOf("windows ") > -1 ? $("body").css({
                        overflow: "auto",
                        "margin-left": "0"
                    }) : $("body").css({overflow: "auto"}), $(".imgViewDom").fadeOut(500).children("img").attr("src", "")
                })), void t.bind("click", function (e) {
                    e.currentTarget.src && ($(".imgViewDom").fadeIn(500).children("img").css({
                        width: e.currentTarget.naturalWidth,
                        height: e.currentTarget.naturalheight
                    }).attr("src", e.currentTarget.src), i.indexOf("windows ") > -1 ? $("body").css({
                        overflow: "hidden",
                        "margin-left": "-17px"
                    }) : $("body").css({overflow: "hidden"}))
                }))
        };
        window.CSDNviewImg = e
    }()
}), $(document).ready(function () {
    var e = getUN().toLowerCase();
    e == _blogger.toLowerCase() ? $(".interact").hide() : e ? set_guanzhu_status(e) : $("#span_add_follow").on("click", function () {
        loginto(0)
    });
    var t = {
        notLogin: function () {
            var e = currentUserName, t = this;
            "" == e || void 0 == e ? (t.popHide(".alrLogin"), t.popShow(".notLogin")) : (t.popShow(".alrLogin"), t.popHide(".notLogin"))
        }, _getCookieValue: function (e, t) {
            return t = document.cookie.match("(^|;)\\s*" + e + "\\s*=\\s*([^;]+)"), t ? t.pop() : ""
        }, _verificaUser: function () {
            if (this._getCookieValue("UserName"))return !0;
            var e = "https://passport.csdn.net/account/login?from=" + encodeURI(location.href);
            return window.location = e, !1
        }, collectArticle: function () {
            var e = $("#com-quick-collect"), t = $(".cancel_icon"), i = this, n = $("#collectIframe");
            encodeURIComponent($(".csdn_top").text());
            e.on("click", function () {
                function e(e, t) {
                    $.ajax({
                        url: "http://my.csdn.net/my/favorite/do_add/2",
                        dataType: "json",
                        type: "get",
                        xhrFields: {withCredentials: !0},
                        crossDomain: !0,
                        data: {title: t, url: e, share: 1, map_name: ""},
                        success: function (e) {
                            1 == e.succ ? alert("收藏成功,可以在个人中心查看我的收藏") : alert(e.msg)
                        },
                        error: function () {
                        }
                    })
                }

                if (i._verificaUser()) {
                    var t = window.location.href, n = $(".csdn_top").text();
                    e(t, n)
                }
                return !1
            }), t.on("click", function () {
                return i.popHide(".pop_CA_cover"), i.popHide(".pop_CA"), n.attr("src", ""), !1
            })
        }, popShow: function (e) {
            $(e).show()
        }, popHide: function (e) {
            $(e).hide()
        }, report: function (e, t, i) {
            $.createMask();
            var n = blog_address + "/common/report?id=" + e + "&t=" + t;
            if (3 == t) {
                var a = i.parentNode.parentNode.parentNode.getAttribute("floor");
                n += "&floor=" + a
            }
            var o = ((document.documentElement.clientHeight - 400) / 2 + (document.documentElement.scrollTop || document.body.scrollTop), (document.documentElement.clientWidth - 400) / 2);
            $("#report_dialog").load(n).css({top: "20%", left: o}).show()
        }, goFn: function (e, t) {
            var i = encodeURIComponent(t), n = "http://so.csdn.net/so/search/s.do?q=" + i + "&t=blog";
            return "" != i && void(window.location.href = n)
        }, search: function () {
            var e = $(".btn-lg34"), t = $(".inp_search"), i = this;
            e.on("click", function (e) {
                i.goFn($(this), $(this).prev("input").val())
            }), t.keyup(function (e) {
                var t = e.keyCode;
                if (13 == t) {
                    var i = encodeURIComponent($(this).val()), n = "http://so.csdn.net/so/search/s.do?q=" + i + "&t=blog";
                    window.location.href = n
                }
            })
        }, editDelete: function () {
            var e = this;
            username == currentUserName ? (e.popShow(".edit"), e.popShow(".del")) : (e.popHide(".edit"), e.popHide(".del"))
        }, isExpert: function () {
            var e = $(".medals");
            1 == isExpert ? e.attr("title", "博客专家") : e.attr("title", "")
        }
    };
    t.notLogin(), t.collectArticle(), $(".r_ico").on("click", function () {
        return t.report(fileName, 2), !1
    }), t.search(), t.editDelete(), t.isExpert(), jQuery.createMask = function () {
        var e = document.documentElement.clientHeight, t = document.documentElement.clientWidth, i = $("body").height();
        i > e && (e = i);
        var n = {};
        0 == $("#mask_div").length && $("body").append('<div id="mask_div" style="position:absolute;z-index:9999;top:0;left:0;filter:alpha(opacity=20);-moz-opacity:0.2;opacity:.2;"></div>'), n = $("#mask_div"), n.css({
            width: t,
            height: e,
            background: "#000"
        })
    }
}), $(function () {
    function e() {
        var e = document.domain;
        document.domain = "csdn.net";
        var t = $("#loginWrap");
        t.html('<iframe src="https://passport.csdn.net/account/loginbox?service=http://blog.csdn.net/pheweb/reload/loginReload&from=http://blog.csdn.net/' + username + "/article/details/" + fileName + '" frameborder="0" height="600" width="400" scrolling="no"></iframe>'), $("#dlMask").show(), $("#loginWrap").show(), $("#dlMask").unbind("click"), $("#dlMask").bind("click", function () {
            $("#dlMask").hide();
            var t = $("#loginWrap");
            return document.domain = e, setTimeout(function () {
                t.hide()
            }, 200), !1
        })
    }

    window.csdn.loginbox = e
});
var __hasProp = {}.hasOwnProperty;
!function (e) {
    var t, i, n, a;
    n = this, t = n.jQuery, i = {}, e(n, i, t), void 0 === n.csdn && (n.csdn = i);
    for (a in i)__hasProp.call(i, a) && (n[a] = n.csdn[a] = i[a])
}(function (e, t, i) {
    var n, a, o, s, r;
    if (!(e.CNick instanceof Function && e.cnick instanceof Function && (null != (r = e.csdn) ? r.cnick : void 0)instanceof Function))return void 0 === String.prototype.trim && (String.prototype.trim = function () {
        return this.replace(/^\s+|\s+$/g, "")
    }), s = {}, a = function (t, i) {
        var n, a;
        return arguments.length > 1 ? (s[t] = i, null != (n = e.localStorage) ? n["cnick_" + t] = +new Date + "," + i : void 0) : null != t ? s[t] || function (e) {
            var t, i, n, a;
            if (null != e)return n = e.split(","), t = n[0], i = n[1], 0 < (a = new Date - new Date(parseInt(t, 10))) && 1728e5 > a ? i : void 0
        }(null != (a = e.localStorage) ? a["cnick_" + t] : void 0) : void 0
    }, t.cnick = o = function (t, n, o) {
        var s, r, l, c, d, h, p, m, u, g;
        for (null == t && (t = "a.user_name"), null == n && (n = e.document), null == o && (o = !1), r = i(t, n).filter(function () {
            return o || null == i(this).data("orig_username")
        }).data("orig_username", ""), d = {}, u = 0, g = r.length; g > u; u++)s = r[u], p = s.innerHTML.trim(), null != (h = a(p)) ? i(s).data("orig_username", p).text(h) : (c = d.hasOwnProperty(p) ? d[p] : d[p] = [], c.push(s));
        for (m = function () {
            var e;
            e = [];
            for (l in d)__hasProp.call(d, l) && e.push(l);
            return e
        }(); m.length > 0;)i.getJSON("https://passport.csdn.net/get/nick?callback=?", {users: m.splice(0, 100).join()}, function (e) {
            var t, n, o, s, r;
            if (n = e.status, t = e.data, n && t)for (o = 0, s = t.length; s > o; o++)r = t[o], p = r.u, l = r.n, "null" === l && (l = p), i(d[p]).data("orig_username", p).text(function (e, t) {
                return l || t
            }), a(p, l)
        })
    }, i(function () {
        return o()
    }), e.CNick = n = function () {
        function e(e) {
            this.selector = e
        }

        return e.prototype.showNickname = function () {
            return o(this.selector)
        }, e
    }()
});
var tatolList = [];
BlogData = {liked: !1};
var selfURL = window.location.href;
if (baiduKey && (csdn.afterCasInit = function (e, t) {
        return !!e && void csdn.baiduSearch(e, function (e) {
                needInsertBaidu && showResult(e)
            })
    }), baiduKey && !needInsertBaidu) {
    var BaiduDataL = $('a[strategy*="searchFromBaidu"]').length, str = "keyword=" + baiduKey + "&count=" + BaiduDataL;
    trackByGraylog("storage_baidu_exist?" + str)
}
$(function () {
    var e = {
        leftMenu: function () {
            function e() {
                $(".comment_li_insaidbox").height();
                t ? ($(".comment_li_outbox").css({height: "auto"}), t = !1) : ($(".comment_li_outbox").css({height: "auto"}), t = !0)
            }

            var t = !0;
            $("#comment_list").on("click", ".rec_number", function () {
                var e = $(this).parents(".comment_li_box").find(".child_comment").attr("data-listshow"), t = $(this).find(".iconfont");
                "false" === e ? (t.addClass("icon-shangjiantou").removeClass("icon-xiajiantou"), $(this).parents(".comment_li_box").find(".child_comment").css({height: "auto"}), $(this).parents(".comment_li_box").find(".child_comment").attr({"data-listshow": "true"})) : (t.addClass("icon-xiajiantou").removeClass("icon-shangjiantou"), $(this).parents(".comment_li_box").find(".child_comment").css({height: "0"}), $(this).parents(".comment_li_box").find(".child_comment").attr({"data-listshow": "false"}))
            }), $(".more_comment_btn").on("click", e)
        }, codePop: function () {
            var e = '<div id="lang_list" code="code">                                    <a href="#html" style="width:95px;" class="long_name" target="_self">HTML/XML</a>                                    <a href="#objc" style="width:95px;" class="long_name" target="_self">objective-c</a>                                    <a href="#delphi" style="width:58px;" class="zhong_name" target="_self">Delphi</a>                                    <a href="#ruby" class="zhong_name" target="_self">Ruby</a>                                    <a href="#php" target="_self">PHP</a>                                    <a href="#csharp" class="duan_name" target="_self">C#</a>                                    <a style=" border-right: none;" href="#cpp" class="duan_name" target="_self">C++</a>                                    <a style=" border-bottom:none;width:95px;" href="#javascript" class="long_name" target="_self">JavaScript</a>                                    <a style=" border-bottom:none;width:95px;" href="#vb" class="long_name" target="_self">Visual Basic</a>                                    <a style=" border-bottom:none;" href="#python" class="zhong_name" target="_self">Python</a>                                    <a style=" border-bottom:none;" href="#java" class="zhong_name" target="_self">Java</a>                                    <a style="border-bottom:none;" href="#css" class="duan_name" target="_self">CSS</a>                                    <a style="border-bottom:none;" href="#sql" class="duan_name" target="_self">SQL</a>                                    <a style="border:none; " href="#plain" class="duan_name" target="_self">其它</a>                                    <span class="arrb"></span>                                </div>';
            setTimeout(function () {
                $("#lang_list")[0] || $(".bot_bar").append(e)
            }, 1e3);
            var t = !0;
            $("#ubbtools").on("click", function () {
                $("#lang_list")[0] || $(".bot_bar").append(e), t ? ($("#lang_list").show(), t = !1) : ($("#lang_list").hide(), t = !0)
            })
        }, readMore: function () {
            function e() {
                n ? ($(".article_content").height("").css({overflow: "hidden"}), $(".readall_box").show().addClass("readall_box_nobg"), $(".readall_box").hide().addClass("readall_box_nobg"), n = !1) : ($(".article_content").height(2 * t).css({overflow: "hidden"}), $(".readall_box").show().removeClass("readall_box_nobg"), n = !0)
            }

            var t = $(window).height(), i = $(".article_content").height();
            if (currentUserName)return $(".readall_box").hide().addClass("readall_box_nobg"), !1;
            if (i > 2 * t) {
                $(".article_content").height(2 * t - 285).css({overflow: "hidden"});
                var n = !0;
                $(".read_more_btn").on("click", e);
            } else n = !0, $(".article_content").removeClass("article_Hide"), $(".readall_box").hide().addClass("readall_box_nobg")
        }, leftMenuShow: function () {
            var e = !0, t = $(window).width(), i = function () {
                $(".list_father").is(":animated") ? $(".list_father").stop(!0, !0).css({display: "block"}) : $(".list_father").fadeOut(1e3)
            }, n = function () {
                $(".list_father").is(":animated") ? $(".list_father").stop(!0, !0).css({display: "block"}) : $(".list_father").fadeIn()
            };
            $(".left_menu_btn").hover(n, i), $(".list_father").hover(n, i), $(".menu_con").on("click", function (e) {
                e.stopPropagation()
            });
            var a = $("main").offset().left - 50;
            t < 1280 && (a = 0), t > 1200 ? $(".left_fixed").css({left: a}) : ($(".left_show_button").css({display: "block"}).animate({left: "+40"}, 300), left_fixed_event(), $(".left_fixed"), $(".left_fixed").css({left: -40}).children("ul").addClass("by_left")), $(document).on("click", function () {
                e = !0
            })
        }, topDown: function () {
            var e = $("#csdnBlogDir"), t = parseInt(e.height()), i = 1;
            $(".left_scroll_down").click(function (n) {
                var a = parseInt($(".first_li").height());
                i < a - t && (i += 24, e.scrollTop(i), n.stopPropagation())
            }), $(".left_scroll_top").click(function (t) {
                i >= 2 && (i -= 24, e.scrollTop(i)), t.stopPropagation()
            })
        }, likeFn: function () {
            var e = $(".btn-like"), t = $(".inf_number_box dl:eq(2) dd"), i = $(".left_fixed .btn-like .txt");
            currentUserName ? $.get(blog_address + "/phoenix/article/IsDigg?ArticleId=" + fileName, function (t) {
                0 == t.status ? e.removeClass("liked") : (BlogData.liked = !0, e.addClass("liked"), $(".btn-like i").removeClass("icon-dianzan").addClass("icon-yidianzan")), e.parents(".right_bar").find(".btn-like .txt").text(t.digg)
            }) : e.removeClass("liked"), $(".btn-like").on("click", function () {
                var e = encodeURIComponent(location.href);
                if (currentUserName)$.get(blog_address + "/phoenix/article/digg?ArticleId=" + fileName, function (e) {
                    0 == e.status ? ($(".btn-like").removeClass("liked"), t.text(parseInt(t.text()) - 1), i.text(parseInt(i.text()) - 1), BlogData.liked = !1, $(".btn-like i").removeClass("icon-yidianzan").addClass("icon-dianzan")) : ($(".btn-like").addClass("liked"), $(".btn-like i").removeClass("icon-dianzan").addClass("icon-yidianzan"), t.text(parseInt(t.text()) + 1), i.text(parseInt(i.text()) + 1), BlogData.liked = !0), $(".btn-like").parents(".right_bar").find(".btn-like .txt").text(e.digg)
                }); else {
                    var n = '<div class="login_tip_bg"></div><div class="login_tip_box clearfix"><span class="close">关闭</span>请先<a href="https://passport.csdn.net/account/login?from=' + e + '">登录</a> 或 <a href="http://passport.csdn.net/account/register?from=' + e + '">注册</a>;</div>';
                    $("body").append(n), $(".btn-like").removeClass("liked"), $(document).on("click", ".login_tip_box .close", function () {
                        $(".login_tip_bg").remove(), $(".login_tip_box").remove()
                    })
                }
            })
        }, fixedWrap: function (e) {
            e && $(window).unbind("scroll", fixWrapScroll);
            var t = $(".fixRight"), i = t.offset().top, n = (t.height(), !1);
            fixWrapScroll = function () {
                var e = $(document).scrollTop();
                i <= e ? n || (t.css({
                    position: "fixed",
                    top: "0",
                    "z-index": "1"
                }), n = !0) : n && (n = !1, t.css({position: "relative"}))
            }, $(window).scroll(fixWrapScroll)
        }, showNickName: function () {
            new CNick(".alrLogin dd a:first").showNickname()
        }, deleteTagline: function () {
            $(".article_tags li:last-child > span").css({display: "none"})
        }, rightFixedRightSide: function () {
            var e = $(window).width(), t = $(".right_fixed");
            e > 1440 ? t.css({right: "3%"}) : t.css({right: "1%"})
        }, isAdm: function () {
            try {
                currentUserName && isAdm && $(".right_bar .del").css({display: "block"})
            } catch (e) {
            }
        }, hotcolumnlist: function (t, i) {
            var n = $(t), a = n.height() + 20, o = n.next(".unfold-btn");
            a > i ? n.height(i).css({"overflow-y": "hidden"}) : o.fadeOut(), o.on("click", function () {
                n.height(a), o.css({display: "none"}), e.fixedWrap(!0)
            })
        }
    };
    e.leftMenu(), e.codePop(), e.readMore(), e.leftMenuShow(), e.topDown(), e.likeFn(), e.showNickName(), e.deleteTagline(), e.rightFixedRightSide(), e.isAdm(), e.hotcolumnlist(".ClassSort-list", 190), e.hotcolumnlist(".timeSort-list", 190), e.hotcolumnlist(".column-list", 276), CSDNviewImg("#article_content"), addLoadEvent(e.fixedWrap())
});
var outoBlog = {
    left_menu_isHide: !1, leftMenuAutoMove: function () {
        var e = $(window).width(), t = $(".left_show_button"), i = $(".left_fixed"), n = 80;
        n = e < 1366 ? 50 : 80;
        var a = $("main").offset().left - n;
        if (e < 1254 && (a = 0), e < 1200) {
            if (this.left_menu_isHide)return;
            i.css({left: -40}).children("ul").addClass("by_left"), t.css({display: "block"}).animate({left: "+40"}, 300), this.left_menu_isHide = !0, left_fixed_event()
        } else {
            if (i.css({left: a}), !this.left_menu_isHide)return;
            i.children("ul").removeClass("by_left"), t.css({display: "none"}).animate({left: "0"}, 300), this.left_menu_isHide = !1, $(".left_fixed").unbind("mouseenter").unbind("mouseleave")
        }
    }, rightAutoMove: function () {
        var e = $(".fixRight"), t = $("aside").offset().left;
        "fixed" == e.css("position") ? e.css("left", t) : e.css("left", 0)
    }, MoreComment: function () {
        var e = $(".more_comment"), t = $("#comment_bar");
        "" === t.html() ? e.css("display", "none") : e.css("display", "block")
    }, returnTop: function () {
        var e = $(window).height(), t = $(document).scrollTop(), i = $(".right_fixed");
        t > e ? i.fadeIn(500) : i.fadeOut(500)
    }, rightFixedRightSide: function () {
        var e = $(window).width(), t = $(".right_fixed");
        e > 1440 ? t.css({right: "3%"}) : t.css({right: "1%"})
    }, bottomRcomAutoPosition: function () {
        var e = $(".bottomRcom"), t = $("article"), i = t.offset().left, n = t.width();
        e.css({left: i + n + 20})
    }, recommend_article: function () {
        $recommend_article = $(".recommend_article").not(".recommend_article_out"), $recommend_article.map(function () {
            var e = $(this).children("a").children("dd").children("h2"), t = $(this).children("a").children("dd").children("ul");
            $(this).children("a").children("dd").children(".summary");
            $(this).width() > e.width() + t.width() && (t.addClass("floatR"), e.css("marginBottom", "0"), $(this).children("a").children("dd").children(".summary").before(t[0])), $(this).addClass("recommend_article_out")
        })
    }
};
outoBlog.recommend_article();
var oBlogResize = function () {
    outoBlog.leftMenuAutoMove(), outoBlog.rightFixedRightSide(), outoBlog.bottomRcomAutoPosition()
}, oBlogScroll = function () {
    outoBlog.returnTop()
};
$(window).resize(oBlogResize), $(window).scroll(oBlogScroll), $('#commentform input[type="submit"]').on("click", function () {
    $(".comment_area_btn").click()
}), $(function () {
    function e(e) {
        var t = document.createElement("script");
        t.setAttribute("async", "async"), t.setAttribute("charset", "utf-8"), t.setAttribute("data-notify", "inforFlowMulti_notify"), t.setAttribute("src", "http://shared.ydstatic.com/js/yatdk/3.0.0/stream.js"), t.setAttribute("data-id", "8935aa488dd58452b9e5ee3b44f1212f"), t.setAttribute("data-insert-nodes", "yd_a_d_feed_" + e), t.setAttribute("data-pos", "inline"), t.setAttribute("data-img-Style", "float:right;width:120px;"), t.setAttribute("data-des-Style", "color: #8e959a;line-height: 24px;font-size:14px;font-family: 'PingFang SC', 'Microsoft YaHei', SimHei, Arial, SimSun;"), t.setAttribute("data-tit-Style", "font-size:20px;font-weight:bold;margin-bottom:10px;font-family: 'PingFang SC', 'Microsoft YaHei', SimHei, Arial, SimSun;"), t.setAttribute("data-div-Style", "background-image: url(//img-ads.csdn.net/2016/201608021757063065.png);background-repeat: no-repeat;background-position: bottom left;"), document.body.appendChild(t)
    }

    function t(e) {
        var t = '<div id="BAIDU_SSP__wrapper_u3203594_' + e + '"></div><script type="text/javascript">var cpro_id = "u3203594";</script><script type="text/javascript" src="//cpro.baidustatic.com/cpro/ui/c.js"></script>';
        return t
    }

    function i() {
        var i = $(".recommend_list").children("dl,iframe,a");
        if (i.length > a && o < 5) {
            for (; a < i.length; a += 6)o < 5 && (s ? ($(i[a]).after('<div id="yd_a_d_feed_' + a + '" class="yd_a_d_feed_cla" style="height:124px;overflow: hidden;"></div>'), $("#yd_a_d_feed_" + a).append(t(r)), s = !1, r++) : (i = $(".recommend_list").children("dl,iframe,a"), $(i[a]).after('<dl id="yd_a_d_feed_' + a + '" class="yd_a_d_feed_cla" style="height:124px;overflow: hidden;"></dl>'), e(a), o++, s = !0));
            i = null
        }
        return !1
    }

    function n() {
        var e = '<div class="clearfix nomore_box" style="text-align:center">没有更多内容了，<a href="http://blog.csdn.net/">返回首页</a></div>';
        return c += 1, c > 10 ? !d && (d = !0, void $(".recommend_list").append(e)) : ($(".Recommend_loadanAnimation")[0] || ($(".recommend_list").append(l), overflow_hide($(".downloadElement .summary h2 a"), 28, "overflow-hide-title-height")), void $.ajax({
            url: blog_address + "/article/GetRelatedArticles?pageindex=" + c + "&articleId=" + fileName,
            beforeSend: function () {
            },
            success: function (t) {
                return $(".Recommend_loadanAnimation").remove(), t.length > 0 ? ($(".recommend_list").append(t), outoBlog.recommend_article(), isShowAds && i(), void 0) : (d = !0, void $(".recommend_list").append(e))
            }
        }))
    }

    var a = 5, o = 0, s = !1, r = 0, l = "<div class='Recommend_loadanAnimation'><img src='http://csdnimg.cn/release/phoenix/images/feedLoading.gif'></div>", c = 1, d = !1;
    n();
    var h = $(window).height(), p = function () {
        if (!d) {
            var e = $(document.body).height(), t = $(window).scrollTop(), i = (e - h - t) / h;
            i < .02 && n()
        }
    }, m = function (e, t, i) {
        var n, a = null;
        return function () {
            var o = this, s = arguments, r = +new Date;
            clearTimeout(a), n || (n = r), r - n >= i ? (e.apply(o, s), n = r) : a = setTimeout(function () {
                e.apply(o, s)
            }, t)
        }
    };
    $(window).scroll(m(p, 200, 400))
});
var list = [], editorId = "#comment_content", verifycodeId = "#img_verifycode", listId = "#comment_list", listOutBoxClass = ".comment_li_outbox";
$(document).ready(init_comment), function (e) {
    e.fn.extend({
        selection: function () {
            var t = "", i = this[0];
            if (document.selection) {
                var n = document.selection.createRange();
                t = n.text
            } else if ("number" == typeof i.selectionStart) {
                var a = i.selectionStart, o = i.selectionEnd;
                a != o && (t = i.value.substring(a, o))
            }
            return e.trim(t)
        }, parseHtml: function (t) {
            var i = this[0], n = e(this).val();
            if (document.selection) {
                var a = document.selection.createRange();
                a.text ? a.text = t : e(this).val(n + t)
            } else if ("number" == typeof i.selectionStart) {
                var o = i.selectionStart, s = i.selectionEnd, r = n.substring(0, o), l = n.substring(s);
                e(this).val(r + t + l)
            } else e(this).val(n + t);
            i.selectionStart = i.selectionEnd = e(this).val().length, i.focus()
        }
    })
}(jQuery), page_btn_event();
var c_doing = !1, _c_t;
$(document).ready(function () {
    var e = $("#article_content").find("h1,h2,h3");
    e.length <= 2 && ($("#blog_artical_directory").hide(), $(".left_menu .menu_con").hide()), $(".first_li")[0] || csdnBlogDirectory(e);
    parseInt($("#csdnBlogDir").height())
});
var a, dp = {
    sh: {
        Toolbar: {},
        Utils: {},
        RegexLib: {},
        Brushes: {},
        Strings: {AboutDialog: '<html><head><title>About...</title></head><body class="dp-about"><table cellspacing="0"><tr><td class="copy"><p class="title">dp.SyntaxHighlighter</div><div class="para">Version: {V}</p><p><a href="http://www.dreamprojections.com/syntaxhighlighter/?ref=about" target="_blank">http://www.dreamprojections.com/syntaxhighlighter</a></p>&copy;2004-2007 Alex Gorbatchev.</td></tr><tr><td class="footer"><input type="button" class="close" value="OK" onClick="window.close()"/></td></tr></table></body></html>'},
        ClipboardSwf: "http://csdnimg.cn/public/highlighter/ZeroClipboard.swf",
        Version: "1.5.1"
    }
};
dp.SyntaxHighlighter = dp.sh, dp.sh.Toolbar.Commands = {
    ExpandSource: {
        label: "+ expand source", check: function (e) {
            return e.collapse
        }, func: function (e, t) {
            e.parentNode.removeChild(e), t.div.className = t.div.className.replace("collapsed", "")
        }
    }, ViewSource: {
        label: "view plain", func: function (e, t) {
            e = dp.sh.Utils.FixForBlogger(t.originalCode).replace(/</g, "&lt;"), t = window.open("", "_blank", "width=750, height=400, location=0, resizable=1, menubar=0, scrollbars=0"), t.document.write('<textarea style="width:99%;height:99%">' + e + "</textarea>"), t.document.close()
        }
    }, CopyToClipboard: {
        label: "copy", check: function () {
            return null != window.clipboardData || null != dp.sh.ClipboardSwf
        }, func: function (e, t) {
            if (e = dp.sh.Utils.FixForBlogger(t.originalCode).replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&amp;/g, "&"), window.clipboardData)window.clipboardData.setData("text", e); else if (null != dp.sh.ClipboardSwf) {
                var i = t.flashCopier;
                null == i && (i = document.createElement("div"), t.flashCopier = i, t.div.appendChild(i)), i.innerHTML = '<embed src="' + dp.sh.ClipboardSwf + '" FlashVars="clipboard=' + encodeURIComponent(e) + '" width="0" height="0" type="application/x-shockwave-flash"></embed>'
            }
            alert("The code is in your clipboard now")
        }
    }, PrintSource: {
        label: "print", func: function (e, t) {
            e = document.createElement("IFRAME");
            var i = null;
            e.style.cssText = "position:absolute;width:0px;height:0px;left:-500px;top:-500px;", document.body.appendChild(e), i = e.contentWindow.document, dp.sh.Utils.CopyStyles(i, window.document), i.write('<div class="' + t.div.className.replace("collapsed", "") + ' printing">' + t.div.innerHTML + "</div>"), i.close(), e.contentWindow.focus(), e.contentWindow.print(), alert("Printing..."), document.body.removeChild(e)
        }
    }, About: {
        label: "?", func: function () {
            var e = window.open("", "_blank", "dialog,width=300,height=150,scrollbars=0"), t = e.document;
            dp.sh.Utils.CopyStyles(t, window.document), t.write(dp.sh.Strings.AboutDialog.replace("{V}", dp.sh.Version)), t.close(), e.focus()
        }
    }
}, dp.sh.Toolbar.Create = function (e) {
    var t = e.source.className, i = document.createElement("DIV");
    i.className = "tools", i.innerHTML = "<b>[" + t + "]</b> ";
    for (var n in dp.sh.Toolbar.Commands) {
        var a = dp.sh.Toolbar.Commands[n];
        "print" == a.label ? null != a.check && !a.check(e) || (i.innerHTML += '<span class="tracking-ad" data-mod="popu_169"> <a href="#" class="' + n + '" title="' + a.label + '" onclick="dp.sh.Toolbar.Command(\'' + n + "',this);return false;\">" + a.label + "</a></span>") : "copy" == a.label ? null != a.check && !a.check(e) || (i.innerHTML += '<span class="tracking-ad" data-mod="popu_168"> <a href="#" class="' + n + '" title="' + a.label + '" onclick="dp.sh.Toolbar.Command(\'' + n + "',this);return false;\">" + a.label + "</a></span>") : null != a.check && !a.check(e) || (i.innerHTML += '<a href="#" class="' + n + '" title="' + a.label + '" onclick="dp.sh.Toolbar.Command(\'' + n + "',this);return false;\">" + a.label + "</a>")
    }
    return i
}, dp.sh.Toolbar.Command = function (e, t) {
    for (var i = t; null != i && i.className.indexOf("dp-highlighter") == -1;)i = i.parentNode;
    null != i && dp.sh.Toolbar.Commands[e].func(t, i.highlighter)
}, dp.sh.Utils.CopyStyles = function (e, t) {
    t = t.getElementsByTagName("link");
    for (var i = 0; i < t.length; i++)"stylesheet" == t[i].rel.toLowerCase() && e.write('<link type="text/css" rel="stylesheet" href="' + t[i].href + '"></link>')
}, dp.sh.Utils.FixForBlogger = function (e) {
    return 1 == dp.sh.isBloggerMode ? e.replace(/<br\s*\/?>|&lt;br\s*\/?&gt;/gi, "\n") : e
}, dp.sh.RegexLib = {
    MultiLineCComments: new RegExp("/\\*[\\s\\S]*?\\*/", "gm"),
    SingleLineCComments: new RegExp("//.*$", "gm"),
    SingleLinePerlComments: new RegExp("#.*$", "gm"),
    DoubleQuotedString: new RegExp('"(?:\\.|(\\\\\\")|[^\\""\\n])*"', "g"),
    SingleQuotedString: new RegExp("'(?:\\.|(\\\\\\')|[^\\''\\n])*'", "g")
}, dp.sh.Match = function (e, t, i) {
    this.value = e, this.index = t, this.length = e.length, this.css = i
}, dp.sh.Highlighter = function () {
    this.noGutter = !1, this.addControls = !0, this.collapse = !1, this.tabsToSpaces = !0, this.wrapColumn = 80, this.showColumns = !0
}, dp.sh.Highlighter.SortCallback = function (e, t) {
    return e.index < t.index ? -1 : e.index > t.index ? 1 : e.length < t.length ? -1 : e.length > t.length ? 1 : 0
}, a = dp.sh.Highlighter.prototype, a.CreateElement = function (e) {
    return e = document.createElement(e), e.highlighter = this, e
}, a.GetMatches = function (e, t) {
    for (var i = null; null != (i = e.exec(this.code));)this.matches[this.matches.length] = new dp.sh.Match(i[0], i.index, t)
}, a.AddBit = function (e, t) {
    if (null != e && 0 != e.length) {
        var i = this.CreateElement("SPAN");
        if (e = e.replace(/ /g, "&nbsp;"), e = e.replace(/</g, "&lt;"), e = e.replace(/(\r?\n)|(\[BR\])/gm, "&nbsp;<br>"), null != t)if (/br/gi.test(e)) {
            e = e.split("&nbsp;<br>");
            for (var n = 0; n < e.length; n++)i = this.CreateElement("SPAN"), i.className = t, i.innerHTML = e[n], this.div.appendChild(i), n + 1 < e.length && this.div.appendChild(this.CreateElement("BR"))
        } else i.className = t, i.innerHTML = e, this.div.appendChild(i); else i.innerHTML = e, this.div.appendChild(i)
    }
}, a.IsInside = function (e) {
    if (null == e || 0 == e.length)return !1;
    for (var t = 0; t < this.matches.length; t++) {
        var i = this.matches[t];
        if (null != i && e.index > i.index && e.index < i.index + i.length)return !0
    }
    return !1
}, a.ProcessRegexList = function () {
    for (var e = 0; e < this.regexList.length; e++)this.GetMatches(this.regexList[e].regex, this.regexList[e].css)
}, a.ProcessSmartTabs = function (e) {
    function t(e, t, i) {
        var n = e.substr(0, t);
        e = e.substr(t + 1, e.length), t = "";
        for (var a = 0; a < i; a++)t += " ";
        return n + t + e
    }

    function i(e, i) {
        if (e.indexOf(a) == -1)return e;
        for (var n = 0; (n = e.indexOf(a)) != -1;)e = t(e, n, i - n % i);
        return e
    }

    e = e.split("\n");
    for (var n = "", a = "\t", o = 0; o < e.length; o++)n += i(e[o], 4) + "\n";
    return n
}, a.SwitchToList = function () {
    var e = this.div.innerHTML.replace(/<(br)\/?>/gi, "\n").split("\n");
    if (1 == this.addControls && this.bar.appendChild(dp.sh.Toolbar.Create(this)), this.showColumns) {
        for (var t = this.CreateElement("div"), i = this.CreateElement("div"), n = 1; n <= 150;)n % 10 == 0 ? (t.innerHTML += n, n += (n + "").length) : (t.innerHTML += "&middot;", n++);
        i.className = "columns", i.appendChild(t), this.bar.appendChild(i)
    }
    for (n = 0, t = this.firstLine; n < e.length - 1; n++, t++) {
        i = this.CreateElement("LI");
        var a = this.CreateElement("SPAN");
        i.className = n % 2 == 0 ? "alt" : "", a.innerHTML = e[n] + "&nbsp;", i.appendChild(a), this.ol.appendChild(i)
    }
    this.div.innerHTML = ""
}, a.Highlight = function (e) {
    function t(e) {
        return e.replace(/^\s*(.*?)[\s\n]*$/g, "$1")
    }

    function i(e) {
        return e.replace(/\n*$/, "").replace(/^\n*/, "")
    }

    function n(e) {
        e = dp.sh.Utils.FixForBlogger(e).split("\n");
        for (var i = new RegExp("^\\s*", "g"), n = 1e3, a = 0; a < e.length && n > 0; a++)if (0 != t(e[a]).length) {
            var o = i.exec(e[a]);
            null != o && o.length > 0 && (n = Math.min(o[0].length, n))
        }
        if (n > 0)for (a = 0; a < e.length; a++)e[a] = e[a].substr(n);
        return e.join("\n")
    }

    function a(e, t, i) {
        return e.substr(t, i - t)
    }

    var o = 0;
    if (null == e && (e = ""), this.originalCode = e, this.code = i(n(e)), this.div = this.CreateElement("DIV"), this.bar = this.CreateElement("DIV"), this.ol = this.CreateElement("OL"), this.matches = [], this.div.className = "dp-highlighter", this.div.highlighter = this, this.bar.className = "bar", this.ol.start = this.firstLine, null != this.CssClass && (this.ol.className = this.CssClass), this.collapse && (this.div.className += " collapsed"), this.noGutter && (this.div.className += " nogutter"), 1 == this.tabsToSpaces && (this.code = this.ProcessSmartTabs(this.code)), this.ProcessRegexList(), 0 == this.matches.length)this.AddBit(this.code, null); else {
        for (this.matches = this.matches.sort(dp.sh.Highlighter.SortCallback), e = 0; e < this.matches.length; e++)this.IsInside(this.matches[e]) && (this.matches[e] = null);
        for (e = 0; e < this.matches.length; e++) {
            var s = this.matches[e];
            null != s && 0 != s.length && (this.AddBit(a(this.code, o, s.index), null), this.AddBit(s.value, s.css), o = s.index + s.length)
        }
        this.AddBit(this.code.substr(o), null)
    }
    this.SwitchToList(), this.div.appendChild(this.bar), this.div.appendChild(this.ol)
}, a.GetKeywords = function (e) {
    return "\\b" + e.replace(/ /g, "\\b|\\b") + "\\b"
}, dp.sh.BloggerMode = function () {
    dp.sh.isBloggerMode = !0
}, dp.sh.HighlightAll = function (e, t, i, n, a, o) {
    function s() {
        for (var e = arguments, t = 0; t < e.length; t++)if (null != e[t]) {
            if ("string" == typeof e[t] && "" != e[t])return e[t] + "";
            if ("object" == typeof e[t] && "" != e[t].value)return e[t].value + ""
        }
        return null
    }

    function r(e, t) {
        for (var i = 0; i < t.length; i++)if (t[i] == e)return !0;
        return !1
    }

    function l(e, t, i) {
        e = new RegExp("^" + e + "\\[(\\w+)\\]$", "gi");
        for (var n = null, a = 0; a < t.length; a++)if (null != (n = e.exec(t[a])))return n[1];
        return i
    }

    function c(e, t, i) {
        i = document.getElementsByTagName(i);
        for (var n = 0; n < i.length; n++)i[n].getAttribute("name") == t && e.push(i[n])
    }

    var d = [], h = null, p = {};
    if (c(d, e, "pre"), c(d, e, "textarea"), 0 != d.length) {
        for (var m in dp.sh.Brushes)if (h = dp.sh.Brushes[m].Aliases, null != h)for (e = 0; e < h.length; e++)p[h[e]] = m;
        for (e = 0; e < d.length; e++) {
            m = d[e];
            var u = s(m.attributes["class"], m.className, m.attributes.language, m.language);
            if (h = "", null != u && (u = u.split(":"), h = u[0].toLowerCase(), null != p[h])) {
                h = new dp.sh.Brushes[p[h]], m.style.display = "none", h.noGutter = null == t ? r("nogutter", u) : !t, h.addControls = null == i ? !r("nocontrols", u) : i, h.collapse = null == n ? r("collapse", u) : n, h.showColumns = null == o ? r("showcolumns", u) : o;
                var g = document.getElementsByTagName("head")[0];
                if (h.Style && g) {
                    var f = document.createElement("style");
                    if (f.setAttribute("type", "text/css"), f.styleSheet)f.styleSheet.cssText = h.Style; else {
                        var _ = document.createTextNode(h.Style);
                        f.appendChild(_)
                    }
                    g.appendChild(f)
                }
                h.firstLine = null == a ? parseInt(l("firstline", u, 1)) : a, h.source = m, h.Highlight(m.innerHTML), h.div.className += " bg_" + m.className, m.parentNode.insertBefore(h.div, m)
            }
        }
    }
}, dp.sh.Brushes.Xml = function () {
    this.CssClass = "dp-xml", this.Style = ""
}, dp.sh.Brushes.Xml.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Xml.Aliases = ["xml", "xhtml", "xslt", "html", "xhtml"], dp.sh.Brushes.Xml.prototype.ProcessRegexList = function () {
    function e(e, t) {
        e[e.length] = t
    }

    var t = null, i = null;
    for (this.GetMatches(new RegExp("(&lt;|<)\\!\\[[\\w\\s]*?\\[(.|\\s)*?\\]\\](&gt;|>)", "gm"), "cdata"), this.GetMatches(new RegExp("(&lt;|<)!--\\s*.*?\\s*--(&gt;|>)", "gm"), "comments"), i = new RegExp("([:\\w-.]+)\\s*=\\s*(\".*?\"|'.*?'|\\w+)*|(\\w+)", "gm"); null != (t = i.exec(this.code));)null != t[1] && (e(this.matches, new dp.sh.Match(t[1], t.index, "attribute")), void 0 != t[2] && e(this.matches, new dp.sh.Match(t[2], t.index + t[1].length + t[0].substr(t[1].length).indexOf(t[2]), "attribute-value")));
    for (this.GetMatches(new RegExp("(&lt;|<)/*\\?*(?!\\!)|/*\\?*(&gt;|>)", "gm"), "tag"), i = new RegExp("(?:&lt;|<)/*\\?*\\s*([:\\w-.]+)", "gm"); null != (t = i.exec(this.code));)e(this.matches, new dp.sh.Match(t[1], t.index + t[0].indexOf(t[1]), "tag-name"))
}, dp.sh.Brushes.Vb = function () {
    this.regexList = [{regex: new RegExp("'.*$", "gm"), css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {
        regex: new RegExp("^\\s*#.*", "gm"),
        css: "preprocessor"
    }, {
        regex: new RegExp(this.GetKeywords("AddHandler AddressOf AndAlso Alias And Ansi As Assembly Auto Boolean ByRef Byte ByVal Call Case Catch CBool CByte CChar CDate CDec CDbl Char CInt Class CLng CObj Const CShort CSng CStr CType Date Decimal Declare Default Delegate Dim DirectCast Do Double Each Else ElseIf End Enum Erase Error Event Exit False Finally For Friend Function Get GetType GoSub GoTo Handles If Implements Imports In Inherits Integer Interface Is Let Lib Like Long Loop Me Mod Module MustInherit MustOverride MyBase MyClass Namespace New Next Not Nothing NotInheritable NotOverridable Object On Option Optional Or OrElse Overloads Overridable Overrides ParamArray Preserve Private Property Protected Public RaiseEvent ReadOnly ReDim REM RemoveHandler Resume Return Select Set Shadows Shared Short Single Static Step Stop String Structure Sub SyncLock Then Throw To True Try TypeOf Unicode Until Variant When While With WithEvents WriteOnly Xor"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-vb"
}, dp.sh.Brushes.Vb.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Vb.Aliases = ["vb", "vb.net"], dp.sh.Brushes.Sql = function () {
    this.regexList = [{regex: new RegExp("--(.*)$", "gm"), css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {
        regex: dp.sh.RegexLib.SingleQuotedString,
        css: "string"
    }, {
        regex: new RegExp(this.GetKeywords("abs avg case cast coalesce convert count current_timestamp current_user day isnull left lower month nullif replace right session_user space substring sum system_user upper user year"), "gmi"),
        css: "func"
    }, {
        regex: new RegExp(this.GetKeywords("all and any between cross in join like not null or outer some"), "gmi"),
        css: "op"
    }, {
        regex: new RegExp(this.GetKeywords("absolute action add after alter as asc at authorization begin bigint binary bit by cascade char character check checkpoint close collate column commit committed connect connection constraint contains continue create cube current current_date current_time cursor database date deallocate dec decimal declare default delete desc distinct double drop dynamic else end end-exec escape except exec execute false fetch first float for force foreign forward free from full function global goto grant group grouping having hour ignore index inner insensitive insert instead int integer intersect into is isolation key last level load local max min minute modify move name national nchar next no numeric of off on only open option order out output partial password precision prepare primary prior privileges procedure public read real references relative repeatable restrict return returns revoke rollback rollup rows rule schema scroll second section select sequence serializable set size smallint static statistics table temp temporary then time timestamp to top transaction translation trigger true truncate uncommitted union unique update values varchar varying view when where with work"), "gmi"),
        css: "keyword"
    }], this.CssClass = "dp-sql", this.Style = ""
}, dp.sh.Brushes.Sql.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Sql.Aliases = ["sql"], dp.sh.Brushes.Ruby = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLinePerlComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.DoubleQuotedString, css: "string"}, {
        regex: dp.sh.RegexLib.SingleQuotedString,
        css: "string"
    }, {regex: new RegExp(":[a-z][A-Za-z0-9_]*", "g"), css: "symbol"}, {
        regex: new RegExp("(\\$|@@|@)\\w+", "g"),
        css: "variable"
    }, {
        regex: new RegExp(this.GetKeywords("alias and BEGIN begin break case class def define_method defined do each else elsif END end ensure false for if in module new next nil not or raise redo rescue retry return self super then throw true undef unless until when while yield"), "gm"),
        css: "keyword"
    }, {
        regex: new RegExp(this.GetKeywords("Array Bignum Binding Class Continuation Dir Exception FalseClass File::Stat File Fixnum Fload Hash Integer IO MatchData Method Module NilClass Numeric Object Proc Range Regexp String Struct::TMS Symbol ThreadGroup Thread Time TrueClass"), "gm"),
        css: "builtin"
    }], this.CssClass = "dp-rb", this.Style = ""
}, dp.sh.Brushes.Ruby.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Ruby.Aliases = ["ruby", "rails", "ror"], dp.sh.Brushes.Python = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLinePerlComments,
        css: "comment"
    }, {regex: new RegExp("^\\s*@\\w+", "gm"), css: "decorator"}, {
        regex: new RegExp("(['\"]{3})([^\\1])*?\\1", "gm"),
        css: "comment"
    }, {
        regex: new RegExp('"(?!")(?:\\.|\\\\\\"|[^\\""\\n\\r])*"', "gm"),
        css: "string"
    }, {
        regex: new RegExp("'(?!')*(?:\\.|(\\\\\\')|[^\\''\\n\\r])*'", "gm"),
        css: "string"
    }, {
        regex: new RegExp("\\b\\d+\\.?\\w*", "g"),
        css: "number"
    }, {
        regex: new RegExp(this.GetKeywords("and assert break class continue def del elif else except exec finally for from global if import in is lambda not or pass print raise return try yield while"), "gm"),
        css: "keyword"
    }, {
        regex: new RegExp(this.GetKeywords("None True False self cls class_"), "gm"),
        css: "special"
    }], this.CssClass = "dp-py", this.Style = ""
}, dp.sh.Brushes.Python.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Python.Aliases = ["py", "python"], dp.sh.Brushes.Plain = function () {
    this.regexList = []
}, dp.sh.Brushes.Plain.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Plain.Aliases = ["plain", "text", "txt"], dp.sh.Brushes.Php = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.MultiLineCComments, css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {regex: dp.sh.RegexLib.SingleQuotedString, css: "string"}, {
        regex: new RegExp("\\$\\w+", "g"),
        css: "vars"
    }, {
        regex: new RegExp(this.GetKeywords("abs acos acosh addcslashes addslashes array_change_key_case array_chunk array_combine array_count_values array_diff array_diff_assoc array_diff_key array_diff_uassoc array_diff_ukey array_fill array_filter array_flip array_intersect array_intersect_assoc array_intersect_key array_intersect_uassoc array_intersect_ukey array_key_exists array_keys array_map array_merge array_merge_recursive array_multisort array_pad array_pop array_product array_push array_rand array_reduce array_reverse array_search array_shift array_slice array_splice array_sum array_udiff array_udiff_assoc array_udiff_uassoc array_uintersect array_uintersect_assoc array_uintersect_uassoc array_unique array_unshift array_values array_walk array_walk_recursive atan atan2 atanh base64_decode base64_encode base_convert basename bcadd bccomp bcdiv bcmod bcmul bindec bindtextdomain bzclose bzcompress bzdecompress bzerrno bzerror bzerrstr bzflush bzopen bzread bzwrite ceil chdir checkdate checkdnsrr chgrp chmod chop chown chr chroot chunk_split class_exists closedir closelog copy cos cosh count count_chars date decbin dechex decoct deg2rad delete ebcdic2ascii echo empty end ereg ereg_replace eregi eregi_replace error_log error_reporting escapeshellarg escapeshellcmd eval exec exit exp explode extension_loaded feof fflush fgetc fgetcsv fgets fgetss file_exists file_get_contents file_put_contents fileatime filectime filegroup fileinode filemtime fileowner fileperms filesize filetype floatval flock floor flush fmod fnmatch fopen fpassthru fprintf fputcsv fputs fread fscanf fseek fsockopen fstat ftell ftok getallheaders getcwd getdate getenv gethostbyaddr gethostbyname gethostbynamel getimagesize getlastmod getmxrr getmygid getmyinode getmypid getmyuid getopt getprotobyname getprotobynumber getrandmax getrusage getservbyname getservbyport gettext gettimeofday gettype glob gmdate gmmktime ini_alter ini_get ini_get_all ini_restore ini_set interface_exists intval ip2long is_a is_array is_bool is_callable is_dir is_double is_executable is_file is_finite is_float is_infinite is_int is_integer is_link is_long is_nan is_null is_numeric is_object is_readable is_real is_resource is_scalar is_soap_fault is_string is_subclass_of is_uploaded_file is_writable is_writeable mkdir mktime nl2br parse_ini_file parse_str parse_url passthru pathinfo readlink realpath rewind rewinddir rmdir round str_ireplace str_pad str_repeat str_replace str_rot13 str_shuffle str_split str_word_count strcasecmp strchr strcmp strcoll strcspn strftime strip_tags stripcslashes stripos stripslashes stristr strlen strnatcasecmp strnatcmp strncasecmp strncmp strpbrk strpos strptime strrchr strrev strripos strrpos strspn strstr strtok strtolower strtotime strtoupper strtr strval substr substr_compare"), "gmi"),
        css: "func"
    }, {
        regex: new RegExp(this.GetKeywords("and or xor __FILE__ __LINE__ array as break case cfunction class const continue declare default die do else elseif enddeclare endfor endforeach endif endswitch endwhile extends for foreach function include include_once global if new old_function return static switch use require require_once var while __FUNCTION__ __CLASS__ __METHOD__ abstract interface public implements extends private protected throw"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-c"
}, dp.sh.Brushes.Php.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Php.Aliases = ["php"], dp.sh.Brushes.JScript = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.MultiLineCComments, css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {regex: dp.sh.RegexLib.SingleQuotedString, css: "string"}, {
        regex: new RegExp("^\\s*#.*", "gm"),
        css: "preprocessor"
    }, {
        regex: new RegExp(this.GetKeywords("abstract boolean break byte case catch char class const continue debugger default delete do double else enum export extends false final finally float for function goto if implements import in instanceof int interface long native new null package private protected public return short static super switch synchronized this throw throws transient true try typeof var void volatile while with"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-c"
}, dp.sh.Brushes.JScript.prototype = new dp.sh.Highlighter, dp.sh.Brushes.JScript.Aliases = ["js", "jscript", "javascript"], dp.sh.Brushes.Java = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.MultiLineCComments, css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {
        regex: dp.sh.RegexLib.SingleQuotedString,
        css: "string"
    }, {
        regex: new RegExp("\\b([\\d]+(\\.[\\d]+)?|0x[a-f0-9]+)\\b", "gi"),
        css: "number"
    }, {
        regex: new RegExp("(?!\\@interface\\b)\\@[\\$\\w]+\\b", "g"),
        css: "annotation"
    }, {
        regex: new RegExp("\\@interface\\b", "g"),
        css: "keyword"
    }, {
        regex: new RegExp(this.GetKeywords("abstract assert boolean break byte case catch char class const continue default do double else enum extends false final finally float for goto if implements import instanceof int interface long native new null package private protected public return short static strictfp super switch synchronized this throw throws true transient try void volatile while"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-j", this.Style = ""
}, dp.sh.Brushes.Java.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Java.Aliases = ["java"], dp.sh.Brushes.Delphi = function () {
    this.regexList = [{
        regex: new RegExp("\\(\\*[\\s\\S]*?\\*\\)", "gm"),
        css: "comment"
    }, {regex: new RegExp("{(?!\\$)[\\s\\S]*?}", "gm"), css: "comment"}, {
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.SingleQuotedString, css: "string"}, {
        regex: new RegExp("\\{\\$[a-zA-Z]+ .+\\}", "g"),
        css: "directive"
    }, {regex: new RegExp("\\b[\\d\\.]+\\b", "g"), css: "number"}, {
        regex: new RegExp("\\$[a-zA-Z0-9]+\\b", "g"),
        css: "number"
    }, {
        regex: new RegExp(this.GetKeywords("abs addr and ansichar ansistring array as asm begin boolean byte cardinal case char class comp const constructor currency destructor div do double downto else end except exports extended false file finalization finally for function goto if implementation in inherited int64 initialization integer interface is label library longint longword mod nil not object of on or packed pansichar pansistring pchar pcurrency pdatetime pextended pint64 pointer private procedure program property pshortstring pstring pvariant pwidechar pwidestring protected public published raise real real48 record repeat set shl shortint shortstring shr single smallint string then threadvar to true try type unit until uses val var varirnt while widechar widestring with word write writeln xor"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-delphi", this.Style = ""
}, dp.sh.Brushes.Delphi.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Delphi.Aliases = ["delphi", "pascal"], dp.sh.Brushes.CSS = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.MultiLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.DoubleQuotedString, css: "string"}, {
        regex: dp.sh.RegexLib.SingleQuotedString,
        css: "string"
    }, {
        regex: new RegExp("\\#[a-zA-Z0-9]{3,6}", "g"),
        css: "value"
    }, {regex: new RegExp("(-?\\d+)(.\\d+)?(px|em|pt|:|%|)", "g"), css: "value"}, {
        regex: new RegExp("!important", "g"),
        css: "important"
    }, {
        regex: new RegExp(this.GetKeywordsCSS("ascent azimuth background-attachment background-color background-image background-position background-repeat background baseline bbox border-collapse border-color border-spacing border-style border-top border-right border-bottom border-left border-top-color border-right-color border-bottom-color border-left-color border-top-style border-right-style border-bottom-style border-left-style border-top-width border-right-width border-bottom-width border-left-width border-width border cap-height caption-side centerline clear clip color content counter-increment counter-reset cue-after cue-before cue cursor definition-src descent direction display elevation empty-cells float font-size-adjust font-family font-size font-stretch font-style font-variant font-weight font height letter-spacing line-height list-style-image list-style-position list-style-type list-style margin-top margin-right margin-bottom margin-left margin marker-offset marks mathline max-height max-width min-height min-width orphans outline-color outline-style outline-width outline overflow padding-top padding-right padding-bottom padding-left padding page page-break-after page-break-before page-break-inside pause pause-after pause-before pitch pitch-range play-during position quotes richness size slope src speak-header speak-numeral speak-punctuation speak speech-rate stemh stemv stress table-layout text-align text-decoration text-indent text-shadow text-transform unicode-bidi unicode-range units-per-em vertical-align visibility voice-family volume white-space widows width widths word-spacing x-height z-index"), "gm"),
        css: "keyword"
    }, {
        regex: new RegExp(this.GetValuesCSS("above absolute all always aqua armenian attr aural auto avoid baseline behind below bidi-override black blink block blue bold bolder both bottom braille capitalize caption center center-left center-right circle close-quote code collapse compact condensed continuous counter counters crop cross crosshair cursive dashed decimal decimal-leading-zero default digits disc dotted double embed embossed e-resize expanded extra-condensed extra-expanded fantasy far-left far-right fast faster fixed format fuchsia gray green groove handheld hebrew help hidden hide high higher icon inline-table inline inset inside invert italic justify landscape large larger left-side left leftwards level lighter lime line-through list-item local loud lower-alpha lowercase lower-greek lower-latin lower-roman lower low ltr marker maroon medium message-box middle mix move narrower navy ne-resize no-close-quote none no-open-quote no-repeat normal nowrap n-resize nw-resize oblique olive once open-quote outset outside overline pointer portrait pre print projection purple red relative repeat repeat-x repeat-y rgb ridge right right-side rightwards rtl run-in screen scroll semi-condensed semi-expanded separate se-resize show silent silver slower slow small small-caps small-caption smaller soft solid speech spell-out square s-resize static status-bar sub super sw-resize table-caption table-cell table-column table-column-group table-footer-group table-header-group table-row table-row-group teal text-bottom text-top thick thin top transparent tty tv ultra-condensed ultra-expanded underline upper-alpha uppercase upper-latin upper-roman url visible wait white wider w-resize x-fast x-high x-large x-loud x-low x-slow x-small x-soft xx-large xx-small yellow"), "g"),
        css: "value"
    }, {
        regex: new RegExp(this.GetValuesCSS("[mM]onospace [tT]ahoma [vV]erdana [aA]rial [hH]elvetica [sS]ans-serif [sS]erif"), "g"),
        css: "value"
    }], this.CssClass = "dp-css", this.Style = ""
}, dp.sh.Highlighter.prototype.GetKeywordsCSS = function (e) {
    return "\\b([a-z_]|)" + e.replace(/ /g, "(?=:)\\b|\\b([a-z_\\*]|\\*|)") + "(?=:)\\b"
}, dp.sh.Highlighter.prototype.GetValuesCSS = function (e) {
    return "\\b" + e.replace(/ /g, "(?!-)(?!:)\\b|\\b()") + ":\\b"
}, dp.sh.Brushes.CSS.prototype = new dp.sh.Highlighter, dp.sh.Brushes.CSS.Aliases = ["css"], dp.sh.Brushes.CSharp = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.MultiLineCComments, css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {regex: dp.sh.RegexLib.SingleQuotedString, css: "string"}, {
        regex: new RegExp("^\\s*#.*", "gm"),
        css: "preprocessor"
    }, {
        regex: new RegExp(this.GetKeywords("abstract as base bool break byte case catch char checked class const continue decimal default delegate do double else enum event explicit extern false finally fixed float for foreach get goto if implicit in int interface internal is lock long namespace new null object operator out override params private protected public readonly ref return sbyte sealed set short sizeof stackalloc static string struct switch this throw true try typeof uint ulong unchecked unsafe ushort using virtual void while"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-c", this.Style = ""
}, dp.sh.Brushes.CSharp.prototype = new dp.sh.Highlighter, dp.sh.Brushes.CSharp.Aliases = ["c#", "c-sharp", "csharp"], dp.sh.Brushes.Cpp = function () {
    this.regexList = [{
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.MultiLineCComments, css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {regex: dp.sh.RegexLib.SingleQuotedString, css: "string"}, {
        regex: new RegExp("^ *#.*", "gm"),
        css: "preprocessor"
    }, {
        regex: new RegExp(this.GetKeywords("ATOM BOOL BOOLEAN BYTE CHAR COLORREF DWORD DWORDLONG DWORD_PTR DWORD32 DWORD64 FLOAT HACCEL HALF_PTR HANDLE HBITMAP HBRUSH HCOLORSPACE HCONV HCONVLIST HCURSOR HDC HDDEDATA HDESK HDROP HDWP HENHMETAFILE HFILE HFONT HGDIOBJ HGLOBAL HHOOK HICON HINSTANCE HKEY HKL HLOCAL HMENU HMETAFILE HMODULE HMONITOR HPALETTE HPEN HRESULT HRGN HRSRC HSZ HWINSTA HWND INT INT_PTR INT32 INT64 LANGID LCID LCTYPE LGRPID LONG LONGLONG LONG_PTR LONG32 LONG64 LPARAM LPBOOL LPBYTE LPCOLORREF LPCSTR LPCTSTR LPCVOID LPCWSTR LPDWORD LPHANDLE LPINT LPLONG LPSTR LPTSTR LPVOID LPWORD LPWSTR LRESULT PBOOL PBOOLEAN PBYTE PCHAR PCSTR PCTSTR PCWSTR PDWORDLONG PDWORD_PTR PDWORD32 PDWORD64 PFLOAT PHALF_PTR PHANDLE PHKEY PINT PINT_PTR PINT32 PINT64 PLCID PLONG PLONGLONG PLONG_PTR PLONG32 PLONG64 POINTER_32 POINTER_64 PSHORT PSIZE_T PSSIZE_T PSTR PTBYTE PTCHAR PTSTR PUCHAR PUHALF_PTR PUINT PUINT_PTR PUINT32 PUINT64 PULONG PULONGLONG PULONG_PTR PULONG32 PULONG64 PUSHORT PVOID PWCHAR PWORD PWSTR SC_HANDLE SC_LOCK SERVICE_STATUS_HANDLE SHORT SIZE_T SSIZE_T TBYTE TCHAR UCHAR UHALF_PTR UINT UINT_PTR UINT32 UINT64 ULONG ULONGLONG ULONG_PTR ULONG32 ULONG64 USHORT USN VOID WCHAR WORD WPARAM WPARAM WPARAM char bool short int __int32 __int64 __int8 __int16 long float double __wchar_t clock_t _complex _dev_t _diskfree_t div_t ldiv_t _exception _EXCEPTION_POINTERS FILE _finddata_t _finddatai64_t _wfinddata_t _wfinddatai64_t __finddata64_t __wfinddata64_t _FPIEEE_RECORD fpos_t _HEAPINFO _HFILE lconv intptr_t jmp_buf mbstate_t _off_t _onexit_t _PNH ptrdiff_t _purecall_handler sig_atomic_t size_t _stat __stat64 _stati64 terminate_function time_t __time64_t _timeb __timeb64 tm uintptr_t _utimbuf va_list wchar_t wctrans_t wctype_t wint_t signed"), "gm"),
        css: "datatypes"
    }, {
        regex: new RegExp(this.GetKeywords("break case catch class const __finally __exception __try const_cast continue private public protected __declspec default delete deprecated dllexport dllimport do dynamic_cast else enum explicit extern if for friend goto inline mutable naked namespace new noinline noreturn nothrow register reinterpret_cast return selectany sizeof static static_cast struct switch template this thread throw true false try typedef typeid typename union using uuid virtual void volatile whcar_t while"), "gm"),
        css: "keyword"
    }], this.CssClass = "dp-cpp", this.Style = ""
}, dp.sh.Brushes.Cpp.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Cpp.Aliases = ["cpp", "c", "c++"], dp.sh.Brushes.Objc = function () {
    var e = "ATOM BOOL BOOLEAN BYTE CHAR COLORREF DWORD DWORDLONG DWORD_PTR DWORD32 DWORD64 FLOAT HACCEL HALF_PTR HANDLE HBITMAP HBRUSH HCOLORSPACE HCONV HCONVLIST HCURSOR HDC HDDEDATA HDESK HDROP HDWP HENHMETAFILE HFILE HFONT HGDIOBJ HGLOBAL HHOOK HICON HINSTANCE HKEY HKL HLOCAL HMENU HMETAFILE HMODULE HMONITOR HPALETTE HPEN HRESULT HRGN HRSRC HSZ HWINSTA HWND INT INT_PTR INT32 INT64 LANGID LCID LCTYPE LGRPID LONG LONGLONG LONG_PTR LONG32 LONG64 LPARAM LPBOOL LPBYTE LPCOLORREF LPCSTR LPCTSTR LPCVOID LPCWSTR LPDWORD LPHANDLE LPINT LPLONG LPSTR LPTSTR LPVOID LPWORD LPWSTR LRESULT PBOOL PBOOLEAN PBYTE PCHAR PCSTR PCTSTR PCWSTR PDWORDLONG PDWORD_PTR PDWORD32 PDWORD64 PFLOAT PHALF_PTR PHANDLE PHKEY PINT PINT_PTR PINT32 PINT64 PLCID PLONG PLONGLONG PLONG_PTR PLONG32 PLONG64 POINTER_32 POINTER_64 PSHORT PSIZE_T PSSIZE_T PSTR PTBYTE PTCHAR PTSTR PUCHAR PUHALF_PTR PUINT PUINT_PTR PUINT32 PUINT64 PULONG PULONGLONG PULONG_PTR PULONG32 PULONG64 PUSHORT PVOID PWCHAR PWORD PWSTR SC_HANDLE SC_LOCK SERVICE_STATUS_HANDLE SHORT SIZE_T SSIZE_T TBYTE TCHAR UCHAR UHALF_PTR UINT UINT_PTR UINT32 UINT64 ULONG ULONGLONG ULONG_PTR ULONG32 ULONG64 USHORT USN VOID WCHAR WORD WPARAM WPARAM WPARAM char bool short int __int32 __int64 __int8 __int16 long float double __wchar_t clock_t _complex _dev_t _diskfree_t div_t ldiv_t _exception _EXCEPTION_POINTERS FILE _finddata_t _finddatai64_t _wfinddata_t _wfinddatai64_t __finddata64_t __wfinddata64_t _FPIEEE_RECORD fpos_t _HEAPINFO _HFILE lconv intptr_t id jmp_buf mbstate_t _off_t _onexit_t _PNH ptrdiff_t _purecall_handler sig_atomic_t size_t _stat __stat64 _stati64 terminate_function time_t __time64_t _timeb __timeb64 tm uintptr_t _utimbuf va_list wchar_t wctrans_t wctype_t wint_t signed", t = "break case catch class copy const __finally __exception __try const_cast continue private public protected __declspec default delete deprecated dllexport dllimport do dynamic_cast else enum explicit extern if for friend getter goto inline mutable naked namespace new nil NO noinline nonatomic noreturn nothrow NULL readonly readwrite register reinterpret_cast retain strong return SEL selectany self setter sizeof static static_cast struct super switch template thread throw true false try typedef typeid typename union using uuid virtual void volatile whcar_t while YES";
    this.regexList = [{
        regex: new RegExp(this.GetKeywords(e), "gm"),
        css: "keyword"
    }, {regex: new RegExp(this.GetKeywords(t), "gm"), css: "keyword"}, {
        regex: new RegExp("@\\w+\\b", "g"),
        css: "keyword"
    }, {regex: new RegExp("[: ]nil", "g"), css: "keyword"}, {
        regex: new RegExp("\\.\\w+", "g"),
        css: "xcodeconstants"
    }, {regex: new RegExp(" \\w+(?=[:\\]])", "g"), css: "vars"}, {
        regex: dp.sh.RegexLib.SingleLineCComments,
        css: "comment"
    }, {regex: dp.sh.RegexLib.MultiLineCComments, css: "comment"}, {
        regex: dp.sh.RegexLib.DoubleQuotedString,
        css: "string"
    }, {regex: dp.sh.RegexLib.SingleQuotedString, css: "string"}, {
        regex: new RegExp('@"[^"]*"', "gm"),
        css: "string"
    }, {regex: new RegExp("\\d", "gm"), css: "xcodenumber"}, {
        regex: new RegExp("^ *#.*", "gm"),
        css: "xcodepreprocessor"
    }, {
        regex: new RegExp("\\w+(?= \\*)", "g"),
        css: "keyword"
    }], this.CssClass = "dp-objc", this.Style = ".dp-objc .vars { color: #d00; }"
}, dp.sh.Brushes.Objc.prototype = new dp.sh.Highlighter, dp.sh.Brushes.Objc.Aliases = ["objc"];
var ZeroClipboard = {
    version: "1.0.7",
    clients: {},
    moviePath: "http://csdnimg.cn/public/highlighter/ZeroClipboard.swf",
    nextId: 1,
    $: function (e) {
        return "string" == typeof e && (e = document.getElementById(e)), e.hide = function () {
            this.style.display = "none"
        }, e.show = function () {
            this.style.display = "block"
        }, e.addClass = function (e) {
            this.removeClass(e), this.className += " " + e
        }, e.removeClass = function (e) {
            for (var t = this.className.split(/\s+/), i = -1, n = 0; n < t.length; n++)t[n] == e && (i = n, n = t.length);
            return i > -1 && (t.splice(i, 1), this.className = t.join(" ")), this
        }, e.hasClass = function (e) {
            return !!this.className.match(new RegExp("\\s*" + e + "\\s*"))
        }, e
    },
    setMoviePath: function (e) {
        this.moviePath = e
    },
    dispatch: function (e, t, i) {
        var n = this.clients[e];
        n && n.receiveEvent(t, i)
    },
    register: function (e, t) {
        this.clients[e] = t
    },
    getDOMObjectPosition: function (e, t) {
        for (var i = {
            left: 0,
            top: 0,
            width: e.width ? e.width : e.offsetWidth,
            height: e.height ? e.height : e.offsetHeight
        }; e && e != t;)i.left += e.offsetLeft, i.top += e.offsetTop, e = e.offsetParent;
        return i
    },
    Client: function (e) {
        this.handlers = {}, this.id = ZeroClipboard.nextId++, this.movieId = "ZeroClipboardMovie_" + this.id, ZeroClipboard.register(this.id, this), e && this.glue(e)
    }
};
ZeroClipboard.Client.prototype = {
    id: 0,
    ready: !1,
    movie: null,
    clipText: "",
    handCursorEnabled: !0,
    cssEffects: !0,
    handlers: null,
    glue: function (e, t, i) {
        this.domElement = ZeroClipboard.$(e);
        var n = 99;
        this.domElement.style.zIndex && (n = parseInt(this.domElement.style.zIndex, 10) + 1), "string" == typeof t ? t = ZeroClipboard.$(t) : "undefined" == typeof t && (t = document.getElementsByTagName("body")[0]);
        var a = ZeroClipboard.getDOMObjectPosition(this.domElement, t);
        this.div = document.createElement("div");
        var o = this.div.style;
        if (o.position = "absolute", o.left = "" + a.left + "px", o.top = "" + a.top + "px", o.width = "" + a.width + "px", o.height = "" + a.height + "px", o.zIndex = n, "object" == typeof i)for (addedStyle in i)o[addedStyle] = i[addedStyle];
        t.appendChild(this.div), this.div.innerHTML = this.getHTML(a.width, a.height)
    },
    getHTML: function (e, t) {
        var i = "", n = "id=" + this.id + "&width=" + e + "&height=" + t;
        if (navigator.userAgent.match(/MSIE/)) {
            var a = location.href.match(/^https/i) ? "https://" : "http://";
            i += '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="' + a + 'download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="' + e + '" height="' + t + '" id="' + this.movieId + '" align="middle"><param name="allowScriptAccess" value="always" /><param name="allowFullScreen" value="false" /><param name="movie" value="' + ZeroClipboard.moviePath + '" /><param name="loop" value="false" /><param name="menu" value="false" /><param name="quality" value="best" /><param name="bgcolor" value="#ffffff" /><param name="flashvars" value="' + n + '"/><param name="wmode" value="transparent"/></object>'
        } else i += '<embed id="' + this.movieId + '" src="' + ZeroClipboard.moviePath + '" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="' + e + '" height="' + t + '" name="' + this.movieId + '" align="middle" allowScriptAccess="always" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="' + n + '" wmode="transparent" />';
        return i
    },
    hide: function () {
        this.div && (this.div.style.left = "-2000px")
    },
    show: function () {
        this.reposition()
    },
    destroy: function () {
        if (this.domElement && this.div) {
            this.hide(), this.div.innerHTML = "";
            var e = document.getElementsByTagName("body")[0];
            try {
                e.removeChild(this.div)
            } catch (t) {
            }
            this.domElement = null, this.div = null
        }
    },
    reposition: function (e) {
        if (e && (this.domElement = ZeroClipboard.$(e), this.domElement || this.hide()), this.domElement && this.div) {
            var t = ZeroClipboard.getDOMObjectPosition(this.domElement), i = this.div.style;
            i.left = "" + t.left + "px", i.top = "" + t.top + "px"
        }
    },
    setText: function (e) {
        this.clipText = e, this.ready && this.movie.setText(e)
    },
    addEventListener: function (e, t) {
        e = e.toString().toLowerCase().replace(/^on/, ""), this.handlers[e] || (this.handlers[e] = []), this.handlers[e].push(t)
    },
    setHandCursor: function (e) {
        this.handCursorEnabled = e, this.ready && this.movie.setHandCursor(e)
    },
    setCSSEffects: function (e) {
        this.cssEffects = !!e
    },
    receiveEvent: function (e, t) {
        switch (e = e.toString().toLowerCase().replace(/^on/, "")) {
            case"load":
                if (this.movie = document.getElementById(this.movieId), !this.movie) {
                    var i = this;
                    return void setTimeout(function () {
                        i.receiveEvent("load", null)
                    }, 1)
                }
                if (!this.ready && navigator.userAgent.match(/Firefox/) && navigator.userAgent.match(/Windows/)) {
                    var i = this;
                    return setTimeout(function () {
                        i.receiveEvent("load", null)
                    }, 100), void(this.ready = !0)
                }
                this.ready = !0, this.movie.setText(this.clipText), this.movie.setHandCursor(this.handCursorEnabled);
                break;
            case"mouseover":
                this.domElement && this.cssEffects && (this.domElement.addClass("hover"), this.recoverActive && this.domElement.addClass("active"));
                break;
            case"mouseout":
                this.domElement && this.cssEffects && (this.recoverActive = !1, this.domElement.hasClass("active") && (this.domElement.removeClass("active"), this.recoverActive = !0), this.domElement.removeClass("hover"));
                break;
            case"mousedown":
                this.domElement && this.cssEffects && this.domElement.addClass("active");
                break;
            case"mouseup":
                this.domElement && this.cssEffects && (this.domElement.removeClass("active"), this.recoverActive = !1)
        }
        if (this.handlers[e])for (var n = 0, a = this.handlers[e].length; n < a; n++) {
            var o = this.handlers[e][n];
            "function" == typeof o ? o(this, t) : "object" == typeof o && 2 == o.length ? o[0][o[1]](this, t) : "string" == typeof o && window[o](this, t)
        }
    }
}, jQuery.createMask = function () {
    var e = document.documentElement.clientHeight, t = document.documentElement.clientWidth, i = $("body").height();
    i > e && (e = i);
    var n = {};
    0 == $("#mask_div").length && $("body").append('<div id="mask_div" style="position:absolute;top:0;left:0;filter:alpha(opacity=20);-moz-opacity:0.2;opacity:.2;z-index:9999"></div>'), n = $("#mask_div"), n.css({
        width: t,
        height: e,
        background: "#000"
    })
}, jQuery.removeMask = function () {
    $("#mask_div").remove()
}, Array.prototype.contain = function (e) {
    for (var t = 0; t < this.length; t++)if (this[t] === e)return !0;
    return !1
}, $(".but-comment-topicon").on("click", function () {
    var e = $("#comment_form").offset().top;
    $(window).scrollTop(e)
}), $(function () {
    var e = {
        markdown_line: function () {
            $(".markdown_views pre").addClass("prettyprint"), $("pre.prettyprint code").each(function () {
                var e = $(this).text().split("\n").length, t = $("<ul/>").addClass("pre-numbering").hide();
                for ($(this).addClass("has-numbering").parent().append(t), i = 1; i <= e; i++)t.append($("<li/>").text(i));
                t.fadeIn(1700)
            }), $(".pre-numbering li").css("color", "#999"), setTimeout(function () {
                $(".math").each(function (e, t) {
                    $(this).find("span").last().css("color", "#fff")
                })
            }), setTimeout(function () {
                $(".toc a[target='_blank']").attr("target", "")
            }, 500)
        }, html_line: function () {
            function e() {
                $(".CopyToClipboard").each(function () {
                    var e = new ZeroClipboard.Client;
                    e.setHandCursor(!0), e.addEventListener("load", function (e) {
                    }), e.addEventListener("mouseOver", function (e) {
                        var t = e.movie.parentNode.parentNode.parentNode.parentNode.nextSibling.innerHTML;
                        t = t.replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&amp;/g, "&"), e.setText(t)
                    }), e.addEventListener("complete", function (e, t) {
                        alert("代码已经复制到你的剪贴板。")
                    }), e.glue(this, this.parentNode)
                })
            }

            $(".article_content pre").each(function () {
                var e = $(this);
                try {
                    if (e.attr("class").indexOf("brush:") != -1) {
                        var t = e.attr("class").split(";")[0].split(":")[1];
                        e.attr("name", "code"), e.attr("class", t)
                    }
                    e.attr("class") && e.attr("name", "code")
                } catch (i) {
                    console.log("未使用编辑器的插入代码按钮插入代码或者编辑器生成的源代码被破坏")
                }
            }), $(".article_content textarea[name=code]").each(function () {
                var e = $(this);
                e.attr("class").indexOf(":") != -1 && e.attr("class", e.attr("class").split(":")[0])
            }), dp.SyntaxHighlighter.HighlightAll("code"), $(".highlighter").addClass("dp-highlighter"), window.clipboardData || setTimeout(e, 1e3)
        }
    }, t = $(".markdown_views")[0];
    t ? e.markdown_line() : e.html_line()
}), $(function () {
    var e = !1;
    $(".all_nav").on("mouseenter", function () {
        $(".nav_com").css({
            height: "90px",
            border: "1px solid #E3E3E3",
            "box-shadow": "0 2px 2px rgba(110,110,110,.1)"
        }), e = !0
    }), $(".nav_com").on("mouseleave", function () {
        $(".nav_com").css({
            height: "45px",
            border: "1px solid rgba(0,0,0,0)",
            "box-shadow": "0 0 0 rgba(110,110,110,0)"
        }), e = !1
    });
    var t = $(".nav_com").find("li.active a").text();
    $(".nav_com li").hasClass("active second_bar") ? ($(".all_nav span.txt").text(t), $(".all_nav").css({"border-bottom": "4px solid #ca0c16"}), $(".nav_com").find("li.active").hide()) : ($(".all_nav span.txt").text("全部"), $(".all_nav").css({"border-bottom": "4px solid rgba(0,0,0,0)"}))
}), $(function () {
    function e(e) {
        $("html,body").animate({scrollTop: e}, 500)
    }

    function t() {
        var t = $(".comment_box"), i = t.offset().top;
        e(i)
    }

    function i() {
        $(this).animate({height: 84}, 500), $(".comment_area").animate({height: 180}, 500), $(".bot_bar").animate({opacity: 1}, 500)
    }

    function n(e) {
        var t = $(e.srcElement || e.target), i = $(".comment_content").val();
        $(t).is(".comment_box,.comment_box *") || "" == i && ($(".comment_content").animate({height: 28}, 500), $(".comment_area").animate({height: 60}, 500), $(".bot_bar").animate({opacity: 0}, 500))
    }

    function a(e) {
        var t = $(e.srcElement || e.target), i = $(".recommend_btn"), n = $(".new_btn");
        $recommendbox = $(".recommend"), $newbox = $(".new_column .new"), $(t).is(".recommend_btn,.recommend_btn *") ? ($newbox.fadeOut(300, function () {
            $recommendbox.fadeIn(300)
        }), i.css("border-bottom", "2px solid #f00"), n.css("border-bottom", "2px solid #e4ebf4")) : $(t).is(".new_btn,.new_btn *") && ($recommendbox.fadeOut(300, function () {
            $newbox.fadeIn(300)
        }), n.css("border-bottom", "2px solid #f00"), i.css("border-bottom", "2px solid #e4ebf4"))
    }

    $(document).on("click", ".btn-pinglun", t), $(document).on("click", ".returnTop", function () {
        $("html,body").animate({scrollTop: 0}, 500)
    }), $(document).on("focus", ".comment_content", i), $(document).on("click", n), $(document).on("click", ".new_column", a), overflow_hide($(".column-list .title"), 44, "overflow-hide-host-height"), overflow_hide($(".hotArticle-list a"), 40, "overflow-hide-hotArticle-height"), overflow_hide($(".imgAndText .right-text .title a"), 48, "overflow-hide-right-text-height"), overflow_hide($(".text .content a"), 48, "overflow-hide-text-height"), $(".left_fixed .btn-like").hover(function () {
        $(".left_fixed .btn-like i").removeClass("icon-dianzan").addClass("icon-yidianzan")
    }, function () {
        return !BlogData.liked && void $(".left_fixed .btn-like i").removeClass("icon-yidianzan").addClass("icon-dianzan")
    }), $(".btn-pinglun").hover(function () {
        $(".btn-pinglun i").removeClass("icon-pinglun").addClass("icon-pinglunhover")
    }, function () {
        $(".btn-pinglun i").removeClass("icon-pinglunhover").addClass("icon-pinglun")
    }), $("#com-quick-collect").hover(function () {
        $("#com-quick-collect i").removeClass("icon-shoucang").addClass("icon-yishoucang")
    }, function () {
        $("#com-quick-collect i").removeClass("icon-yishoucang").addClass("icon-shoucang")
    })
}), $(function () {
    !function () {
        window.location.search.indexOf("readlog") > -1 && currentUserName && (adhoc("track", "logIn_read", 1), $(".readall_box").hide().addClass("readall_box_nobg"), $(".article_content").height("").css({overflow: "hidden"}))
    }()
}), $(function () {
    pulllogShow = function () {
        $(".pulllog-box").fadeIn()
    }, $(document).on("click", ".pulllog-login", function () {
        window.csdn.loginbox()
    }), $(document).on("click", ".iconb", function () {
        $(".pulllog-box").fadeOut()
    }), "" === currentUserName && ($("body").append(e), setTimeout(pulllogShow, 1e3), csdn.trackingAd(".pulllog-login", {
        pid: "详情页登录条",
        mod: "popu_557",
        mtp: "1"
    }), csdn.trackingAd(".pulllog-sigin", {pid: "详情页登录条", mod: "popu_558", mtp: "1"}))
}), $(function () {
    $('a[href="###"]').on("click", function (e) {
        e.preventDefault()
    })
});
var __mm_over = !1, __mm_intro = null;
$(function () {
    var e = $(".badge div img");
    0 === e.length ? $(".interflow .badge").css({paddingTop: 0}) : e.hover(m_over_m, m_out_m)
}), function (e) {
    function t() {
        var e, t;
        e = document.createElement("div"), e.innerHTML = i, i = null, t = e.getElementsByTagName("svg")[0], t && (t.setAttribute("aria-hidden", "true"), t.style.position = "absolute", t.style.width = 0, t.style.height = 0, t.style.overflow = "hidden", r(t, document.body))
    }

    var i = '<svg><symbol id="icon-read" viewBox="0 0 1024 1024"><path d="M988.16 240.64c0-5.12-2.56-11.52-6.4-15.36-2.56-2.56-51.2-55.04-135.68-81.92-32-10.24-64-15.36-96-15.36-97.28 0-181.76 46.08-235.52 84.48-55.04-39.68-139.52-85.76-236.8-85.76-32 0-65.28 5.12-96 15.36-84.48 26.88-131.84 81.92-134.4 84.48-3.84 3.84-5.12 8.96-5.12 15.36l0 546.56 60.16 71.68c3.84 8.96 12.8 15.36 21.76 15.36 3.84 0 7.68 0 10.24-2.56 19.2-5.12 120.32-29.44 199.68-29.44 37.12 0 64 5.12 79.36 15.36 7.68 5.12 11.52 10.24 12.8 16.64 0 12.8 10.24 23.04 23.04 23.04 1.28 0 8.96 0 21.76 0 24.32 0 61.44 0 98.56-2.56l0 0c1.28 0 3.84 0 5.12 0 10.24 0 20.48-7.68 23.04-17.92 2.56-10.24 7.68-16.64 17.92-23.04 16.64-8.96 42.24-14.08 76.8-14.08 78.08 0 171.52 24.32 198.4 32 3.84 1.28 7.68 2.56 11.52 2.56 0 0 0 0 0 0 8.96 0 17.92-5.12 21.76-14.08l64-72.96L988.16 241.92 988.16 240.64zM88.32 744.96 88.32 250.88c14.08-14.08 52.48-46.08 107.52-64 26.88-8.96 53.76-12.8 81.92-12.8 70.4 0 142.08 26.88 213.76 79.36l0 477.44c-38.4-23.04-88.32-34.56-149.76-34.56-32 0-66.56 3.84-102.4 10.24C179.2 715.52 124.16 733.44 88.32 744.96zM893.44 824.32c-20.48-5.12-61.44-15.36-106.24-23.04-35.84-5.12-66.56-7.68-94.72-7.68-43.52 0-76.8 6.4-101.12 20.48-15.36 8.96-26.88 20.48-33.28 34.56-33.28 1.28-65.28 2.56-87.04 2.56-1.28 0-2.56 0-3.84 0-6.4-12.8-15.36-24.32-29.44-32-23.04-15.36-58.88-21.76-106.24-21.76-76.8 0-165.12 19.2-200.96 28.16l-29.44-35.84c51.2-17.92 148.48-47.36 240.64-47.36 70.4 0 122.88 17.92 153.6 52.48l0 0c2.56 2.56 2.56 2.56 2.56 2.56l1.28 1.28c0 0 1.28 1.28 1.28 1.28 0 0 1.28 1.28 1.28 1.28l1.28 0c0 0 2.56 1.28 2.56 1.28l1.28 0c0 0 1.28 0 1.28 0 0 0 1.28 0 1.28 0l2.56 0c0 0 1.28 0 1.28 0 0 0 2.56 0 2.56 0 0 0 1.28 0 1.28 0 0 0 2.56-1.28 2.56-1.28 0 0 1.28 0 1.28 0 0 0 1.28 0 1.28-1.28 0 0 1.28 0 1.28 0 0 0 1.28 0 1.28-1.28 0 0 1.28 0 1.28 0l2.56-2.56 0 0c30.72-37.12 81.92-56.32 152.32-56.32 39.68 0 122.88 6.4 240.64 49.92L893.44 824.32zM940.8 744.96c-35.84-14.08-90.88-32-152.32-43.52-37.12-6.4-71.68-10.24-103.68-10.24-60.16 0-110.08 12.8-148.48 37.12L536.32 253.44c70.4-51.2 142.08-78.08 212.48-78.08 28.16 0 55.04 3.84 81.92 12.8 56.32 17.92 94.72 49.92 110.08 64L940.8 744.96z"  ></path></symbol><symbol id="icon-fanhuidingbu" viewBox="0 0 1024 1024"><path d="M527.072 190.496a21.28 21.28 0 0 0-30.176 0l-155.488 155.488a21.376 21.376 0 0 0 30.176 30.176L512 235.744l140.384 140.384a21.28 21.28 0 0 0 30.208 0 21.376 21.376 0 0 0 0-30.176l-155.52-155.456zM114.336 586.176h91.264V819.2h42.688v-233.024h91.264v-42.656H114.336v42.656z m460.576-42.688h-113.056a53.248 53.248 0 0 0-53.344 53.344v168.992a53.248 53.248 0 0 0 53.344 53.344h113.056a53.248 53.248 0 0 0 53.344-53.344v-168.992a53.248 53.248 0 0 0-53.344-53.344z m10.688 222.368a10.464 10.464 0 0 1-3.136 7.552 10.464 10.464 0 0 1-7.552 3.136h-113.056a10.464 10.464 0 0 1-7.552-3.136 10.464 10.464 0 0 1-3.136-7.552v-168.992c0-2.016 0.544-4.96 3.136-7.552a10.464 10.464 0 0 1 7.552-3.136h113.056c2.016 0 4.96 0.544 7.552 3.136a10.464 10.464 0 0 1 3.136 7.552v168.992z m308.448-206.72a53.248 53.248 0 0 0-37.728-15.616h-146.304V819.2h42.656v-120.928h103.648a53.248 53.248 0 0 0 53.344-53.344v-48.096c0-13.632-5.216-27.296-15.616-37.696z m-27.04 85.792a10.464 10.464 0 0 1-3.136 7.552 10.464 10.464 0 0 1-7.552 3.136h-103.648v-69.408h103.648c2.016 0 4.96 0.544 7.552 3.136a10.464 10.464 0 0 1 3.136 7.552v48.032z" fill="" ></path><path d="M942.08 51.2c16.928 0 30.72 13.792 30.72 30.72v860.16c0 16.928-13.792 30.72-30.72 30.72H81.92a30.784 30.784 0 0 1-30.72-30.72V81.92c0-16.928 13.792-30.72 30.72-30.72h860.16m0-51.2H81.92A81.92 81.92 0 0 0 0 81.92v860.16A81.92 81.92 0 0 0 81.92 1024h860.16A81.92 81.92 0 0 0 1024 942.08V81.92A81.92 81.92 0 0 0 942.08 0z" fill="" ></path></symbol><symbol id="icon-shoucang" viewBox="0 0 1024 1024"><path d="M865.6 1024c-27.2 0-51.2-11.2-68.8-32L520 704 243.2 992c-17.6 20.8-41.6 32-68.8 32-49.6 0-89.6-41.6-89.6-91.2V150.4C84.8 67.2 150.4 0 232 0h576c81.6 0 147.2 67.2 147.2 150.4v782.4c0 49.6-40 91.2-89.6 91.2zM520 611.2l326.4 339.2c4.8 6.4 12.8 9.6 19.2 9.6 14.4 0 25.6-12.8 25.6-27.2V150.4c0-48-36.8-86.4-83.2-86.4h-576c-46.4 0-83.2 38.4-83.2 86.4v782.4c0 14.4 11.2 27.2 25.6 27.2 8 0 14.4-3.2 19.2-9.6l1.6-1.6 324.8-337.6z" fill="" ></path></symbol><symbol id="icon-mulu" viewBox="0 0 1024 1024"><path d="M36.416 201.472h57.44c20.128 0 36.448-18.88 36.448-53.664C130.336 112.992 114.016 96 93.856 96H36.416C16.288 96-0.032 112.992-0.032 147.808c0 34.784 16.288 53.664 36.448 53.664z m262.848 0h678.08c25.792 0 46.656-18.88 46.656-53.664C1023.968 112.992 1003.072 96 977.312 96H299.264c-25.792 0-46.656 16.992-46.656 51.808 0 34.784 20.864 53.664 46.656 53.664z m-203.136 255.296H35.552c-18.912 0-34.208 20.8-34.208 51.552 0 30.816 15.328 54.752 34.208 54.752h60.576c18.912 0 39.328-23.936 39.328-54.752-0.032-30.72-20.416-51.552-39.328-51.552z m881.184 0H299.264c-25.76 0-46.656 20.8-46.656 51.552 0 30.816 20.864 54.752 46.656 54.752h678.08c25.792 0 46.656-23.936 46.656-54.752-0.032-30.72-20.896-51.552-46.688-51.552zM97.248 819.712H38.912c-18.304 0-33.088 20.896-33.088 51.648 0 30.752 14.816 56.64 33.088 56.64h58.336c18.304 0 38.176-25.888 38.176-56.64s-19.872-51.648-38.176-51.648z m880.064 0H299.264c-25.76 0-46.656 20.896-46.656 51.648 0 30.752 20.864 55.168 46.656 55.168h678.08c25.792 0 46.656-24.416 46.656-55.168-0.032-30.752-20.896-51.648-46.688-51.648z" fill="" ></path></symbol><symbol id="icon-xinlang" viewBox="0 0 1024 1024"><path d="M429.664 928C217.024 928 0 824.896 0 654.624c0-88.864 56.032-191.424 152.608-288.224C281.664 236.896 432 178.432 488.576 235.168c25.152 24.672 27.424 68.192 11.424 119.744-8 26.336 24.608 11.456 24.608 12.032 104.032-44.16 194.848-46.432 228 1.12 17.792 25.216 16 60.736 0 101.984-7.456 18.944 2.336 21.76 16.544 26.336 58.912 18.304 124.032 62.464 124.032 140.416-0.096 129.024-185.312 291.2-463.52 291.2z m-39.424-465.344c-169.696 17.216-297.632 120.928-286.816 232.672 10.816 111.744 157.088 188.512 326.848 171.936 169.696-17.216 297.632-120.864 286.752-232.672-10.816-111.744-157.088-188.512-326.784-171.936z m-69.728 356.448c-81.728-26.336-116.032-107.104-80.544-179.936 35.424-71.04 126.304-111.2 206.848-90.528 84 21.76 126.304 100.896 91.968 177.664-34.304 77.92-133.664 120.288-218.272 92.8z m45.696-153.024c-25.696-10.912-60 0.544-76 25.76-16.544 25.792-8.544 56.192 17.152 68.224 26.24 12.032 61.664 0.544 78.272-25.792 16.064-26.368 7.456-56.704-19.424-68.192z m65.184-26.944a25.152 25.152 0 0 0-28.608 10.912c-5.728 10.304-2.88 21.216 7.456 25.792a24.32 24.32 0 0 0 29.152-10.848c5.696-10.368 2.24-21.856-8-25.856z m579.36-187.392a38.912 38.912 0 0 1-49.12 25.216 39.904 39.904 0 0 1-25.76-49.28 192.736 192.736 0 0 0-40.032-189.152 192.448 192.448 0 0 0-183.424-59.552 39.68 39.68 0 0 1-46.848-30.4 39.136 39.136 0 0 1 30.272-46.432 270.112 270.112 0 0 1 258.304 83.68 272.192 272.192 0 0 1 56.608 265.92z m-132.544-43.008a33.6 33.6 0 1 1-64.032-20.672 65.024 65.024 0 0 0-13.696-63.584 64.128 64.128 0 0 0-61.12-20.032 33.28 33.28 0 0 1-40.032-25.76 33.6 33.6 0 0 1 25.696-40.128 130.4 130.4 0 0 1 125.664 40.704 132.16 132.16 0 0 1 27.52 129.472z" fill="#707070" ></path></symbol><symbol id="icon-sousuo" viewBox="0 0 1024 1024"><path d="M944.513789 1024a77.19975 77.19975 0 0 1-55.325422-23.345409l-210.780262-210.204622A431.538289 431.538289 0 0 1 433.185369 866.658339C194.134776 866.658339 0.52778 673.051343 0.52778 434.00075S194.134776 1.343161 433.185369 1.343161c239.082573 0 432.657589 193.606996 432.657589 432.657589 0 87.273454-26.41549 173.299688-76.17639 245.222735l210.780263 210.812243c14.135166 14.167146 22.737789 34.378513 22.737789 55.293441a79.182511 79.182511 0 0 1-78.670831 78.670831zM433.185369 158.652842c-151.777139 0-275.347908 123.538788-275.347907 275.347908s123.538788 275.347908 275.347907 275.347907 275.347908-123.538788 275.347908-275.347907-123.538788-275.347908-275.347908-275.347908z"  ></path></symbol><symbol id="icon-QQ" viewBox="0 0 1024 1024"><path d="M149.9071 430.705026c0-15.993503 10.299816-41.679068 19.959892-53.674195-0.607753-14.873957 5.693687-45.133664 17.113047-54.889701 0-105.685065 81.662824-238.814981 177.080062-284.428451 58.85609-27.98863 120.495049-37.680692 185.044825-37.680692 50.283572 0 105.109299 11.995127 151.938275 31.379252 134.217474 56.521038 164.541155 161.694312 193.073564 295.911786l0.511792 2.846843c16.601256 25.141786 31.443226 54.889701 31.443226 85.661201 0 15.38575-10.299816 30.86746-10.299815 44.589885 0 1.119545 3.454597 5.693687 3.966388 6.845219 49.100053 72.578515 93.689938 151.426483 93.689939 241.661825 0 19.959891-10.811608 89.72355-42.862587 89.72355-22.294943 0-46.828976-54.281948-54.889701-69.123919-0.511792-0.543779-1.119545-0.543779-1.727299-0.543779l-2.846843 2.239091c-18.328554 47.372755-38.288445 91.96264-75.457346 127.404242 32.594758 31.379252 85.117421 28.532409 94.809484 82.814356-2.846843 6.30144-1.727298 13.146659-6.30144 19.384126-32.594758 49.100053-119.95127 55.401493-172.505919 55.401493-69.667697 0-126.25271-18.328554-191.954019-37.680693-13.754412-3.966389-34.322057-1.727298-49.164027-3.454596-34.833849 38.288445-119.95127 48.556274-169.051323 48.556274-43.374379 0-211.338144-2.846843-211.338144-77.088683 0-31.987005 6.909193-41.135289 29.140162-61.702933 17.720801-3.454597 30.86746-13.146659 51.435104-14.266204 2.846843 0 5.117921-0.607753 8.028739-1.119546 0.543779-0.511792 1.119545-0.511792 1.119545-2.23909l-1.119545-1.727298c-39.407991-9.148284-94.809484-108.563896-103.382001-149.699185l-2.846844-1.663324c-3.966389 0-5.693687 8.572517-6.845219 11.419361-12.538906 29.140162-42.254834 60.583388-75.361384 63.97401H29.923843c-4.574142 0-2.846843-4.574142-6.30144-5.693687a139.399369 139.399369 0 0 1-13.146659-57.128791c0-114.257583 54.889701-198.799238 143.973511-266.195858a77.152657 77.152657 0 0 1-4.542155-29.811889z" fill="#707070" ></path></symbol><symbol id="icon-weixin" viewBox="0 0 1024 1024"><path d="M692.992 347.968c-172 0-308.032 128.192-308.032 285.856 0 26.464 4 51.872 11.488 75.808-11.328 0.992-22.688 1.472-34.048 1.472-45.536 0-81.504-8.96-126.976-17.984l-126.496 63.36 36.032-108.768c-90.56-63.328-144.992-145.184-144.992-244.384C-0.032 231.232 162.976 96 362.432 96c178.048 0 334.56 108.224 365.536 253.952a260.992 260.992 0 0 0-34.976-1.984zM244.416 249.728c-27.008 0-54.528 17.984-54.528 45.44 0 26.912 27.456 44.896 54.528 44.896 27.456 0 45.536-17.984 45.536-44.896 0-27.52-18.016-45.44-45.536-45.44z m652.544 588L924.416 928l-99.52-54.368c-36.448 8.96-72.992 18.432-108.96 18.432-172.512 0-308.032-117.728-308.032-262.432s135.488-262.432 308.032-262.432c162.944 0 308.032 117.728 308.032 262.432 0.064 81.44-53.984 153.792-127.008 208.096zM498.464 249.728c-27.456 0-54.528 17.984-54.528 45.44 0 26.912 27.008 44.896 54.528 44.896 27.008 0 45.024-17.984 45.024-44.896-0.032-27.52-18.048-45.44-45.024-45.44z m117.472 262.304c-18.016 0-35.968 17.984-35.968 35.872 0 18.432 18.016 36.48 35.968 36.48 27.456 0 45.536-17.984 45.536-36.48-0.064-17.888-18.016-35.872-45.536-35.872z m199.584 0c-18.016 0-36.032 17.984-36.032 35.872 0 18.432 18.016 36.48 36.032 36.48 26.976 0 45.536-17.984 45.536-36.48-0.128-17.888-18.528-35.872-45.536-35.872z" fill="#707070" ></path></symbol><symbol id="icon-fenxiang" viewBox="0 0 1024 1024"><path d="M753.344 615.456a171.84 171.84 0 0 0-145.024 79.648l-184.544-105.536c11.968-23.36 19.264-49.408 19.264-77.568 0-17.344-3.264-33.696-8.096-49.536l191.968-109.728a171.392 171.392 0 0 0 126.368 55.872c95.072 0 172.288-77.152 172.288-172.288S848.384 64 753.312 64a172.256 172.256 0 0 0-172.288 172.288c0 17.344 3.328 33.76 8.032 49.536l-191.968 109.696a171.328 171.328 0 0 0-126.304-55.84 172.288 172.288 0 1 0-0.064 344.576 171.008 171.008 0 0 0 104.064-35.776l-0.672 1.184 208.768 119.328c-0.8 6.112-1.856 12.192-1.856 18.752a172.32 172.32 0 0 0 344.576 0 172.224 172.224 0 0 0-172.256-172.288z m0-482.592a103.52 103.52 0 0 1 103.456 103.392 103.456 103.456 0 0 1-206.912 0 103.456 103.456 0 0 1 103.456-103.392zM270.752 615.456A103.328 103.328 0 0 1 167.424 512a103.36 103.36 0 1 1 206.72 0 103.36 103.36 0 0 1-103.392 103.456z m482.592 275.744a103.456 103.456 0 1 1 0-206.912 103.456 103.456 0 0 1 0 206.912z" fill="" ></path></symbol><symbol id="icon-erweima" viewBox="0 0 1024 1024"><path d="M466.112 464.896H1.216V0h464.896v464.896z m0 557.888H1.216V557.888h464.896v464.896zM373.12 371.936V92.992H94.176v278.944h278.944z m0 557.152V650.88H94.176v278.24h278.944zM280.16 278.944H187.168V185.952h92.992v92.992z m0 557.888H187.168v-92.992h92.992v92.992zM1024 464.896H559.104V0H1024v464.896z m0 371.936h-278.944v-92.992h-92.992v278.944h-92.992V557.888h278.944v92.992h92.992v-92.992H1024v278.944z m-92.992-464.896V92.992h-278.944v278.944h278.944z m-92.96-92.992h-92.992V185.952h92.992v92.992z m0 743.84h-92.992v-92.992h92.992v92.992z m185.952 0h-92.992v-92.992H1024v92.992z"  ></path></symbol><symbol id="icon-daima" viewBox="0 0 1024 1024"><path d="M376.192 683.104a10.592 10.592 0 0 1-15.264 0l-154.656-154.656a10.624 10.624 0 0 1 0-15.264l154.656-154.656c2.016-2.048 4.768-3.232 7.648-3.232s5.632 1.152 7.616 3.232l16.608 16.608a10.624 10.624 0 0 1 0 15.264L262.4 520.832l130.432 130.432a10.752 10.752 0 0 1 3.232 7.648c0 2.88-1.152 5.632-3.232 7.616l-16.64 16.576z m88.96 57.728a10.56 10.56 0 0 1-12.928 7.296l-20.576-5.632a10.752 10.752 0 0 1-7.296-13.28L548.16 300.832a10.56 10.56 0 0 1 12.928-7.328l20.576 5.632c5.632 1.664 8.96 7.648 7.296 13.28l-123.808 428.416z m187.2-57.728a10.624 10.624 0 0 1-15.296 0l-16.576-16.576a10.592 10.592 0 0 1 0-15.264l130.4-130.432L620.48 390.4a10.624 10.624 0 0 1 0-15.264l16.576-16.608a10.624 10.624 0 0 1 15.296 0l154.624 154.656a10.624 10.624 0 0 1 0 15.264l-154.624 154.656z" fill="#707070" ></path></symbol><symbol id="icon-pinglun" viewBox="0 0 1025 1024"><path d="M256 364.512c-35.328 0-64 29.76-64 66.496 0 36.736 28.672 66.496 64 66.496 35.36 0 64-29.76 64-66.496 0-36.736-28.64-66.496-64-66.496z m256.032 0c-35.36 0-64 29.76-64 66.496 0 36.736 28.64 66.496 64 66.496 35.328 0 63.968-29.76 63.968-66.496 0-36.736-28.64-66.496-63.968-66.496z m255.968 0c-35.328 0-64 29.76-64 66.496 0 36.736 28.672 66.496 64 66.496s64-29.76 64-66.496c0.032-36.736-28.672-66.496-64-66.496zM896.032 32h-768C57.312 32 0 91.552 0 165.024v498.752c0 73.44 58.56 141.12 130.88 141.12h195.104c33.952 36.288 174.72 182.208 174.72 182.208a15.488 15.488 0 0 0 22.592 0s103.072-116.992 170.176-182.208h199.616c72.32 0 130.88-67.712 130.88-141.12V165.024C1024 91.552 966.688 32 896.032 32zM960 663.776c0 36.704-30.752 75.264-66.88 75.264h-196.32c-23.808 0-45.184 24.48-45.184 24.48l-137.824 143.232-137.824-143.232s-26.208-24.48-48.704-24.48H130.88C94.752 739.008 64 700.48 64 663.776V165.024c0-36.736 28.64-66.496 64-66.496h768c35.328 0 63.968 29.76 63.968 66.496v498.752z m0 0" fill="" ></path></symbol><symbol id="icon-xihuan-" viewBox="0 0 1024 1024"><path d="M1020.81017 296c-14.4-85.6-61.6-152.8-141.6-200-45.6-27.2-97.6-41.6-148.8-41.6-66.4 0-128.8 24-176.8 68-15.2 13.6-28 28.8-41.6 43.2-40.8-49.6-81.6-80-129.6-96-84-28-168-17.6-245.6 32C45.61017 158.4-0.78983 240.8 0.01017 345.6c0.8 61.6 20.8 120 62.4 178.4 44.8 62.4 100 126.4 172.8 200.8 49.6 50.4 100.8 100 149.6 148l48 47.2c4 4 8.8 8 12.8 12.8l5.6 4.8c10.4 8.8 32 23.2 60 23.2 23.2 0 45.6-9.6 65.6-28.8 84-79.2 173.6-164.8 258.4-256.8 44-48 94.4-104 136-166.4 44.8-68 61.6-140 49.6-212.8m-92 184c-39.2 59.2-85.6 111.2-130.4 160-84 91.2-172.8 176-256 254.4-10.4 9.6-20.8 14.4-30.4 14.4-12 0-21.6-7.2-25.6-9.6l-4-4c-4-4-8-8-12.8-12l-48-47.2c-49.6-48-100.8-97.6-149.6-148-72-72.8-124-133.6-168-194.4-35.2-49.6-52.8-98.4-52.8-148.8 0-86.4 36.8-152 113.6-200.8 40.8-25.6 83.2-39.2 126.4-39.2 24.8 0 49.6 4 75.2 12.8 40 13.6 74.4 40 110.4 84.8 2.4 3.2 15.2 16.8 36 16.8 8.8 0 22.4-3.2 34.4-16.8l2.4-2.4c13.6-14.4 25.6-28.8 39.2-41.6 38.4-36 88-54.4 141.6-54.4 42.4 0 84.8 12 123.2 34.4 67.2 40 105.6 93.6 116.8 164 9.6 62.4-4 120-41.6 177.6" fill="" ></path><path d="M512.01017 957.6c-27.2 0-48-13.6-58.4-22.4l-5.6-4.8c-4-4-8.8-8-12.8-12.8l-51.2-50.4c-48.8-47.2-98.4-96-147.2-144.8-72.8-74.4-128-137.6-172.8-200.8-40.8-57.6-60.8-115.2-61.6-176-0.8-104 44.8-185.6 136-243.2 48.8-30.4 100-46.4 152.8-46.4 29.6 0 60 4.8 90.4 15.2 48 16 88.8 46.4 128.8 95.2l1.6 2.4 1.6-2.4c12-13.6 26.4-28.8 40.8-43.2 48-43.2 110.4-67.2 176-67.2 51.2 0 102.4 14.4 148 41.6 79.2 47.2 126.4 113.6 140 198.4 12 72.8-4 143.2-48.8 210.4-40.8 62.4-91.2 118.4-135.2 166.4-84.8 92-174.4 177.6-258.4 256.8-20 18.4-41.6 28-64 28z m-220.8-855.2c-43.2 0-86.4 13.6-128 39.2-77.6 49.6-114.4 116-114.4 203.2 0 51.2 17.6 100 53.6 149.6 44 61.6 96 121.6 168 195.2 48 48.8 98.4 97.6 147.2 145.6l50.4 49.6 9.6 9.6 7.2 6.4c4 3.2 14.4 10.4 27.2 10.4 10.4 0 21.6-4.8 32-15.2 83.2-78.4 172-164 256-254.4 44.8-48.8 92-100.8 130.4-160 38.4-57.6 52-116 41.6-177.6-12-71.2-50.4-125.6-118.4-166.4-38.4-22.4-81.6-35.2-124-35.2-54.4 0-104 19.2-143.2 55.2-13.6 12.8-25.6 26.4-39.2 40.8l-2.4 3.2c-12 12.8-24 16-32.8 16-19.2 0-31.2-13.6-33.6-16-36-44.8-71.2-72-112-85.6-25.6-8.8-50.4-13.6-75.2-13.6z" fill="" ></path></symbol><symbol id="icon-jubao" viewBox="0 0 1024 1024"><path d="M507.2 345.6c-20.8 0-38.4 17.6-38.4 38.4v264c0 22.4 17.6 38.4 38.4 38.4h8c20.8 0 38.4-17.6 38.4-38.4V384c0-22.4-17.6-38.4-38.4-38.4h-8zM454.4 788.8c0 14.4 6.4 30.4 16 40 11.2 11.2 25.6 16 40 16 14.4 0 30.4-6.4 40-16 11.2-11.2 16-25.6 16-40 0-14.4-6.4-30.4-16-40-11.2-11.2-25.6-16-40-16-14.4 0-30.4 6.4-40 16-9.6 11.2-16 25.6-16 40z" fill="" ></path><path d="M102.4 966.4C46.4 966.4 0 921.6 0 864c0-17.6 4.8-33.6 12.8-48 0 0 0-1.6 1.6-1.6L422.4 108.8s0-1.6 1.6-1.6c19.2-30.4 52.8-49.6 88-49.6s68.8 19.2 88 49.6c0 0 0 1.6 1.6 1.6l409.6 705.6s0 1.6 1.6 1.6c8 14.4 12.8 32 12.8 48 0 56-46.4 102.4-102.4 102.4H102.4zM64 841.6c-1.6 0-1.6 0 0 0-4.8 8-6.4 16-6.4 24 0 25.6 20.8 44.8 44.8 46.4h817.6c25.6 0 46.4-20.8 46.4-46.4 0-8-1.6-16-6.4-22.4l-408-704s0-1.6-1.6-1.6C544 123.2 528 113.6 512 113.6s-32 8-40 22.4c0 0 0 1.6-1.6 1.6L64 841.6z" fill="" ></path></symbol><symbol id="icon-dashang-" viewBox="0 0 1024 1024"><path d="M977.883349 705.071646c0 307.614317-400.867476 318.928354-459.700467 318.928354-4.684967 0-7.202739-0.063741-7.202739-0.063741s-2.517772 0.063741-7.202739 0.063741c-58.832991 0-459.700467-11.314037-459.700467-318.928354 0-331.963399 372.407096-488.638904 372.407097-488.638904S291.679054 172.355805 291.679054 78.847681c0-75.851852 185.582073-78.847681 215.317273-78.847681h7.967632c29.67146 0 215.317274 3.0277 215.317273 78.847681 0 93.508123-124.83685 137.55319-124.83685 137.55319s372.438967 156.707376 372.438967 488.670775zM582.210769 271.983069a60.235294 60.235294 0 0 1 3.314534-112.311734c16.700156-6.08727 77.317896-35.631248 84.074448-73.844009-17.911236-11.569001-75.979334-25.496421-154.572051-25.49642h-8.031373c-78.656458 0-136.660815 13.92742-154.572051 25.49642 6.820293 38.531466 68.202926 68.266667 84.074448 73.844009a60.235294 60.235294 0 0 1 3.314535 112.311734c-3.250794 1.402303-335.501027 145.967009-335.501027 433.152318 0 246.231684 332.855773 258.693059 399.592654 258.69306l5.577342-0.063741H512.733022l5.513601 0.063741c66.736881 0 399.592655-12.461376 399.592655-258.69306C917.775537 416.484034 585.557174 273.385372 582.210769 271.983069z m36.555493 386.971926a24.890881 24.890881 0 0 1 21.512605 37.256645 24.763399 24.763399 0 0 1-21.512605 12.397635h-84.010706v65.238967a24.85901 24.85901 0 1 1-49.65428 0v-65.238967h-79.96315a24.85901 24.85901 0 1 1 0-49.718021h79.96315v-50.737877h-82.002863a24.890881 24.890881 0 0 1-21.512605-37.256645 24.763399 24.763399 0 0 1 21.512605-12.397635h42.579022l-41.049237-41.112978a24.922751 24.922751 0 0 1 17.528789-42.451541c6.533458 0 12.907563 2.645254 17.52879 7.26648l70.178898 70.306381 70.178898-70.306381a24.85901 24.85901 0 0 1 35.057579 35.185061l-41.049238 41.112978h42.579023a24.85901 24.85901 0 1 1 0 49.718021h-81.939122v50.737877h84.074447z"  ></path></symbol><symbol id="icon-shouqi" viewBox="0 0 1024 1024"><path d="M906.592 828.768a40.288 40.288 0 0 1-57.152 0L512 491.36 174.592 828.768a40.416 40.416 0 0 1-57.216 0L11.936 723.904a40.96 40.96 0 0 1 0-57.792L483.392 195.232a40.288 40.288 0 0 1 57.152 0l471.52 470.88a40.96 40.96 0 0 1 0 57.792l-105.472 104.864z" fill="#707070" ></path></symbol><symbol id="icon-youjiantou" viewBox="0 0 1024 1024"><path d="M704 512a22.56 22.56 0 0 0-6.656-15.136l-307.456-307.488a22.72 22.72 0 0 0-15.136-6.56 22.592 22.592 0 0 0-15.136 6.56L326.592 222.4a22.72 22.72 0 0 0-6.56 15.136c0 5.28 2.624 11.232 6.56 15.136L585.888 512l-259.328 259.328a22.72 22.72 0 0 0-6.56 15.136c0 5.952 2.624 11.232 6.56 15.136l33.024 33.024a22.688 22.688 0 0 0 15.136 6.56 22.592 22.592 0 0 0 15.136-6.56l307.488-307.488A22.432 22.432 0 0 0 704 512z" fill="#707070" ></path></symbol><symbol id="icon-zuojiantou" viewBox="0 0 1024 1024"><path d="M320 512c0-5.28 2.688-11.232 6.656-15.136l307.456-307.488a22.72 22.72 0 0 1 15.136-6.56c5.28 0 11.232 2.624 15.136 6.56l33.024 33.024a22.72 22.72 0 0 1 6.56 15.136 22.592 22.592 0 0 1-6.56 15.136L438.112 512l259.328 259.328a22.72 22.72 0 0 1 6.56 15.136 21.312 21.312 0 0 1-6.56 15.136l-33.024 33.024a22.688 22.688 0 0 1-15.136 6.56 22.592 22.592 0 0 1-15.136-6.56l-307.488-307.488A22.432 22.432 0 0 1 320 512z" fill="#707070" ></path></symbol><symbol id="icon-xiajiantou" viewBox="0 0 1024 1024"><path d="M512 704a22.56 22.56 0 0 0 15.136-6.656l307.488-307.456a22.72 22.72 0 0 0 6.56-15.136 22.592 22.592 0 0 0-6.56-15.136l-33.024-33.024a22.72 22.72 0 0 0-15.136-6.56 22.592 22.592 0 0 0-15.136 6.56L512 585.888l-259.328-259.328A22.72 22.72 0 0 0 237.536 320a21.312 21.312 0 0 0-15.136 6.56l-33.024 33.024a22.688 22.688 0 0 0-6.56 15.136c0 5.28 2.624 11.232 6.56 15.136l307.488 307.488A22.432 22.432 0 0 0 512 704z" fill="#707070" ></path></symbol><symbol id="icon-shangjiantou" viewBox="0 0 1024 1024"><path d="M512 320c5.28 0 11.232 2.688 15.136 6.656l307.488 307.456a22.72 22.72 0 0 1 6.56 15.136 22.592 22.592 0 0 1-6.56 15.136l-33.024 33.024a22.72 22.72 0 0 1-15.136 6.56 22.592 22.592 0 0 1-15.136-6.56L512 438.112l-259.328 259.328a22.72 22.72 0 0 1-15.136 6.56 21.312 21.312 0 0 1-15.136-6.56l-33.024-33.024a22.688 22.688 0 0 1-6.56-15.136c0-5.28 2.624-11.232 6.56-15.136l307.488-307.488A22.432 22.432 0 0 1 512 320z" fill="#707070" ></path></symbol><symbol id="icon-shanghuadong" viewBox="0 0 1024 1024"><path d="M512 0c282.336 0 512 229.664 512 512s-229.664 512-512 512S0 794.336 0 512 229.664 0 512 0z m0 955.744c244.672 0 443.744-199.072 443.744-443.744S756.672 68.256 512 68.256 68.256 267.328 68.256 512 267.328 955.744 512 955.744z" fill="" ></path><path d="M307.2 409.6c8.736 0 17.472 3.36 24.16 9.952L512 600.256l180.64-180.704a34.144 34.144 0 0 1 48.256 48.256l-204.8 204.8a34.144 34.144 0 0 1-48.256 0l-204.8-204.8A34.144 34.144 0 0 1 307.2 409.6z" fill="" ></path></symbol><symbol id="icon-xiahuadong" viewBox="0 0 1024 1024"><path d="M512 1024C229.664 1024 0 794.336 0 512S229.664 0 512 0s512 229.664 512 512-229.664 512-512 512z m0-955.744C267.328 68.256 68.256 267.328 68.256 512S267.328 955.744 512 955.744 955.744 756.672 955.744 512 756.672 68.256 512 68.256z" fill="" ></path><path d="M716.8 614.4c-8.736 0-17.472-3.36-24.16-9.952L512 423.744l-180.64 180.704a34.144 34.144 0 0 1-48.256-48.256l204.8-204.8a34.144 34.144 0 0 1 48.256 0l204.8 204.8A34.144 34.144 0 0 1 716.8 614.4z" fill="" ></path></symbol><symbol id="icon-bokezhuanjia" viewBox="0 0 1024 1024"><path d="M984.544 604.736l38.944-95.168-38.944-92.896V315.904L911.808 243.2l-39.744-94.848-93.248-38.144-71.232-71.264h-102.848L509.568 0l-92.896 38.944H315.904L243.2 111.648 148.352 151.424 110.208 244.672 38.944 315.904v102.816L0 513.888l38.944 92.928v100.768l72.704 72.704 39.776 94.848 93.248 38.144 71.232 71.264h102.848l95.136 38.944 92.928-38.944h100.768l72.704-72.736 94.848-39.744 38.144-93.248 71.264-71.232z" fill="#F0D04D" ></path><path d="M685.92 197.888A1280.352 1280.352 0 0 0 228.768 878.176a662.72 662.72 0 0 0 44.96-16.096A1280.544 1280.544 0 0 1 688.032 253.536a649.792 649.792 0 0 0-2.112-55.648z" fill="#B18C25" ></path><path d="M569.312 472a448.608 448.608 0 0 0 230.08-68.64 450.24 450.24 0 0 0-28.8-270.016C496.448 223.104 310.848 477.856 305.376 762.464c44.416 5.088 90.304 3.648 136.512-5.216 151.904-29.12 271.264-131.232 328.832-263.04a683.968 683.968 0 0 1-201.408-22.208z" fill="#FFFFFF" ></path><path d="M356.512 775.616c-17.408 0-35.008-0.992-52.32-2.976l-9.248-1.056 0.192-9.312A686.4 686.4 0 0 1 767.392 123.648l8.832-2.912 3.712 8.544c13.728 31.552 23.936 64.416 30.336 97.76 11.36 59.36 11.072 119.36-0.864 178.368l-0.864 4.288-3.712 2.336a457.12 457.12 0 0 1-157.824 62.112c-3.296 0.64-6.592 1.216-9.888 1.792 43.872 7.04 88.608 9.76 133.216 8.032l16.288-0.64-6.528 14.944a461.856 461.856 0 0 1-423.584 277.344z m-40.672-22.368a441.632 441.632 0 0 0 438.72-248.384c-3.456 0.064-6.912 0.064-10.368 0.064-59.968 0-119.712-7.744-177.536-23.072l-70.336-18.624 72.736-1.504a436.896 436.896 0 0 0 221.12-64.736c10.592-55.008 10.56-110.88-0.032-166.144a443.392 443.392 0 0 0-25.344-84.8A666.112 666.112 0 0 0 315.84 753.248z" fill="#CFA41E" ></path><path d="M375.68 775.616c-17.408 0-35.008-0.992-52.32-2.976l-9.248-1.056 0.192-9.312A686.496 686.496 0 0 1 786.56 123.616l8.832-2.912 3.712 8.544c13.728 31.52 23.936 64.416 30.336 97.76 11.36 59.328 11.072 119.36-0.864 178.368l-0.864 4.288-3.712 2.336a457.12 457.12 0 0 1-157.824 62.112c-3.296 0.64-6.592 1.216-9.888 1.792a682.848 682.848 0 0 0 133.216 8.064l16.288-0.64-6.528 14.944a461.856 461.856 0 0 1-423.584 277.344z m-40.704-22.368a441.632 441.632 0 0 0 438.72-248.384 694.976 694.976 0 0 1-187.872-23.008l-70.336-18.624 72.736-1.504a436.896 436.896 0 0 0 221.12-64.736 437.664 437.664 0 0 0-0.032-166.144 443.392 443.392 0 0 0-25.344-84.8 666.144 666.144 0 0 0-448.992 607.2z" fill="#B18C25" ></path><path d="M770.592 133.344a450.24 450.24 0 0 1 28.8 270.016 447.424 447.424 0 0 1-230.08 68.64c30.592 8.096 61.888 14.112 93.696 17.888 35.36 4.224 71.36 5.696 107.712 4.32-57.568 131.776-176.928 233.92-328.832 263.04a450.976 450.976 0 0 1-136.512 5.216c5.472-284.608 191.072-539.36 465.216-629.12" fill="#FFFFFF" ></path><path d="M356.512 775.616c-17.408 0-35.008-0.992-52.32-2.976l-9.248-1.056 0.192-9.312A686.4 686.4 0 0 1 767.392 123.648l28-2.912-15.424 8.544c13.728 31.52 23.936 64.416 30.336 97.76 11.36 59.328 11.072 119.36-0.864 178.368l-0.864 4.288-3.712 2.336a457.12 457.12 0 0 1-157.824 62.112c-3.296 0.64-6.592 1.216-9.888 1.792a682.848 682.848 0 0 0 133.216 8.064l16.288-0.64-6.528 14.944a461.856 461.856 0 0 1-423.616 277.312z m-40.672-22.368a441.632 441.632 0 0 0 438.72-248.384 694.976 694.976 0 0 1-187.872-23.008l-70.336-18.624 72.736-1.504a436.896 436.896 0 0 0 221.12-64.736 437.664 437.664 0 0 0-0.032-166.144 443.392 443.392 0 0 0-25.344-84.8A666.08 666.08 0 0 0 315.84 753.248z" fill="#B18C25" ></path><path d="M703.648 218.976c-203.68 172.48-361.472 392.832-458.72 653.856l78.624-30.016c75.328-238.688 186.144-416.192 380.64-573.856 0.064-18.432 0.928-31.36-0.544-49.984z" fill="#B18C25" ></path><path d="M702.08 192.544A1280.224 1280.224 0 0 0 244.928 872.8a662.72 662.72 0 0 0 44.96-16.096A1280.544 1280.544 0 0 1 704.192 248.16c0.064-18.432-0.64-36.992-2.112-55.616z" fill="#EDEEEE" ></path></symbol><symbol id="icon-yonghu" viewBox="0 0 1025 1024"><path d="M1023.664 962.048c-43.952-157.52-162.384-281.104-312.496-340 92.928-61.36 154.128-164.432 154.128-281.056C865.296 152.976 707.008 0 512.4 0 317.776 0 159.408 152.976 159.408 340.992c0 116.656 61.232 219.744 154.272 281.072C164.352 680.752 46.24 803.456 1.808 959.776c-7.36 26 8.48 52.848 35.408 60.016a52.096 52.096 0 0 0 38.448-4.608 49.072 49.072 0 0 0 23.744-29.552c50.848-178.896 220.656-303.808 413.008-303.808 193.312 0 363.344 125.664 413.504 305.616 7.296 26.032 35.04 41.44 62.032 34.464 26.96-7.04 42.944-33.808 35.712-59.856zM260.608 340.992c0-134.208 112.96-243.328 251.808-243.328 138.768 0 251.68 109.136 251.68 243.328 0 133.84-112.912 242.768-251.68 242.768-138.864 0-251.808-108.928-251.808-242.768z m0 0"  ></path></symbol><symbol id="icon-bianji" viewBox="0 0 1024 1024"><path d="M343.296 559.936c-0.576 0.768-1.184 1.568-1.44 2.528l-45.088 169.44a29.632 29.632 0 0 0 7.2 28 27.84 27.84 0 0 0 27.232 7.296l164.096-45.888c0.256 0 0.384 0.224 0.576 0.224a7.04 7.04 0 0 0 5.152-2.176L939.808 269.568c13.056-13.376 20.192-31.616 20.192-51.456a88.96 88.96 0 0 0-25.568-61.568l-41.44-42.56c-16.256-16.704-38.208-26.24-60.096-26.24a69.44 69.44 0 0 0-50.176 20.672L343.936 558.368c-0.448 0.416-0.32 1.056-0.64 1.568zM896.864 225.504l-43.584 44.64-70.656-73.6L825.6 152.512c6.784-7.008 19.968-5.984 27.744 2.048l41.472 42.56a23.456 23.456 0 0 1 6.784 16.16 17.184 17.184 0 0 1-4.736 12.224zM421.312 566.976l316.64-324.64 70.688 73.632L492.608 640l-71.296-73.024z m-57.696 131.648l22.88-86.112 61.024 62.592-83.904 23.52z m551.968-294.848c-16.608 0-30.24 13.856-30.304 31.104v419.36c0 21.984-17.408 39.872-38.912 39.872H163.488c-21.44 0-38.944-17.856-38.944-39.872V169.728c0-22.016 17.504-39.904 38.944-39.904h445.696a30.688 30.688 0 0 0 30.272-31.04 30.688 30.688 0 0 0-30.272-31.008H158.848C106.56 67.776 64 111.392 64 165.056v693.92c0 53.632 42.56 97.216 94.848 97.216h692.096c52.32 0 94.88-43.584 94.88-97.216v-424.32a30.656 30.656 0 0 0-30.24-30.88z" fill="" ></path></symbol><symbol id="icon-shanchu" viewBox="0 0 1024 1024"><path d="M392.176 885.024c29.056 0 43.568-21.936 43.568-43.888v-563.2c0-29.264-21.792-43.888-43.568-43.888-29.056 0-43.584 21.936-43.584 43.888v555.888c0 29.264 21.792 51.2 43.584 51.2zM973.168 95.088H580.992v-51.2C580.992 21.936 559.2 0 530.16 0h-43.568c-29.056 0-50.832 21.936-50.832 43.888v43.888H43.568C21.792 95.088 0 117.024 0 138.976c0 29.264 21.792 43.888 43.568 43.888h72.624v746.064c0 51.2 43.568 95.088 94.416 95.088h602.784c50.832 0 94.416-43.888 94.416-95.088V182.864h72.624c29.056 0 43.584-21.936 43.584-43.888-0.016-21.952-29.072-43.888-50.848-43.888z m-167.04 789.936c0 29.264-21.792 43.888-43.584 43.888H254.192c-29.056 0-43.584-21.936-43.584-43.888V182.864h602.784v702.176h-7.264z m-181.568 0c29.056 0 43.568-21.936 43.568-43.888v-563.2c0-29.264-21.792-43.888-43.568-43.888-29.056 0-43.584 21.936-43.584 43.888v555.888c0.016 29.264 14.544 51.2 43.584 51.2z m0 0"  ></path></symbol><symbol id="icon-spinner" viewBox="0 0 1024 1024"><path d="M384 149.33333333333334a128 128 0 1 1 256 0 128 128 0 0 1-256 0z m271.52 112.48a128 128 0 1 1 256 0 128 128 0 0 1-256 0zM832 533.3333333333334a64 64 0 1 1 127.968-0.032A64 64 0 0 1 832 533.3333333333334z m-112.48 271.52a64 64 0 1 1 127.968-0.032 64 64 0 0 1-127.968 0.032zM448 917.3333333333334a64 64 0 1 1 128 0 64 64 0 1 1-128 0z m-271.52-112.48a64 64 0 1 1 128 0 64 64 0 1 1-128 0z m-32-543.04a96 96 0 1 1 192 0 96 96 0 1 1-192 0zM56 533.3333333333334a72 72 0 1 1 144 0 72 72 0 0 1-144 0z"  ></path></symbol><symbol id="icon-weiye" viewBox="0 0 1024 1024"><path d="M612.8 508.8c0-4.8-3.2-9.6-6.4-14.4L324.8 214.4c-4.8-3.2-9.6-6.4-14.4-6.4-4.8 0-9.6 3.2-14.4 6.4l-30.4 30.4c-3.2 3.2-6.4 9.6-6.4 14.4 0 4.8 3.2 9.6 6.4 14.4L504 512 265.6 747.2c-3.2 3.2-6.4 9.6-6.4 14.4 0 4.8 3.2 9.6 6.4 14.4l30.4 30.4c3.2 3.2 9.6 6.4 14.4 6.4 4.8 0 9.6-3.2 14.4-6.4L608 523.2c1.6-1.6 4.8-8 4.8-14.4zM726.4 816c20.8 0 38.4-16 38.4-38.4V246.4c0-20.8-16-38.4-38.4-38.4-20.8 0-38.4 16-38.4 38.4v531.2c0 22.4 17.6 38.4 38.4 38.4z" fill="#707070" ></path></symbol><symbol id="icon-shouye" viewBox="0 0 1024 1024"><path d="M411.2 508.8c0 6.4 3.2 11.2 4.8 14.4l283.2 283.2c3.2 3.2 9.6 6.4 14.4 6.4s9.6-3.2 14.4-6.4l30.4-30.4c3.2-3.2 6.4-9.6 6.4-14.4 0-4.8-3.2-9.6-6.4-14.4L520 510.4 758.4 272c3.2-3.2 6.4-9.6 6.4-14.4 0-4.8-3.2-9.6-6.4-14.4l-30.4-30.4c-3.2-3.2-9.6-6.4-14.4-6.4s-9.6 3.2-14.4 6.4L417.6 496c-3.2 3.2-6.4 8-6.4 12.8zM336 777.6V246.4c0-20.8-17.6-38.4-38.4-38.4-20.8 0-38.4 17.6-38.4 38.4v531.2c0 20.8 16 38.4 38.4 38.4 20.8 0 38.4-16 38.4-38.4z" fill="#707070" ></path></symbol><symbol id="icon-yixihuan" viewBox="0 0 1024 1024"><path d="M755.26144 82.91328c-68.736 0-137.53856 26.24-190.01856 78.72l-47.45728 47.488h-0.03072l-5.43744 5.47328-5.47328-5.47328h-0.03072l-47.51872-47.488C406.75328 109.15328 337.92 82.91328 269.08672 82.91328c-68.864 0-137.728 26.24-190.23872 78.72-105.088 104.92928-105.088 275.10272 0 380.032l214.016 213.79072h0.03072l166.43072 166.20544c13.08672 13.056 30.17728 19.39456 47.32928 19.39456 1.92 0 3.80928-0.09728 5.72928-0.256 1.88928 0.15872 3.80928 0.256 5.69344 0.256 17.09056 0 34.176-6.33856 47.232-19.39456l166.24128-166.20544 0.22528-0.22528 166.04672-166.04672 47.488-47.488c104.92928-104.99072 104.92928-275.10272 0-380.032-52.51072-52.51072-121.27744-78.75072-190.04928-78.75072z"  ></path></symbol><symbol id="icon-yidianzan" viewBox="0 0 1024 1024"><path d="M267.296 500.992v469.44h586.88l116.256-515.872h-439.36l109.984-353.952-132.864-47.04z"  ></path><path d="M508.192 53.568l132.864 47.04-109.984 353.952h439.392l-116.256 515.872H267.296v-469.44l240.896-447.424m0-53.568c-19.232 0-37.6 10.4-47.168 28.16L220.128 475.616c-4.192 7.808-6.4 16.512-6.4 25.376v469.44c0 29.6 24 53.568 53.568 53.568h586.88c25.056 0 46.752-17.344 52.256-41.792l116.256-515.872a53.472 53.472 0 0 0-52.256-65.312H603.776l88.416-284.512a53.536 53.536 0 0 0-33.28-66.368L526.048 3.104A52.736 52.736 0 0 0 508.192 0z"  ></path><path d="M211.008 512v458.432H56.288V512h154.72m0-53.536H56.288C25.184 458.464 0 482.432 0 512v458.432C0 1000.032 25.184 1024 56.288 1024h154.72c31.072 0 56.288-23.968 56.288-53.568V512c0-29.568-25.216-53.536-56.288-53.536z"  ></path></symbol><symbol id="icon-dianzan" viewBox="0 0 1024 1024"><path d="M508.192 53.568l132.864 47.04-109.984 353.952h439.392l-116.256 515.872H267.296v-469.44l240.896-447.424m0-53.568c-19.232 0-37.6 10.4-47.168 28.16L220.128 475.616c-4.192 7.808-6.4 16.512-6.4 25.376v469.44c0 29.6 24 53.568 53.568 53.568h586.88c25.056 0 46.752-17.344 52.256-41.792l116.256-515.872a53.472 53.472 0 0 0-52.256-65.312H603.776l88.416-284.512a53.536 53.536 0 0 0-33.28-66.368L526.048 3.104A52.736 52.736 0 0 0 508.192 0z"  ></path><path d="M211.008 512v458.432H56.288V512h154.72m0-53.536H56.288C25.184 458.464 0 482.432 0 512v458.432C0 1000.032 25.184 1024 56.288 1024h154.72c31.072 0 56.288-23.968 56.288-53.568V512c0-29.568-25.216-53.536-56.288-53.536z"  ></path></symbol><symbol id="icon-yishoucang" viewBox="0 0 1024 1024"><path d="M865.6 1024c-27.2 0-51.2-11.2-68.8-32L520 704 243.2 992c-17.6 20.8-41.6 32-68.8 32-49.6 0-89.6-41.6-89.6-91.2V150.4C84.8 67.2 150.4 0 232 0h576c81.6 0 147.2 67.2 147.2 150.4v782.4c0 49.6-40 91.2-89.6 91.2z" fill="" ></path></symbol><symbol id="icon-fenxianghover" viewBox="0 0 1024 1024"><path d="M787.00544 629.888c-69.504 0-130.36544 36.224-165.248 90.752l-210.304-120.25856c13.63456-26.624 21.95456-56.32 21.95456-88.38144 0-19.77856-3.712-38.4-9.216-56.448l218.752-125.056c35.90144 38.912 86.85056 63.67744 144 63.67744 108.34944 0 196.352-87.936 196.352-196.352S895.29344 1.46944 786.944 1.46944c-108.48256 0-196.352 87.936-196.352 196.352 0 19.77856 3.77344 38.46656 9.14944 56.448L380.98944 379.264C345.088 340.352 294.144 315.648 237.056 315.648 128.57856 315.648 40.64256 403.51744 40.64256 512s87.936 196.352 196.352 196.352c44.8 0 85.56544-15.616 118.59456-40.76544l-0.768 1.34144 237.88544 135.99744c-0.896 6.97856-2.10944 13.89056-2.10944 21.376 0 108.22144 87.86944 196.224 196.352 196.224 108.34944 0 196.352-88.00256 196.352-196.224 0.05632-108.53888-87.94112-196.41344-196.29568-196.41344z"  ></path></symbol><symbol id="icon-pinglunhover" viewBox="0 0 1024 1024"><path d="M896.54784 32h-768C57.8304 32 0.51712 91.55072 0.51712 165.02272v498.75456c0 73.44128 58.56256 141.11744 130.87744 141.11744H326.5024c33.95072 36.28544 174.72 182.20544 174.72 182.20544a15.488 15.488 0 0 0 22.59456 0s103.07072-116.992 170.17856-182.20544h199.61344c72.32 0 130.87744-67.712 130.87744-141.11744V165.02784c0.03072-73.472-57.28256-133.02784-127.93856-133.02784zM256.50176 497.50528c-35.328 0-64-29.75744-64-66.49344s28.672-66.49856 64-66.49856c35.35872 0 64 29.75744 64 66.49856 0 36.73088-28.64128 66.49344-64 66.49344z m256.03072 0c-35.35872 0-64-29.75744-64-66.49344s28.64128-66.49856 64-66.49856c35.328 0 63.96928 29.75744 63.96928 66.49856 0 36.73088-28.64128 66.49344-63.96928 66.49344z m255.96928 0c-35.328 0-64-29.75744-64-66.49344s28.672-66.49856 64-66.49856 64.03072 29.75744 64 66.49856c0 36.73088-28.672 66.49344-64 66.49344z"  ></path></symbol><symbol id="icon-shangchuan" viewBox="0 0 1024 1024"><path d="M960 640c-35.2 0-64 28.8-64 64v192H128V704c0-35.2-28.8-64-64-64s-64 28.8-64 64v256c0 35.2 28.8 64 64 64h896c35.2 0 64-28.8 64-64V704c0-35.2-28.8-64-64-64z" fill="" ></path><path d="M278.4 388.8L448 219.2V704c0 35.2 28.8 64 64 64s64-28.8 64-64V219.2l169.6 169.6c25.6 25.6 67.2 25.6 91.2 0 25.6-25.6 25.6-65.6 0-91.2l-272-272-6.4-6.4C547.2 8 529.6 0 512 0c-17.6 0-35.2 8-46.4 19.2-1.6 1.6-4.8 3.2-6.4 6.4l-272 272c-25.6 25.6-25.6 65.6 0 91.2 24 25.6 65.6 25.6 91.2 0z" fill="" ></path></symbol><symbol id="icon-guanbi" viewBox="0 0 1024 1024"><path d="M896 0L512 384 128 0 0 128l384 384L0 896l128 128 384-384 384 384 128-128-384-384 384-384z"  ></path></symbol><symbol id="icon-tianjiazhuanji" viewBox="0 0 1024 1024"><path d="M896 64c35.2 0 64 28.8 64 64v768c0 35.2-28.8 64-64 64H128c-35.2 0-64-28.8-64-64V128c0-35.2 28.8-64 64-64h768m0-64H128C57.6 0 0 57.6 0 128v768c0 70.4 57.6 128 128 128h768c70.4 0 128-57.6 128-128V128c0-70.4-57.6-128-128-128z"  ></path><path d="M803.2 480H220.8c-16 0-28.8 12.8-28.8 28.8v6.4c0 16 12.8 28.8 28.8 28.8h582.4c16 0 28.8-12.8 28.8-28.8v-6.4c0-16-12.8-28.8-28.8-28.8z"  ></path><path d="M512 192c-17.6 0-32 14.4-32 32v576c0 17.6 14.4 32 32 32s32-14.4 32-32V224c0-17.6-14.4-32-32-32z"  ></path></symbol><symbol id="icon-call" viewBox="0 0 1027 1024"><path d="M1001.6 910.4c-16 35.2-56 59.2-88 76.8-43.2 24-86.4 36.8-136 36.8-67.2 0-128-27.2-190.4-49.6-44.8-16-88-35.2-128-60.8C336 836.8 187.2 688 110.4 564.8c-24-40-44.8-83.2-60.8-128C27.2 376 0 313.6 0 246.4c0-48 14.4-92.8 36.8-136 17.6-32 41.6-73.6 76.8-88C137.6 11.2 188.8 0 216 0c4.8 0 9.6 0 16 1.6 16 4.8 32 40 38.4 56 24 41.6 46.4 83.2 70.4 124.8 11.2 19.2 33.6 41.6 33.6 64 0 44.8-131.2 108.8-131.2 148.8 0 19.2 17.6 44.8 28.8 62.4 73.6 132.8 164.8 224 297.6 297.6 17.6 9.6 43.2 28.8 62.4 28.8 40 0 104-131.2 148.8-131.2 22.4 0 46.4 22.4 64 33.6 40 24 83.2 46.4 124.8 70.4 14.4 8 49.6 24 56 38.4 1.6 4.8 1.6 9.6 1.6 16-3.2 24-14.4 75.2-25.6 99.2z"  ></path></symbol><symbol id="icon-mail" viewBox="0 0 1027 1024"><path d="M926.4 358.4c-89.6 62.4-179.2 123.2-267.2 185.6-36.8 25.6-100.8 78.4-145.6 78.4-46.4 0-108.8-52.8-145.6-78.4-88-62.4-177.6-124.8-267.2-185.6-40-27.2-97.6-92.8-97.6-144 0-56 30.4-104 91.2-104h841.6c49.6 0 91.2 41.6 91.2 91.2-3.2 64-51.2 121.6-100.8 156.8z m97.6 464c0 49.6-41.6 91.2-91.2 91.2H91.2c-49.6 0-91.2-41.6-91.2-91.2V369.6c17.6 19.2 36.8 35.2 57.6 49.6 94.4 64 190.4 129.6 283.2 196.8 48 35.2 107.2 78.4 169.6 78.4 62.4 0 121.6-43.2 169.6-78.4 92.8-67.2 188.8-132.8 284.8-196.8 20.8-14.4 40-30.4 57.6-49.6v452.8z"  ></path></symbol></svg>', n = function () {
        var e = document.getElementsByTagName("script");
        return e[e.length - 1]
    }(), a = n.getAttribute("data-injectcss"), o = function (t) {
        function i(e, t) {
            var i = e.document, n = !1, a = function () {
                n || (n = !0, t())
            }, o = function () {
                try {
                    i.documentElement.doScroll("left")
                } catch (e) {
                    return void setTimeout(o, 50)
                }
                a()
            };
            o(), i.onreadystatechange = function () {
                "complete" == i.readyState && (i.onreadystatechange = null, a())
            }
        }

        if (document.addEventListener)if (~["complete", "loaded", "interactive"].indexOf(document.readyState))setTimeout(t, 0); else {
            var n = function () {
                document.removeEventListener("DOMContentLoaded", n, !1), t()
            };
            document.addEventListener("DOMContentLoaded", n, !1)
        } else document.attachEvent && i(e, t)
    }, s = function (e, t) {
        t.parentNode.insertBefore(e, t)
    }, r = function (e, t) {
        t.firstChild ? s(e, t.firstChild) : t.appendChild(e)
    };
    if (a && !e.__iconfont__svg__cssinject__) {
        e.__iconfont__svg__cssinject__ = !0;
        try {
            document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")
        } catch (l) {
            console && console.log(l)
        }
    }
    o(t)
}(window);
var IN_GLOBAL_SCOPE = !0;
window.PR_SHOULD_USE_CONTINUATION = !0;
var prettyPrintOne, prettyPrint;
!function () {
    function e(e) {
        function t(e) {
            var t = e.charCodeAt(0);
            if (92 !== t)return t;
            var i = e.charAt(1);
            return t = h[i], t ? t : "0" <= i && i <= "7" ? parseInt(e.substring(1), 8) : "u" === i || "x" === i ? parseInt(e.substring(2), 16) : e.charCodeAt(1)
        }

        function i(e) {
            if (e < 32)return (e < 16 ? "\\x0" : "\\x") + e.toString(16);
            var t = String.fromCharCode(e);
            return "\\" === t || "-" === t || "]" === t || "^" === t ? "\\" + t : t
        }

        function n(e) {
            var n = e.substring(1, e.length - 1).match(new RegExp("\\\\u[0-9A-Fa-f]{4}|\\\\x[0-9A-Fa-f]{2}|\\\\[0-3][0-7]{0,2}|\\\\[0-7]{1,2}|\\\\[\\s\\S]|-|[^-\\\\]", "g")), a = [], o = "^" === n[0], s = ["["];
            o && s.push("^");
            for (var r = o ? 1 : 0, l = n.length; r < l; ++r) {
                var c = n[r];
                if (/\\[bdsw]/i.test(c))s.push(c); else {
                    var d, h = t(c);
                    r + 2 < l && "-" === n[r + 1] ? (d = t(n[r + 2]), r += 2) : d = h, a.push([h, d]), d < 65 || h > 122 || (d < 65 || h > 90 || a.push([32 | Math.max(65, h), 32 | Math.min(d, 90)]), d < 97 || h > 122 || a.push([Math.max(97, h) & -33, Math.min(d, 122) & -33]))
                }
            }
            a.sort(function (e, t) {
                return e[0] - t[0] || t[1] - e[1]
            });
            for (var p = [], m = [], r = 0; r < a.length; ++r) {
                var u = a[r];
                u[0] <= m[1] + 1 ? m[1] = Math.max(m[1], u[1]) : p.push(m = u)
            }
            for (var r = 0; r < p.length; ++r) {
                var u = p[r];
                s.push(i(u[0])), u[1] > u[0] && (u[1] + 1 > u[0] && s.push("-"), s.push(i(u[1])))
            }
            return s.push("]"), s.join("")
        }

        function a(e) {
            for (var t = e.source.match(new RegExp("(?:\\[(?:[^\\x5C\\x5D]|\\\\[\\s\\S])*\\]|\\\\u[A-Fa-f0-9]{4}|\\\\x[A-Fa-f0-9]{2}|\\\\[0-9]+|\\\\[^ux0-9]|\\(\\?[:!=]|[\\(\\)\\^]|[^\\x5B\\x5C\\(\\)\\^]+)", "g")), a = t.length, r = [], l = 0, c = 0; l < a; ++l) {
                var d = t[l];
                if ("(" === d)++c; else if ("\\" === d.charAt(0)) {
                    var h = +d.substring(1);
                    h && (h <= c ? r[h] = -1 : t[l] = i(h))
                }
            }
            for (var l = 1; l < r.length; ++l)-1 === r[l] && (r[l] = ++o);
            for (var l = 0, c = 0; l < a; ++l) {
                var d = t[l];
                if ("(" === d)++c, r[c] || (t[l] = "(?:"); else if ("\\" === d.charAt(0)) {
                    var h = +d.substring(1);
                    h && h <= c && (t[l] = "\\" + r[h])
                }
            }
            for (var l = 0; l < a; ++l)"^" === t[l] && "^" !== t[l + 1] && (t[l] = "");
            if (e.ignoreCase && s)for (var l = 0; l < a; ++l) {
                var d = t[l], p = d.charAt(0);
                d.length >= 2 && "[" === p ? t[l] = n(d) : "\\" !== p && (t[l] = d.replace(/[a-zA-Z]/g, function (e) {
                    var t = e.charCodeAt(0);
                    return "[" + String.fromCharCode(t & -33, 32 | t) + "]"
                }))
            }
            return t.join("")
        }

        for (var o = 0, s = !1, r = !1, l = 0, c = e.length; l < c; ++l) {
            var d = e[l];
            if (d.ignoreCase)r = !0; else if (/[a-z]/i.test(d.source.replace(/\\u[0-9a-f]{4}|\\x[0-9a-f]{2}|\\[^ux]/gi, ""))) {
                s = !0, r = !1;
                break
            }
        }
        for (var h = {b: 8, t: 9, n: 10, v: 11, f: 12, r: 13}, p = [], l = 0, c = e.length; l < c; ++l) {
            var d = e[l];
            if (d.global || d.multiline)throw new Error("" + d);
            p.push("(?:" + a(d) + ")")
        }
        return new RegExp(p.join("|"), r ? "gi" : "g")
    }

    function t(e, t) {
        function i(e) {
            var l = e.nodeType;
            if (1 == l) {
                if (n.test(e.className))return;
                for (var c = e.firstChild; c; c = c.nextSibling)i(c);
                var d = e.nodeName.toLowerCase();
                "br" !== d && "li" !== d || (a[r] = "\n", s[r << 1] = o++, s[r++ << 1 | 1] = e)
            } else if (3 == l || 4 == l) {
                var h = e.nodeValue;
                h.length && (h = t ? h.replace(/\r\n?/g, "\n") : h.replace(/[ \t\r\n]+/g, " "), a[r] = h, s[r << 1] = o, o += h.length, s[r++ << 1 | 1] = e)
            }
        }

        var n = /(?:^|\s)nocode(?:\s|$)/, a = [], o = 0, s = [], r = 0;
        return i(e), {sourceCode: a.join("").replace(/\n$/, ""), spans: s}
    }

    function i(e, t, i, n) {
        if (t) {
            var a = {sourceCode: t, basePos: e};
            i(a), n.push.apply(n, a.decorations)
        }
    }

    function n(e) {
        for (var t = void 0, i = e.firstChild; i; i = i.nextSibling) {
            var n = i.nodeType;
            t = 1 === n ? t ? e : i : 3 === n && G.test(i.nodeValue) ? e : t
        }
        return t === e ? void 0 : t
    }

    function a(t, n) {
        var a, o = {};
        !function () {
            for (var i = t.concat(n), s = [], r = {}, l = 0, c = i.length; l < c; ++l) {
                var d = i[l], h = d[3];
                if (h)for (var p = h.length; --p >= 0;)o[h.charAt(p)] = d;
                var m = d[1], u = "" + m;
                r.hasOwnProperty(u) || (s.push(m), r[u] = null)
            }
            s.push(/[\0-\uffff]/), a = e(s)
        }();
        var s = n.length, r = function (e) {
            for (var t = e.sourceCode, l = e.basePos, d = [l, A], h = 0, p = t.match(a) || [], m = {}, u = 0, g = p.length; u < g; ++u) {
                var f, _ = p[u], v = m[_], b = void 0;
                if ("string" == typeof v)f = !1; else {
                    var x = o[_.charAt(0)];
                    if (x)b = _.match(x[1]), v = x[0]; else {
                        for (var y = 0; y < s; ++y)if (x = n[y], b = _.match(x[1])) {
                            v = x[0];
                            break
                        }
                        b || (v = A)
                    }
                    f = v.length >= 5 && "lang-" === v.substring(0, 5), !f || b && "string" == typeof b[1] || (f = !1, v = M), f || (m[_] = v)
                }
                var w = h;
                if (h += _.length, f) {
                    var C = b[1], $ = _.indexOf(C), L = $ + C.length;
                    b[2] && (L = _.length - b[2].length, $ = L - C.length);
                    var S = v.substring(5);
                    i(l + w, _.substring(0, $), r, d), i(l + w + $, C, c(S, C), d), i(l + w + L, _.substring(L), r, d)
                } else d.push(l + w, v)
            }
            e.decorations = d
        };
        return r
    }

    function o(e) {
        var t = [], i = [];
        e.tripleQuotedStrings ? t.push([k, /^(?:\'\'\'(?:[^\'\\]|\\[\s\S]|\'{1,2}(?=[^\']))*(?:\'\'\'|$)|\"\"\"(?:[^\"\\]|\\[\s\S]|\"{1,2}(?=[^\"]))*(?:\"\"\"|$)|\'(?:[^\\\']|\\[\s\S])*(?:\'|$)|\"(?:[^\\\"]|\\[\s\S])*(?:\"|$))/, null, "'\""]) : e.multiLineStrings ? t.push([k, /^(?:\'(?:[^\\\']|\\[\s\S])*(?:\'|$)|\"(?:[^\\\"]|\\[\s\S])*(?:\"|$)|\`(?:[^\\\`]|\\[\s\S])*(?:\`|$))/, null, "'\"`"]) : t.push([k, /^(?:\'(?:[^\\\'\r\n]|\\.)*(?:\'|$)|\"(?:[^\\\"\r\n]|\\.)*(?:\"|$))/, null, "\"'"]), e.verbatimStrings && i.push([k, /^@\"(?:[^\"]|\"\")*(?:\"|$)/, null]);
        var n = e.hashComments;
        n && (e.cStyleComments ? (n > 1 ? t.push([N, /^#(?:##(?:[^#]|#(?!##))*(?:###|$)|.*)/, null, "#"]) : t.push([N, /^#(?:(?:define|e(?:l|nd)if|else|error|ifn?def|include|line|pragma|undef|warning)\b|[^\r\n]*)/, null, "#"]), i.push([k, /^<(?:(?:(?:\.\.\/)*|\/?)(?:[\w-]+(?:\/[\w-]+)+)?[\w-]+\.h(?:h|pp|\+\+)?|[a-z]\w*)>/, null])) : t.push([N, /^#[^\r\n]*/, null, "#"])), e.cStyleComments && (i.push([N, /^\/\/[^\r\n]*/, null]), i.push([N, /^\/\*[\s\S]*?(?:\*\/|$)/, null]));
        var o = e.regexLiterals;
        if (o) {
            var s = o > 1 ? "" : "\n\r", r = s ? "." : "[\\S\\s]", l = "/(?=[^/*" + s + "])(?:[^/\\x5B\\x5C" + s + "]|\\x5C" + r + "|\\x5B(?:[^\\x5C\\x5D" + s + "]|\\x5C" + r + ")*(?:\\x5D|$))+/";
            i.push(["lang-regex", RegExp("^" + F + "(" + l + ")")])
        }
        var c = e.types;
        c && i.push([P, c]);
        var d = ("" + e.keywords).replace(/^ | $/g, "");
        d.length && i.push([E, new RegExp("^(?:" + d.replace(/[\s,]+/g, "|") + ")\\b"), null]), t.push([A, /^\s+/, null, " \r\n\t "]);
        var h = "^.[^\\s\\w.$@'\"`/\\\\]*";
        return e.regexLiterals && (h += "(?!s*/)"), i.push([O, /^@[a-z_$][a-z_$@0-9]*/i, null], [P, /^(?:[@_]?[A-Z]+[a-z][A-Za-z_$@0-9]*|\w+_t\b)/, null], [A, /^[a-z_$][a-z_$@0-9]*/i, null], [O, new RegExp("^(?:0x[a-f0-9]+|(?:\\d(?:_\\d+)*\\d*(?:\\.\\d*)?|\\.\\d\\+)(?:e[+\\-]?\\d+)?)[a-z]*", "i"), null, "0123456789"], [A, /^\\[\s\S]?/, null], [H, new RegExp(h), null]), a(t, i)
    }

    function s(e, t, i) {
        function n(e) {
            var t = e.nodeType;
            if (1 != t || o.test(e.className)) {
                if ((3 == t || 4 == t) && i) {
                    var l = e.nodeValue, c = l.match(s);
                    if (c) {
                        var d = l.substring(0, c.index);
                        e.nodeValue = d;
                        var h = l.substring(c.index + c[0].length);
                        if (h) {
                            var p = e.parentNode;
                            p.insertBefore(r.createTextNode(h), e.nextSibling)
                        }
                        a(e), d || e.parentNode.removeChild(e)
                    }
                }
            } else if ("br" === e.nodeName)a(e), e.parentNode && e.parentNode.removeChild(e); else for (var m = e.firstChild; m; m = m.nextSibling)n(m)
        }

        function a(e) {
            function t(e, i) {
                var n = i ? e.cloneNode(!1) : e, a = e.parentNode;
                if (a) {
                    var o = t(a, 1), s = e.nextSibling;
                    o.appendChild(n);
                    for (var r = s; r; r = s)s = r.nextSibling, o.appendChild(r)
                }
                return n
            }

            for (; !e.nextSibling;)if (e = e.parentNode, !e)return;
            for (var i, n = t(e.nextSibling, 0); (i = n.parentNode) && 1 === i.nodeType;)n = i;
            c.push(n)
        }

        for (var o = /(?:^|\s)nocode(?:\s|$)/, s = /\r\n?|\n/, r = e.ownerDocument, l = r.createElement("li"); e.firstChild;)l.appendChild(e.firstChild);
        for (var c = [l], d = 0; d < c.length; ++d)n(c[d]);
        t === (0 | t) && c[0].setAttribute("value", t);
        var h = r.createElement("ol");
        h.className = "linenums";
        for (var p = Math.max(0, t - 1 | 0) || 0, d = 0, m = c.length; d < m; ++d)l = c[d], l.className = "L" + (d + p) % 10, l.firstChild || l.appendChild(r.createTextNode(" ")), h.appendChild(l);
        e.appendChild(h)
    }

    function r(e) {
        var t = /\bMSIE\s(\d+)/.exec(navigator.userAgent);
        t = t && +t[1] <= 8;
        var i = /\n/g, n = e.sourceCode, a = n.length, o = 0, s = e.spans, r = s.length, l = 0, c = e.decorations, d = c.length, h = 0;
        c[d] = a;
        var p, m;
        for (m = p = 0; m < d;)c[m] !== c[m + 2] ? (c[p++] = c[m++], c[p++] = c[m++]) : m += 2;
        for (d = p, m = p = 0; m < d;) {
            for (var u = c[m], g = c[m + 1], f = m + 2; f + 2 <= d && c[f + 1] === g;)f += 2;
            c[p++] = u, c[p++] = g, m = f
        }
        d = c.length = p;
        var _, v = e.sourceNode;
        v && (_ = v.style.display, v.style.display = "none");
        try {
            for (; l < r;) {
                var b, x = (s[l], s[l + 2] || a), y = c[h + 2] || a, f = Math.min(x, y), w = s[l + 1];
                if (1 !== w.nodeType && (b = n.substring(o, f))) {
                    t && (b = b.replace(i, "\r")), w.nodeValue = b;
                    var C = w.ownerDocument, $ = C.createElement("span");
                    $.className = c[h + 1];
                    var L = w.parentNode;
                    L.replaceChild($, w), $.appendChild(w), o < x && (s[l + 1] = w = C.createTextNode(n.substring(f, x)), L.insertBefore(w, $.nextSibling))
                }
                o = f, o >= x && (l += 2), o >= y && (h += 2)
            }
        } finally {
            v && (v.style.display = _)
        }
    }

    function l(e, t) {
        for (var i = t.length; --i >= 0;) {
            var n = t[i];
            V.hasOwnProperty(n) ? m.console && console.warn("cannot override language handler %s", n) : V[n] = e
        }
    }

    function c(e, t) {
        return e && V.hasOwnProperty(e) || (e = /^\s*</.test(t) ? "default-markup" : "default-code"), V[e]
    }

    function d(e) {
        var i = e.langExtension;
        try {
            var n = t(e.sourceNode, e.pre), a = n.sourceCode;
            e.sourceCode = a, e.spans = n.spans, e.basePos = 0, c(i, a)(e), r(e)
        } catch (o) {
            m.console && console.log(o && o.stack || o)
        }
    }

    function h(e, t, i) {
        var n = document.createElement("div");
        n.innerHTML = "<pre>" + e + "</pre>", n = n.firstChild, i && s(n, i, !0);
        var a = {langExtension: t, numberLines: i, sourceNode: n, pre: 1};
        return d(a), n.innerHTML
    }

    function p(e, t) {
        function i(e) {
            return o.getElementsByTagName(e)
        }

        function a() {
            for (var t = m.PR_SHOULD_USE_CONTINUATION ? g.now() + 250 : 1 / 0; _ < c.length && g.now() < t; _++) {
                for (var i = c[_], o = $, l = i; l = l.previousSibling;) {
                    var h = l.nodeType, p = (7 === h || 8 === h) && l.nodeValue;
                    if (p ? !/^\??prettify\b/.test(p) : 3 !== h || /\S/.test(l.nodeValue))break;
                    if (p) {
                        o = {}, p.replace(/\b(\w+)=([\w:.%+-]+)/g, function (e, t, i) {
                            o[t] = i
                        });
                        break
                    }
                }
                var u = i.className;
                if ((o !== $ || b.test(u)) && !x.test(u)) {
                    for (var L = !1, S = i.parentNode; S; S = S.parentNode) {
                        var R = S.tagName;
                        if (C.test(R) && S.className && b.test(S.className)) {
                            L = !0;
                            break
                        }
                    }
                    if (!L) {
                        i.className += " prettyprinted";
                        var T = o.lang;
                        if (!T) {
                            T = u.match(v);
                            var k;
                            !T && (k = n(i)) && w.test(k.tagName) && (T = k.className.match(v)), T && (T = T[1])
                        }
                        var E;
                        if (y.test(i.tagName))E = 1; else {
                            var N = i.currentStyle, P = r.defaultView, O = N ? N.whiteSpace : P && P.getComputedStyle ? P.getComputedStyle(i, null).getPropertyValue("white-space") : 0;
                            E = O && "pre" === O.substring(0, 3)
                        }
                        var H = o.linenums;
                        (H = "true" === H || +H) || (H = u.match(/\blinenums\b(?::(\d+))?/), H = !!H && (!H[1] || !H[1].length || +H[1])), H && s(i, H, E), f = {
                            langExtension: T,
                            sourceNode: i,
                            numberLines: H,
                            pre: E
                        }, d(f)
                    }
                }
            }
            _ < c.length ? setTimeout(a, 250) : "function" == typeof e && e()
        }

        for (var o = t || document.body, r = o.ownerDocument || document, l = [i("pre"), i("code"), i("xmp")], c = [], h = 0; h < l.length; ++h)for (var p = 0, u = l[h].length; p < u; ++p)c.push(l[h][p]);
        l = null;
        var g = Date;
        g.now || (g = {
            now: function () {
                return +new Date
            }
        });
        var f, _ = 0, v = /\blang(?:uage)?-([\w.]+)(?!\S)/, b = /\bprettyprint\b/, x = /\bprettyprinted\b/, y = /pre|xmp/i, w = /^code$/i, C = /^(?:pre|code|xmp)$/i, $ = {};
        a()
    }

    var m = window, u = ["break,continue,do,else,for,if,return,while"], g = [u, "auto,case,char,const,default,double,enum,extern,float,goto,inline,int,long,register,short,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile"], f = [g, "catch,class,delete,false,import,new,operator,private,protected,public,this,throw,true,try,typeof"], _ = [f, "alignof,align_union,asm,axiom,bool,concept,concept_map,const_cast,constexpr,decltype,delegate,dynamic_cast,explicit,export,friend,generic,late_check,mutable,namespace,nullptr,property,reinterpret_cast,static_assert,static_cast,template,typeid,typename,using,virtual,where"], v = [f, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient"], b = [v, "as,base,by,checked,decimal,delegate,descending,dynamic,event,fixed,foreach,from,group,implicit,in,internal,into,is,let,lock,object,out,override,orderby,params,partial,readonly,ref,sbyte,sealed,stackalloc,string,select,uint,ulong,unchecked,unsafe,ushort,var,virtual,where"], x = "all,and,by,catch,class,else,extends,false,finally,for,if,in,is,isnt,loop,new,no,not,null,of,off,on,or,return,super,then,throw,true,try,unless,until,when,while,yes", y = [f, "debugger,eval,export,function,get,null,set,undefined,var,with,Infinity,NaN"], w = "caller,delete,die,do,dump,elsif,eval,exit,foreach,for,goto,if,import,last,local,my,next,no,our,print,package,redo,require,sub,undef,unless,until,use,wantarray,while,BEGIN,END", C = [u, "and,as,assert,class,def,del,elif,except,exec,finally,from,global,import,in,is,lambda,nonlocal,not,or,pass,print,raise,try,with,yield,False,True,None"], $ = [u, "alias,and,begin,case,class,def,defined,elsif,end,ensure,false,in,module,next,nil,not,or,redo,rescue,retry,self,super,then,true,undef,unless,until,when,yield,BEGIN,END"], L = [u, "as,assert,const,copy,drop,enum,extern,fail,false,fn,impl,let,log,loop,match,mod,move,mut,priv,pub,pure,ref,self,static,struct,true,trait,type,unsafe,use"], S = [u, "case,done,elif,esac,eval,fi,function,in,local,set,then,until"], R = [_, b, y, w, C, $, S], T = /^(DIR|FILE|vector|(de|priority_)?queue|list|stack|(const_)?iterator|(multi)?(set|map)|bitset|u?(int|float)\d*)\b/, k = "str", E = "kwd", N = "com", P = "typ", O = "lit", H = "pun", A = "pln", I = "tag", z = "dec", M = "src", B = "atn", D = "atv", U = "nocode", F = "(?:^^\\.?|[+-]|[!=]=?=?|\\#|%=?|&&?=?|\\(|\\*=?|[+\\-]=|->|\\/=?|::?|<<?=?|>>?>?=?|,|;|\\?|@|\\[|~|{|\\^\\^?=?|\\|\\|?=?|break|case|continue|delete|do|else|finally|instanceof|return|throw|try|typeof)\\s*", G = /\S/, j = o({
        keywords: R,
        hashComments: !0,
        cStyleComments: !0,
        multiLineStrings: !0,
        regexLiterals: !0
    }), V = {};
    l(j, ["default-code"]), l(a([], [[A, /^[^<?]+/], [z, /^<!\w[^>]*(?:>|$)/], [N, /^<\!--[\s\S]*?(?:-\->|$)/], ["lang-", /^<\?([\s\S]+?)(?:\?>|$)/], ["lang-", /^<%([\s\S]+?)(?:%>|$)/], [H, /^(?:<[%?]|[%?]>)/], ["lang-", /^<xmp\b[^>]*>([\s\S]+?)<\/xmp\b[^>]*>/i], ["lang-js", /^<script\b[^>]*>([\s\S]*?)(<\/script\b[^>]*>)/i], ["lang-css", /^<style\b[^>]*>([\s\S]*?)(<\/style\b[^>]*>)/i], ["lang-in.tag", /^(<\/?[a-z][^<>]*>)/i]]), ["default-markup", "htm", "html", "mxml", "xhtml", "xml", "xsl"]), l(a([[A, /^[\s]+/, null, " \t\r\n"], [D, /^(?:\"[^\"]*\"?|\'[^\']*\'?)/, null, "\"'"]], [[I, /^^<\/?[a-z](?:[\w.:-]*\w)?|\/?>$/i], [B, /^(?!style[\s=]|on)[a-z](?:[\w:-]*\w)?/i], ["lang-uq.val", /^=\s*([^>\'\"\s]*(?:[^>\'\"\s\/]|\/(?=\s)))/], [H, /^[=<>\/]+/], ["lang-js", /^on\w+\s*=\s*\"([^\"]+)\"/i], ["lang-js", /^on\w+\s*=\s*\'([^\']+)\'/i], ["lang-js", /^on\w+\s*=\s*([^\"\'>\s]+)/i], ["lang-css", /^style\s*=\s*\"([^\"]+)\"/i], ["lang-css", /^style\s*=\s*\'([^\']+)\'/i], ["lang-css", /^style\s*=\s*([^\"\'>\s]+)/i]]), ["in.tag"]), l(a([], [[D, /^[\s\S]+/]]), ["uq.val"]), l(o({
        keywords: _,
        hashComments: !0,
        cStyleComments: !0,
        types: T
    }), ["c", "cc", "cpp", "cxx", "cyc", "m"]), l(o({keywords: "null,true,false"}), ["json"]), l(o({
        keywords: b,
        hashComments: !0,
        cStyleComments: !0,
        verbatimStrings: !0,
        types: T
    }), ["cs"]), l(o({keywords: v, cStyleComments: !0}), ["java"]), l(o({
        keywords: S,
        hashComments: !0,
        multiLineStrings: !0
    }), ["bash", "bsh", "csh", "sh"]), l(o({
        keywords: C,
        hashComments: !0,
        multiLineStrings: !0,
        tripleQuotedStrings: !0
    }), ["cv", "py", "python"]), l(o({
        keywords: w,
        hashComments: !0,
        multiLineStrings: !0,
        regexLiterals: 2
    }), ["perl", "pl", "pm"]), l(o({
        keywords: $,
        hashComments: !0,
        multiLineStrings: !0,
        regexLiterals: !0
    }), ["rb", "ruby"]), l(o({
        keywords: y,
        cStyleComments: !0,
        regexLiterals: !0
    }), ["javascript", "js"]), l(o({
        keywords: x,
        hashComments: 3,
        cStyleComments: !0,
        multilineStrings: !0,
        tripleQuotedStrings: !0,
        regexLiterals: !0
    }), ["coffee"]), l(o({
        keywords: L,
        cStyleComments: !0,
        multilineStrings: !0
    }), ["rc", "rs", "rust"]), l(a([], [[k, /^[\s\S]+/]]), ["regex"]);
    var W = m.PR = {
        createSimpleLexer: a,
        registerLangHandler: l,
        sourceDecorator: o,
        PR_ATTRIB_NAME: B,
        PR_ATTRIB_VALUE: D,
        PR_COMMENT: N,
        PR_DECLARATION: z,
        PR_KEYWORD: E,
        PR_LITERAL: O,
        PR_NOCODE: U,
        PR_PLAIN: A,
        PR_PUNCTUATION: H,
        PR_SOURCE: M,
        PR_STRING: k,
        PR_TAG: I,
        PR_TYPE: P,
        prettyPrintOne: IN_GLOBAL_SCOPE ? m.prettyPrintOne = h : prettyPrintOne = h,
        prettyPrint: prettyPrint = IN_GLOBAL_SCOPE ? m.prettyPrint = p : prettyPrint = p
    };
    "function" == typeof define && define.amd && define("google-code-prettify", [], function () {
        return W
    })
}();