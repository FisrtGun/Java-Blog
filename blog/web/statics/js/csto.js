$(document).ready(function () {
    setupdjs();
    $('.tag_view i.notice').before('<span class="tagNew" title="编辑标签"></span>');
    $('.tag_edit_box .tagNew').click(function(){
        $('.tag_set').fadeOut(10);
        $('.tag_edit_box').removeClass('selected');
        $(this).parents('.tag_edit_box').addClass('selected').children('.tag_set').fadeIn(500);
    });
    $('.tag_edit_box .tag_set h4').append('<i class="tagClose" title="关闭"></i>');
    $('.tag_edit_box .tagClose').click(function(){
        $(this).parents('.tag_set').fadeOut(500);
        $('.tag_edit_box').removeClass('selected');
    });
    $('.tag_edit_box .public_tags a').click(function(){
        var _tagtxt = $(this).text(),
            _tagids = $(this).attr('id'),
            _dsbox = $(this).parent().parent().siblings('.tag_view'),
            _dsboxs = _dsbox.find('span#tag_v_'+ _tagids +'').length;
        if (_dsboxs < 1){
        _dsbox.children('.tagNew').before('<span id="tag_v_'+ _tagids +'">'+ _tagtxt +'<i></i></span>');
        //你获取的ID
        //获取val值
        var _old_hidden_val = $(this).parents('.tag_edit_box').find('.tagval').val();
        var _new_hidden_val = _old_hidden_val + ',' + _tagids;
        $(this).parents('.tag_edit_box').find('.tagval').val(_new_hidden_val);
        $(this).addClass('selected');
        }
    });
    $('.tag_edit_box .tag_view span i').live('click',function(){
        var _tag_id = $(this).parent().attr('id').substring(6);
        $('.tag_edit_box .public_tags').find('#'+_tag_id).removeClass('selected');
        var obj = $(this).parents('.tag_edit_box').find('input[type="hidden"]');
        var _tag_ids = obj.val().split(',');
        var tag_index = $.inArray(_tag_id, _tag_ids);
        _tag_ids.splice(tag_index, 1);
        obj.val(_tag_ids.toString());
        $(this).parent('span').remove();
    });
    $('.tag_set .my_tag_btn').live('click',function(){
        var _this = $(this);
        var _tag_val = _this.prev().val();
        var _tag_ids = _this.parents('.tag_edit_box').find('input').val().split(',');

        _this.prev().val("");

        if (_tag_val != ''){
            $.post(site_url+'ajax/tags', {tag_name: _tag_val, category: 'skill'}, function(data){
                if (data)
                {
                    if ($.inArray(data.id, _tag_ids) == -1)
                    {
                        _tag_ids.push(data.id);
                        _this.parents('.tag_edit_box').find('.tagval').val(_tag_ids.toString());
                        _this.parents('.tag_edit_box').find('.tagNew').before('<span id="tag_v_'+ data.id +'">'+ data.name +'<i></i></span>');
                        _this.parents('.tag_edit_box').find('#'+data.id).addClass('selected');
                    }
                }
            }, "json");
        }
    });
    $('.tag_set').each(function() {
        $(this).children('h5').find('i').eq(0).addClass('selected');
        $(this).find('.public_tags').eq(0).show();
    });
    $('.tag_set h5 i').click(function() {
        $(this).addClass('selected').siblings().removeClass('selected');
        var _show_tag_list = $(this).attr('for');
        $(this).parents('.tag_set').find('#'+_show_tag_list).show().siblings('.public_tags').hide();
    });



    $('#menu dd').mousemove(function () {
        $(this).find('ul').show();
    });
    $('#menu dd').mouseleave(function () {
        $(this).find('ul').hide();
    });
    $(".prj_view_buy_sf").click(function () {
        if ($(this).children().attr('src') == 'http://www.csdnstore.com/images/dropmenu_arrow.gif') {
            $(this).children().attr('src', 'http://www.csdnstore.com/images/dropup_arrow.gif');
        } else {
            $(this).children().attr('src', 'http://www.csdnstore.com/images/dropmenu_arrow.gif');
        }
    });
    $(".Bid_ZK").live('click', function () {
        $(this).removeClass('Bid_ZK').addClass('Bid_GB').attr("title", "收起");
        $(this).parent().parent().find("dd").show();
    });
    $(".Bid_GB").live('click', function () {
        $(this).removeClass('Bid_GB').addClass('Bid_ZK').attr("title", "展开");
        $(this).parent().parent().find("dd").hide();
    });

    setupdjs();
    get_show_card();
});
function get_show_card() {
    $(".ShowCard").each(function () {
        var obj = $(this);
        $(this).mouseover(function () {
            var uid = $(this).attr('uid');
            var prj = $(this).attr('prj');
            if ($(this).find('.UserCard').attr('nul') == 'y') {
                $(this).find('.UserCard').attr('nul', 'n');
                $.get(site_url + 'ajax/card/' + prj + '?id=' + uid, '', function (data) {
                    obj.find('.UserCard').html(data);
                });
            }
            return false;
        });
    });
}
$(".prj_list_skey_del").live('click', function () {
    $(this).remove();
    prj_list_getres(1);
});
$(".user_list_skey_del").live('click', function () {
    $(this).remove();
    user_list_getres(1);
});
$(".case_list_skey_del").live('click', function () {
    $(this).remove();
    case_list_getres(1);
});
function setupdjs() {
    $(".daojishi").each(function () {
        var alltime = $(this).attr("alltime");
        var endmsg = $(this).attr("endmsg");
        var type = $(this).attr("type");
        var id = $(this).attr("id");
        var premsg = $(this).attr("premsg");
        daoshi(alltime, endmsg, type, id, premsg);
    });
}
function prj_list_getres(page) {
    $("#prj_list_shwores").html('<img src="' + site_url + 'images/loading.gif" alt="数据载入中，请稍后">');
    $("#prj_list_pageshow").html("");
    $("#prj_list_numshow").html("读取ing");
    var params = {};
    $("#prj_list_choice a").each(function () {
        var s_name = $(this).attr('s_name');
        params[s_name] = $.trim($(this).text());
    });
    params['pg'] = page;
    $.getJSON(encodeURI(site_url + "ajax/s?" + $.param(params)), '', function (data) {
        $('body').stopTime();
        $("#prj_list_shwores").html(data.list);
        $("#prj_list_pageshow").html(data.page);
        $("#prj_list_numshow").html(data.num);
        uppage();
        setupdjs();
        get_show_card();
    });
}
function user_list_getres(page) {
    $("#user_list_shwores").html('<div class="loadingbox" title="数据载入中，请稍后"></div>');
    $("#user_list_pageshow").html("");
    $("#user_list_numshow").html("读取ing");
    var params = {};
    $("#user_list_choice a").each(function () {
        var s_name = $(this).attr('s_name');
        params[s_name] = $.trim($(this).text());
    });
    params['pg'] = page;
    $.getJSON(encodeURI(site_url + "ajax/m?" + $.param(params)), '', function (data) {
        $('body').stopTime();
        $("#user_list_shwores").html(data.list);
        $("#user_list_pageshow").html(data.page);
        $("#user_list_numshow").html(data.num);
        uppage_m();
        setupdjs();
    });
}
function case_list_getres(page) {
    $("#case_list_shwores").html('<img src="' + site_url + 'images/loading.gif" alt="数据载入中，请稍后">');
    $("#case_list_pageshow").html("");
    $("#case_list_numshow").html("读取ing");
    var params = {};
    $("#case_list_choice a").each(function () {
        var s_name = $(this).attr('s_name');
        params[s_name] = $.trim($(this).text());
    });
    params['pg'] = page;
    $.getJSON(encodeURI(site_url + "ajax/c?" + $.param(params)), '', function (data) {
        $('body').stopTime();
        $("#case_list_shwores").html(data.list);
        $("#case_list_pageshow").html(data.page);
        $("#case_list_numshow").html(data.num);
        uppage_c();
        setupdjs();
    });
}
function uppage() {
    $(".page_nav a").each(function () {
        $(this).click(function () {
            var page = $(this).attr('page');
            prj_list_getres(page);
        });
    });
}
function uppage_m() {
    $(".page_nav a").each(function () {
        $(this).click(function () {
            var page = $(this).attr('page');
            user_list_getres(page);
        });
    });
}
function uppage_c() {
    $(".page_nav a").each(function () {
        $(this).click(function () {
            var page = $(this).attr('page');
            case_list_getres(page);
        });
    });
}
function highlight(key) {
}
$(".prj_view_buy_sf").click(function () {
    if ($(this).children().attr('src') == 'http://www.csdnstore.com/images/dropmenu_arrow.gif') {
        $(this).children().attr('src', 'http://www.csdnstore.com/images/dropup_arrow.gif');
    } else {
        $(this).children().attr('src', 'http://www.csdnstore.com/images/dropmenu_arrow.gif');
    }
    $(this).parent().parent().parent().parent().find(".solu").toggle();
});
var chackTextarea = function (obj, num, objTip) {
    window.setInterval(function () {
        var newvalue = obj.value.replace(/[^\x00-\xff]/g, "**");
        if (newvalue.length >= 0) {
            if (newvalue.length > num) {
                objTip.innerHTML = "已超出" + parseInt((newvalue.length - num) / 2) + "个字!";
                objTip.style.color = "#F00";
                $(".btn_1").hide();
            } else {
                objTip.innerHTML = "你还能输入" + parseInt((num - newvalue.length) / 2) + "个字!";
                objTip.style.color = "#588905";
                $(".btn_1").show();
            }
        } else {
            $(".btn_1").hide();
        }
    }, 100)
}
function daoshi(alltime, endmsg, type, id, premsg) {
    var SysSecond;
    var InterValObj;
    var hour = 0;
    var second = 0;
    var minite = 0;
    var div = id;
    SysSecond = alltime;
    $('body').everyTime('1s', div, sec);
    sec();
    function sec() {
        if (SysSecond > 0) {
            SysSecond = SysSecond - 1;
            var second_pm = Math.floor(SysSecond % 60);
            var minite_pm = Math.floor((SysSecond / 60) % 60);
            var hour_pm = Math.floor((SysSecond / 3600) % 24);
            var day_pm = Math.floor((SysSecond / 3600) / 24);
            if (day_pm > 1) {
                if (day_pm < 10) {
                    day_pm = "0" + day_pm;
                }
                if (hour_pm < 10) {
                    hour_pm = "0" + hour_pm;
                }
                if (minite_pm < 10) {
                    minite_pm = "0" + minite_pm;
                }
                if (type == 1) {
                    $("#" + div).html(premsg + day_pm + "天" + hour_pm + "小时" + minite_pm + "分");
                }
                if (type == 2) {
                    $("#" + div).html(premsg + day_pm + "天" + hour_pm + "小时" + minite_pm + "分" + second_pm + "秒");
                }
                if (type == 3) {
                    $("#" + div).html(premsg + second_pm + "秒");
                }
            } else {
                if (hour_pm < 10) {
                    hour_pm = "0" + hour_pm;
                }
                if (minite_pm < 10) {
                    minite_pm = "0" + minite_pm;
                }
                if (second_pm < 10) {
                    second_pm = "0" + second_pm;
                }
                if (type == 1) {
                    $("#" + div).html(premsg + hour_pm + "小时" + minite_pm + "分");
                }
                if (type == 2) {
                    $("#" + div).html(premsg + hour_pm + "小时" + minite_pm + "分" + second_pm + "秒");
                }
                if (type == 3) {
                    $("#" + div).html(premsg + second_pm + "秒");
                }
            }
        } else {
            $('body').stopTime(div);
            $("#" + div).html(endmsg);
        }
    }
}
function edit_ok(id, name) {
    $("#user_name").html(name);
    $("#user_id").attr('value', id);
    box_show('prj_edit_ok');
}
function createBlack() {
    var blackObj = document.createElement("div");
    blackObj.id = "opacityDiv";
    document.body.appendChild(blackObj);
}
function tags1_xuanze(name, i) {
    var flag = true;
    $("#tag1_list_1 span").each(function () {
        if ($(this).text() == name) {
            flag = false;
        }
    });
    if (flag) {
        $("#tag_ck_" + i).attr("checked", true);
        $("#tag1_list_1").html('<span id="tag' + i + '">' + name + '<a href="javascript:void(0);" onclick="tags1_del(' + i + ')" title="删除此类别"><img src="' + site_url + 'images/ico_del.gif" alt="删除此技能" /></a></span>')
    } else {
        tags1_del(i);
    }
}
function user_tags1_xuanze(name, i) {
    var flag = true;
    $("#tag1_list_1 span").each(function () {
        if ($(this).text() == name) {
            flag = false;
        }
    });
    if (flag) {
        if ($("#tag1_list_1").children().length > 4) {
            message_error("您只能选择五个关注领域");
            tags1_del(i);
        } else {
            $("#tag_ck_" + i).attr("checked", true);
            $("#tag1_list_1").append('<span id="tag' + i + '">' + name + '<a href="javascript:void(0);" onclick="tags1_del(' + i + ')" title="删除此类别"><img src="' + site_url + 'images/ico_del.gif" alt="删除此技能" /></a></span>')
        }
    } else {
        tags1_del(i);
    }
}
function tags1_del(i) {
    $("#tag_ck_" + i).attr("checked", false);
    $("#tag" + i).remove();
}
function tags1_del_all() {
    $("input:checked").each(function () {
        $(this).attr("checked", false);
    });
    $("#tag1_list_1").empty();
}
function tag1_ok() {
    var tag1_text = '';
    $("#tag1_list_1 span").each(function () {
        if (tag1_text == '') {
            tag1_text = $(this).text();
        } else {
            tag1_text = tag1_text + ',' + $(this).text();
        }
    });
    $("#tag1").val(tag1_text);
    $("#tag1").blur();
    box_hide('tag1_div');
    if (tag1_text == 'iOS') {
        $('#submit_to_cocoachina').show();
    } else {
        $('#submit_to_cocoachina').hide();
    }
}
function div_show(div) {
    if ($("#" + div).css('display') == 'none') {
        $("#" + div).show();
    } else {
        $("#" + div).hide();
    }
}
function div_hide(div) {
    $("#" + div).hide();
}
function box_show(div) {
  if($('#opacityDiv:visible').length < 1){
    createBlack();
    //var windowHeight = $(window).height();
    //var windowWidth = $(window).width();
    //var st = window.pageYOffset || document.documentElement.scrollTop;
    var cssw = $("#" + div).innerWidth();
    var cssh = $("#" + div).innerHeight();
    //cssw = cssw.substr(0, cssw.length - 2);
    //cssh = cssh.substr(0, cssh.length - 2);
    //alert(cssw);
    var div_w = cssw / 2;
    var div_h = cssh / 2;
    if (div_h < 110) {
        div_h = 100;
    }
    var _close = $("#" + div).find('.Close').length;
    if (_close < 1) {
        $("#" + div).prepend("<span class='Close' Title='关闭'></span>");
    }
    $("#" + div).show().css("margin-top", -div_h).css("margin-left", -div_w);
  }
}
$('.pop .Close').live('click', function () {
  $('#opacityDiv').remove();
  $('.pop').fadeOut(100);
});
$('#pop_fail .Close,#pop_suc .Close').live('click', function () {
      $(this).parents('.pop').remove();
});
function box_hide(div) {
    $("#opacityDiv").fadeOut("normal");
    $("#" + div).hide();
    $("#opacityDiv").remove();
}
function div_hstab(div) {
    if ($("#" + div).css("display") == "none") {
        $("#" + div).show(200);
    } else {
        $("#" + div).hide(200);
    }
}
function change_captcha() {
    $("#img_captcha").attr("src", site_url + 'captcha?' + Math.round(Math.random() * 1000000))
}

