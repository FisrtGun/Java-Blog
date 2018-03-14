$(function(){
  //选项卡
  var tabFn = (function(mod){
    function tabPublicFn(attr1,target,addAttr,attr2,eve){
      var tabTit=$(attr1);
      tabTit.on(eve,target,function(){
        var num = $(this).index();
        $(this).addClass(addAttr).siblings().removeClass(addAttr);
        $(this).parent().siblings().find(attr2).eq(num).show();
        $(this).parent().siblings().find(attr2).eq(num).siblings().hide();
      })
    }
    tabPublicFn('.bannerN_conBox','.bannerN_tit span','bannerN_titCur','.bannerN_conlist','click');
    return mod;
  })(window.tabFn || {});

  //搜索获取焦点样式
  var navSearchFn = (function(mod){
    $('.nav_search .inp_srh').focus(function(){
      $(this).parents('.nav_search').addClass('nav_search_current');
    });
    $('.nav_search .inp_srh').blur(function(){
      $(this).parents('.nav_search').removeClass('nav_search_current');
    });
    return mod;
  })(window.navSearchFn || {});

});