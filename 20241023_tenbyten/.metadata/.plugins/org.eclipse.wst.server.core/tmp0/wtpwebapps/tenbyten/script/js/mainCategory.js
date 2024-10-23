
$(function(){

    // sub카테고리
    // 대표 카테고리에 마우스올릴경우
    $('nav > ul > li').mouseenter(function(){
        let subName = $(this).attr("name")
        $('#'+subName).stop().show();
        $('#wrap').show();
    }).mouseleave(function(){
        $('.subWrap').stop().hide();
        $('#wrap').hide();
    });
    // 생성된 서브 카테고리에 마우스 올릴경우
    $('.subWrap').mouseenter(function(){    //서브카테고리 박스에 마우스 올리면 사라지지 않도록
        $(this).stop().show();
        $('#wrap').show();
    }).mouseleave(function(){
        $('.subWrap').stop().hide();
        $('#wrap').hide();
    });



});

