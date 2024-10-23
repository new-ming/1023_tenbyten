$(function(){
    $(".navWrapSub").hide();
    // inner nevi
    $("#navWrap li").mouseover(function(){
        $(this).find(".navWrapSub").stop().fadeIn();
    }).mouseleave(function(){
        $(".navWrapSub").stop().hide();
    })

    // inner slider
    function slide(){
        // 우측 텍스트 배경화면 변경
        $("#sliderItembox > div").css("background-color", "rgb(211, 211, 211)")
        $("#sliderItembox > div").css("color", "black")
        // 슬라이드
        $("#sliderIMGbox ul").stop().animate({marginLeft:-400},function(){
            $("#sliderIMGbox li:first").appendTo("#sliderIMGbox ul");
            $('#sliderIMGbox ul').css({marginLeft:0});
        })

        // 슬라이드와 동일 텍스트의 배경 변경
        let index = $("#sliderIMGbox li:first img").attr("alt")

        $("#sliderItembox > div").eq(index).css("background-color", "rgb(66, 66, 66)")
        $("#sliderItembox > div").eq(index).css("color", "white")
    }

    setInterval(slide, 3000);

    

});    


