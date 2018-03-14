$(function(){
    var num=0;
    var timer=null;
    $('.carousel ol li').mouseover(function(){
      $(this).addClass('carousel_current').siblings().removeClass('carousel_current');
      var myindex=$(this).index();
      $('.carousel ul li').eq(myindex).hide().stop().fadeIn().siblings().hide();
      num=myindex;
    });
    function autoplay(){
      $('.carousel ol li').eq(num).addClass('carousel_current').siblings().removeClass('carousel_current');
      $('.carousel ul li').eq(num).hide().stop().fadeIn().siblings().hide();
    }
    function play1(){
      num++;
      if(num>4){num=0}
      autoplay();
    };
    function play2(){
      num--;
      if(num<0){num=4}
      autoplay();
    };
    timer=setInterval(play1,8000);
    $('.carousel').hover(function(){
      clearInterval(timer);
    },function(){
      clearInterval(timer);
      timer=setInterval(play1,8000);
    });
    $('.carousel_btnR').click(function(){
      play1();
    });
    $('.carousel_btnL').click(function(){
      play2();
    });
});