function att_del(id) {
    $.post(site_url + 'ajax/attdel', {'id':id}, function (data) {
        att_uplist();
    });
}
function att_uplist() {
    var tmp = '';
    $("#uploadOutput span").each(function () {
        if (tmp == '') {
            tmp = $(this).attr("id");
        } else {
            tmp += ',' + $(this).attr("id");
        }
    });
    $("#attch_list").attr("value", tmp);
}
function upbug() {
    $("#tmpboxdiv").load(site_url + "ajax/html/div:upbug", function () {
        box_show('upbug');
    });
}
function jubao(prj_id) {
    $("#tmpboxdiv").load(site_url + "ajax/html/div:jubao/prj_id:"+prj_id, function () {
        box_show('jubao');
    });
}
function feed_prj(id) {
    $("#tmpboxdiv").load(site_url + "ajax/prjfeed/id:" + id, function () {
        box_show('kongbox');
    });
}
function okbox(title, text) {
    var html = '<div class="pop" id="pop_suc"><h3>' + title + '</h3><p>' + text + '</p><p class="okdjs"></p></div>';
    $("#tmpboxdiv").html(html);
    box_show('pop_suc');
    var count = 3;
    var handInterval = window.setInterval(function() {
      $("#tmpboxdiv p.okdjs").html(count + "秒后自动关闭");
      if (count == 0) {
          box_hide('pop_suc');
          window.clearInterval(handInterval);
      }
      count--;
    }, 1000);
}
function errbox(title, text) {
    var html = '<div class="pop" id="pop_fail"><a class="Close" href="javascript:void(0)" onclick="box_hide(\'pop_fail\')" title="关闭"></a><h3>' + title + '</h3><p>' + text + '</p></div>';
    $("#tmpboxdiv").html(html);
    box_show('pop_fail');
}
function check_img() {
    var filepath = $("input[type='file']").val();
    if (filepath == '') {
        errbox("出错啦", "上传图片不能为空")
        return false;
    }
    var extStart = filepath.lastIndexOf(".");
    var ext = filepath.substring(extStart, filepath.length).toUpperCase();
    if (ext != ".PNG" && ext != ".GIF" && ext != ".JPG" && ext != ".JPEG") {
        errbox("出错啦", "图片格式不正确，请上传png、jpg或gif格式的图片")
        return false;
    }
    var img = new Image();
    img.src = filepath;
    if (img.fileSize > 5 * 1024 * 1024) {
        errbox("出错啦", "图片不能大于5M")
        return false;
    }
    return true;
}
//格式化数字
function format(str, step, splitor) {
    str = str.toString();
    var len = str.length;
    if(len > step) {
        var l1 = len%step,
            l2 = parseInt(len/step),
            arr = [],
            first = str.substr(0, l1);
        if(first != '') {
            arr.push(first);
        };
        for(var i=0; i<l2 ; i++) {
            arr.push(str.substr(l1 + i*step, step));
        };
        str = arr.join(splitor);
    };
    return str;
}

