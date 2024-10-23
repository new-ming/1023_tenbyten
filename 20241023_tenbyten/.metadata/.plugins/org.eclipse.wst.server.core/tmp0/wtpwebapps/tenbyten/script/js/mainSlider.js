
$(function(){

    // 배너 슬라이드 애니메이션
    function slide(){
        $('.slide').stop().animate({marginLeft:-1920},function(){
            $(".slide li:first").appendTo(".slide")
            $(".slide").css({marginLeft:0});

        });
    }

    // 배너 이전
    function prev(){
        $(".slide li:last").prependTo(".slide");
        $(".slide").css("marginLeft",-1920);
        $(".slide").stop().animate({marginLeft:0},1000)
    };

    function next(){
        $(".slide").stop().animate({marginLeft:-1920},function(){
            $(".slide li:first").appendTo(".slide")
            $(".slide").css({marginLeft:0});

        })
    }

    setInterval(slide,5000);    // 기본 슬라이드

    $("#mainSliderPrev").click(function(){  // 클릭시 슬라이드 앞으로
        prev();
    })
    $("#mainSliderNext").click(function(){  // 클릭시 슬라이드 뒤로
        next();
    })


});

