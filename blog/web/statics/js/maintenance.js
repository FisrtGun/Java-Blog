$(document).ready(function() {
    var _cookie_name = 'announce';
    var _cookie_present = $.cookie(_cookie_name);
    var _id = Math.floor(Math.random() * 100000000);
    var _ad_show = 'ad_show_'+_id;
    var _close = 'close_'+_id;
    var _current_time = new Date().getTime();
    /** 设置开始 */
    var starts_time = new Date(2015, 12, 21).getTime(); // 开始显示消息时间，注意：月份从0开始
    var expires_time = new Date(2013, 12, 22).getTime(); // 结束显示消息时间，注意：月份从0开始
    var url = site_url+"announces/maintenance/20151222.html";
    /** 设置结束 */
    var is_show = false;
	if (is_show && !_cookie_present){ //(_current_time - starts_time > 0 && expires_time - _current_time > 0 && ! _cookie_present) {
        $("body").append('<div id="'+_ad_show+'" class="announces_box"><span class="close_ad" title="不再提醒" id="'+_close+'"></span></div>');
        $.get(url, function(html){
            $("#"+_ad_show).prepend(html);
        }, 'html');
				
        $('#'+_ad_show).animate({
					 'bottom': '-200px'
        }, 10).animate({
					 'bottom': '-10px'
        }, 1000).animate({
					 'bottom': '10px'
        }, 1000);

        $('#'+_close).click(function() {
            $('#'+_ad_show).animate({
                'bottom': '-200px'
            }, 1000);
            $.cookie(_cookie_name, '1', {
                path : '/'
            });
        });
    } 
});
