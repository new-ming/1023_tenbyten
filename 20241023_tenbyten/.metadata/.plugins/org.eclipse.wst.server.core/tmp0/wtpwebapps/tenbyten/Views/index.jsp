<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>tenbyten</title>
		    <link rel="stylesheet" href="/tenbyten/css/main.css"> 
		    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
		    <script src="script/js/js.js"></script>
		    <script src="script/js/mainSlider.js"></script>
	</head>
	
	<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	

    <!-- 슬라이더 배너 -->

    <div id="mainSlider">
        <div id="mainSliderWrap">
            <ul class="slide">
                <li><img src="img\main_rolling_benner\mainRolling_1.jpg" alt="main_benner"></li>
                <li><img src="img\main_rolling_benner\mainRolling_2.jpg" alt="main_benner"></li>
                <li><img src="img\main_rolling_benner\mainRolling_3.jpg" alt="main_benner"></li>
                <li><img src="img\main_rolling_benner\mainRolling_4.jpg" alt="main_benner"></li>
                <li><img src="img\main_rolling_benner\mainRolling_5.jpg" alt="main_benner"></li>
                <li><img src="img\main_rolling_benner\mainRolling_6.jpg" alt="main_benner"></li>

            </ul>
            <div id="mainSliderPrev">
                <span><img src="img\icon\back_icon.png"></span>
            </div>

            <div id="mainSliderNext">
                <span><img src="img\icon\next_icon.png"></span>
            </div>
        </div>
        
    </div>

    <!-- 할인 상품 -->
    <div id="justOneDay">
        <div id="justOneDay_container">
            <div class="justOneDay_text">
                <div class="justOneDay_logo">
                    <img src="img\just1day\just1day_text.png" alt="just1day">
                </div>
                <div id="justOneDay_discount">
                    <h1>~73%</h1><span>SALE</span>
                </div>
            </div>

            <a href="sub.html">
                <div class="justOneDay_item"></div>
            </a>

            <a href="#">
                <div class="justOneDay_item"></div>
            </a>

            <a href="#">
                <div class="justOneDay_item"></div>
            </a>

        </div>
    </div>


    <!-- 이벤트 배너 -->
    <div id="event">
        <a href="event2.html">
            <div class="event_benner">
            </div>
        </a>
        <a href="#">
            <div class="event_benner">
            </div>
        </a>
        <a href="#">
            <div class="event_benner">
			</div>
        </a>
    </div>


    <!--MD추천상품-->

    <div id="MDPick">
        <div id="md_1">
            <!--좌측공간-->
            <h1>MD's Pick</h1>
            <p>텐바이텐 엠디가<br>자신있게 추천합니다</p>
            <div id="btns">
                <button type="button">#BEST 100</button>
                <button type="button">#BEST WISH</button>
                <button type="button">#NEW BEST</button>
            </div>
        </div>
        <div id="md_2">
            <!--우측 상품정렬공간-->
        
        </div>
    </div>

    <div class="hr"><hr></div>
    
    <!-- card -->
    <div id="list_card">
        

    </div>


    <div id=""></div>
    <div id=""></div>
    <div id=""></div>




	
	
	
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>