//调用CSDN登录弹出层，登录
function login_csdn(url){
    if (typeof(url)=='undefined') {
        csdn.showLogin(function () { location.reload(true); });
    } else {
        csdn.showLogin(function () { window.location.href=url; });
    }
}

//系统正确提示信息
function message_ok(text, title){
    if (typeof(title) == 'undefined') {
        title = '系统提示';
    }
    var html = '<div class="pop" id="pop_suc"><h3>' + title + '</h3><p>' + text + '</p><p class="okdjs"></p></div>';
    $("body").append(html);
    box_show('pop_suc');
    var count = 3;

    var handInterval = window.setInterval(function() {
      $("body p.okdjs").html(count + "秒后自动关闭");
      if (count == 0) {
          box_hide('pop_suc');
          $("#opacityDiv").hide();
          window.clearInterval(handInterval);
      }
      count--;
    }, 1000);
}
//系统错误提示信息
function message_error(text, title) {
    if (typeof(title) == 'undefined') {
        title = '系统提示';
    }
    var html = '<div class="pop" id="pop_fail"><h3>' + title + '</h3><p>' + text + '</p></div>';
    $("body").append(html);
    box_show('pop_fail');
}

//用户申请上每周推荐
function apply_user_recommend(id){
    $.post(site_url + 'ajax/apply/user/recommend', {user_id:id}, function(data){
        if (data.status) {
            $('#apply_user_commend').remove();
            message_ok('申请成功，请耐心等待审核。');
        } else {
            message_error(data.errmsg);
        }
    },'json');
}
