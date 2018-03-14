$(function()
{
    var classify_t = $(".calssify_con .classify_c");
    var showItem = $("#showItem .showItem_con");
    var classifyCon;

    //鼠标放到左边右边内容显示和及移开隐藏
    classify_t.hover(function()
    {
        show(this);
    },
    function()
    {
        hide(this);
    });

    //鼠标放上去的主体显示
    function show(obj)
    {
        classifyCon = $(obj).parent().attr("id");
        if(classifyCon == "classify_con")
        {
            $(obj).addClass("classify_c_cur").siblings().removeClass("classify_c_cur");
            var index= classify_t.index(obj);
            showItem.eq(index).show().siblings().hide();
        }
        else
        {
              $(obj).show().siblings().hide();
              var index = showItem.index(obj);
              classify_t.eq(index).addClass("classify_c_cur")
                        .siblings().removeClass("classify_c_cur");
        }
    }

    //鼠标放上去的主体隐藏
    function hide(obj)
    {
        classifyCon = $(obj).parent().attr("id");
        if(classifyCon == "classify_con")
        {
            $(obj).removeClass("classify_c_cur").siblings().removeClass("classify_c_cur");
            var index= classify_t.index(obj);
            showItem.eq(index).hide().siblings().hide();
        }
        else
        {
              $(obj).hide().siblings().hide();
              var index = showItem.index(obj);
              classify_t.eq(index).removeClass("classify_c_cur")
                        .siblings().removeClass("classify_c_cur");
        }
    }

    //鼠标放到右边显示和隐藏
    showItem.hover(function()
    {
      show(this);
    },
    function()
    {
      hide(this);
    });
});





























