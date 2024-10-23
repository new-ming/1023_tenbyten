$(function(){

    // 할인 상품 생성
    $(function(){
		console.log("json 작동중");
        $.ajax({
            url : "json/justOneDay.json",
            dataType : "json",
            success : function(data){

                
                if(data.length >0){
                    for(let i in data){
                        let title = data[i].title  
                        let discountRate = data[i].discountRate  
                        let price = data[i].price  
                        let imgURL = data[i].imgURL  

                        $(".justOneDay_item").eq(i).append('<div class="justOneDay_item_img"><img src="" alt="just1day_item"></div>')
                        $(".justOneDay_item > .justOneDay_item_img > img").eq(i).attr("src",imgURL)

                        $(".justOneDay_item").eq(i).append('<div class="justOneDay_item_title"><p>'+title+'</p></div>')
                        $(".justOneDay_item").eq(i).append('<div class="justOneDay_item_price"></div>')
                        $(".justOneDay_item").eq(i).find(".justOneDay_item_price").html('<span><b>'+discountRate+'</b></span><span><b>'+price+'</b></span>')
                    }
                }
            }
        });
    });


    // 이벤트 베너 생성
    $(function(){
        $.ajax({
            url : "/tenbyten/json/event_benner.json",
            dataType:"json",
            success : function(data){
                if(data.length>0){
                    for(let i in data){
                        let title = data[i].title
                        let txt = data[i].txt
                        let point = data[i].point
                        let pointClass = data[i].pointClass
                        let imgURL = data[i].imgURL
                        let url = data[i].url

                        $(".event_benner").eq(i).append('<div><img alt="event_img"></div>')
                        $(".event_benner").eq(i).find("img").attr("src",imgURL)
                        $(".event_benner").eq(i).append('<p class="event_title"><b>'+title+'</b></p>')
                        if(point !== ""){
                            $(".event_benner").eq(i).append('<span><b>'+point+'</b></span>')
                            $(".event_benner").eq(i).find("span").attr("class",pointClass)  
                        }
                        $(".event_benner").eq(i).append('<p class="event_txt">'+txt+'</p>')
                    }
                }
            }
        });

    });

    // 숫자 1000단위 표시
    function Comma(x) {return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");}

    //MDPick 생성
    $(function(){
        $.ajax({
            url : "/tenbyten/json/MDPick.json",
            dataType : "json",
            success : function(data){
                if(data.length>0){
                    for(let i in data){
                        let title = data[i].title
                        let price = Comma(data[i].price)
                        let discount = data[i].discount
                        let point = data[i].point
                        let imgURL = data[i].imgURL

                        

                        $("#md_2").append('<a href="sub.html"><div class="md_item"></div></a>')>
                        $(".md_item").eq(i).append('<div class="md_item_img"><img src="'+imgURL+'" alt="md_pick"></div>')
                        $(".md_item").eq(i).append('<p class="md_item_title">'+title+'<span></span></p>')
                        if(point !== "") {$(".md_item").eq(i).find(".md_item_title > span").text(point)}
                        $(".md_item").eq(i).append('<p class="md_item_price"><span></span>'+price+'</p>')
                        if(discount !== "") $(".md_item").eq(i).find(".md_item_price > span").text(discount)
                    
                    }
                }
            }
        })
    });


    // list_card 생성
    $(function(){
        $.ajax({
            url : "/tenbyten/json/list_card.json",
            dataType : "json",
            success : function(data){
                console.log("성공!")
                if(data.length>0){
                    for(let i in data){
                        let title = data[i].title
                        let text = data[i].text
                        let discount = data[i].discount
                        let imgURL = data[i].imgURL


        
                        $("#list_card").append('<a href="#"><div class="card"></div></a>')>
                        $(".card").eq(i).append('<div class="card_img"><img src="'+imgURL+'" alt="card_list_img"></div>')
                        $(".card").eq(i).append('<h3>'+ title +'<span></span></h3>')
                
                        if(discount !== "") {$(".card").eq(i).find("span").text(discount)}
                        $(".card").eq(i).append('<p>'+ text +'</p>')
                        
                    
                    }
                }
            }
        })
    });


   








});

