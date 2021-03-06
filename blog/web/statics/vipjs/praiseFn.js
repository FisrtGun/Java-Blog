// praise or trample   album_detail
define(['apps/_verificaUser'], function (_verificaUser) {
    var init = function () {
        var praiseBtn = $(".praise_btn"),
                album_id = praiseBtn.attr("data-id");
        praiseBtn.on("click", function () {
            var $this = $(this),
                    praiseNum = parseInt($this.next("em").text());
            if (_verificaUser._verificaUser()) {
                $(this).addClass("praise_already");
                var url = '/index.php/album/do_download_favorite/' + album_id;
                $.ajax({
                    type: 'get',
                    url: url,
                    async: false,
                    dataType: 'jsonp',
                    jsonp: 'callback',
                    success: function (resobj) {  
                        //var data = eval('('+ resobj + ')');
                        if (resobj.succ == 1) {
                            $this.next("em").text(praiseNum + 1);
                        } else if (resobj.succ == -1) {
                            alert(resobj.msg);
                        } else if (resobj.succ == 0) {
                            alert(resobj.msg);
                        } else if (resobj.succ == -3) {
                            alert(resobj.msg);
                            $(this).removeClass("praise_already");
                        }
                    },
                    error: function () {
                        console.log("Send Ajax error ...");
                    }
                });
            }
        });
    };
    return {
        init: init
    };
});



