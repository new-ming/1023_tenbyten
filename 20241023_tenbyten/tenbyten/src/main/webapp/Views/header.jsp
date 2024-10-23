<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/common.css"> 
	    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
	    
        <script src="script/js/mainCategory.js"></script>
	</head>
	
	<body>
		<!-- 최상단 -->
	    <div id="headerTop">
	        <div class="headUser">
	            <ul>
	            	
					<c:if test="${loginUser == null}">
            			<li class ="userSelect"><a href="Member?command=login_form">로그인</a>/<a href="Member?command=join_form">회원가입</a></li>
					</c:if>
					<c:if test="${loginUser != null}">
	            		<li class ="userSelect"><a href="Member?command=user">${loginUser.username }</a>님  <a href="main?command=logout">로그아웃</a></li>
					</c:if>

	                <li class ="userSelect">알림</li>
	                <li class ="userSelect">주문/배송</li>
	                <li class ="userSelect">장바구니</li>
	            </ul>
	        </div>
	    </div>
	
	    <!-- 헤더 -->
	    <header>
	        <div id="header_logo"><a href="#"><img src="img/header_logo.png"></a></div>
	        <div id="header_cate"> 
	            <ul>
	                <li><a href="#">2024 텐텐다꾸</a></li>
	                <li><a href="#">프리오더</a></li>
	                <li><a href="#">신상품</a></li>
	                <li><a href="#">베스트</a></li>
	                <li><a href="#">할인특가</a></li>
	                <li><a href="#">기획전</a></li>
	                <li><a href="#">브랜드</a></li>
	            </ul>
	        </div>
	        <div id="header_search">
	            <input type="text" id="search" name="search" placeholder=" 12달 모두 행복할 스누피 칫솔 신상 출시">
	        </div>
	    </header>
	
	    <!-- 카테고리 네비게이션 -->
	    <nav>
	        <ul>
	            <li name ="cate_1"><a href="category.html">디자인문구</a></li>
	            <li name ="cate_2"><a href="#">디지털/핸드폰</a></li>
	            <li class="line" name ="cate_3"><a href="#">디자인가전</a></li>
	            <li name ="cate_4"><a href="#">가구/수납</a></li>
	            <li name ="cate_5"><a href="#">패브릭/생활</a></li>
	            <li name ="cate_6"><a href="#">데코/조명</a></li>
	            <li name ="cate_7"><a href="#">키친</a></li>
	            <li name ="cate_8"><a href="#">푸드</a></li>
	            <li name ="cate_9"><a href="#">패션의류</a></li>
	            <li name ="cate_10"><a href="#">패션잡화</a></li>
	            <li name ="cate_11"><a href="#">뷰티</a></li>
	            <li name ="cate_12" class="line"><a href="#">주얼리/시계</a></li>
	            <li name ="cate_13"><a href="#">Cat&amp;Dog</a></li>
	            <li name ="cate_14"><a href="#">토이/취미</a></li>
	            <li name ="cate_15"><a href="#">캠핑</a></li>
	        </ul>
	    </nav>
	
	    <!-- 카테고리 메뉴            ========================================== -->
	    <div id="wrap">
	        <div class="subWrap" id="cate_1">
	            <div class="subWrapUnit floatLeft">
	                <ul>
	                    <li class="bold"><a href='category.html'>다이어리/플래너</a></li>
	                    <li><a href='#'>다이어리 H</a></li>
	                    <li><a href='#'>오거나이저</a></li>
	                    <li><a href='#'>스케줄러/플래너</a></li>
	                    <li><a href='#'>달력</a></li>
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>노트/메모지</a></li>
	                    <li><a href='#'>베이직 노트 H</a></li>
	                    <li><a href='#'>양장 노트</a></li>
	                    <li><a href='#'>스프링 노트</a></li>
	                    <li><a href='#'>미니노트</a></li>
	                    <li><a href='#'>독서노트</a></li>
	                    <li><a href='#'>단어장 N</a></li>
	                    <li><a href='#'>수첩</a></li>
	                    <li><a href='#'>메모지</a></li>
	                    <li><a href='#'>기타 노트</a></li>
	                </ul>
	            </div>
	
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>데코레이션 H</a></li>
	                    <li><a href='#'>스탬프</a></li>
	                    <li><a href='#'>스티커 H</a></li>
	                    <li><a href='#'>테이프/다이모</a></li>
	                    <li><a href='#'>펀치</a></li>
	                    <li><a href='#'>선물 포장</a></li>
	                    <li><a href='#'>장식오너먼트</a></li>
	                    <li><a href='#'>포스터</a></li>
	                    <li><a href='#'>뱃지/와펜</a></li>
	                </ul>
	            </div>
	
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>필기류/필통</a></li>
	                    <li><a href='#'>필기구 H</a></li>
	                    <li><a href='#'>고급필기류 N</a></li>
	                    <li><a href='#'>필통</a></li>
	                    <li><a href='#'>필기구 브랜드샵 N</a></li>
	                </ul>
	            </div>
	
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>포토앨범/레코드북</a></li>
	                    <li class="bold"><a href='#'>카드/편지/봉투</a></li>
	                    <li class="bold"><a href='#'>파일/바인더</a></li>
	                    <li class="bold"><a href='#'>사무용품</a></li>
	                    <li class="bold"><a href='#'>데스크 정리/보관</a></li>
	                    <li class="bold"><a href='#'>디지털 문구 N</a></li>
	                    <li class="bold"><a href='#'>해외디자인문구</a></li>
	                    <li class="bold"><a href='#'>캐릭터 문구</a></li>
	                    <li class="bold"><a href='#'>미술도구</a></li>
	                    <li class="bold"><a href='#'>BOOK</a></li>
	                    <li class="bold"><a href='#'>SALE</a></li>
	                    <li class="bold"><a href='#'>EVENT</a></li>
	                </ul>
	            </div>
	        </div>
	
	        <div class="subWrap floatLeft" id="cate_2">
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>핸드폰</a></li>
	                    <li><a href='#'>갤럭시 H N</a></li>
	                    <li><a href='#'>아이폰 N</a></li>
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>핸드폰 주변기기 H</a></li>
	                    <li><a href='#'>갤럭시 케이스 N</a></li>
	                    <li><a href='#'>애플 케이스 H</a></li>
	                    <li><a href='#'>기타 핸드폰 케이스</a></li>
	                    <li><a href='#'>애플 보호필름</a></li>
	                    <li><a href='#'>갤럭시 보호필름</a></li>
	                    <li><a href='#'>기타 핸드폰 보호필름</a></li>
	                    <li><a href='#'>충전기</a></li>
	                    <li><a href='#'>케이블</a></li>
	                    <li><a href='#'>거치대/홀더</a></li>
	                    <li><a href='#'>기타 주변기기</a></li>
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>태블릿 PC</a></li>
	                    <li><a href='#'>갤럭시탭</a></li>
	                    <li><a href='#'>갤럭시탭 액세서리</a></li>
	                    <li><a href='#'>아이패드</a></li>
	                    <li><a href='#'>아이패드 액세서리 H</a></li>
	                    <li><a href='#'>태블릿PC 거치대</a></li>
	                    <li><a href='#'>기타 태블릿PC 액세...</a></li>
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>PC/노트북</a></li>
	                    <li><a href='#'>노트북</a></li>
	                    <li><a href='#'>PC</a></li>
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>PC/노트북 주변기기</a></li>
	                    <li class="bold"><a href='#'>마우스/키보드</a></li>
	                    <li class="bold"><a href='#'>game shop</a></li>
	                    <li class="bold"><a href='#'>스마트워치</a></li>
	                    <li class="bold"><a href='#'>IoT/생활</a></li>
	                    <li class="bold"><a href='#'>카메라</a></li>
	                    <li class="bold"><a href='#'>영상기기</a></li>
	                    <li class="bold"><a href='#'>음향기기</a></li>
	                    <li class="bold"><a href='#'>선물샵</a></li>
	                    <li class="bold"><a href='#'>SALE</a></li>
	                    <li class="bold"><a href='#'>EVENT</a></li>
	                </ul>
	            </div>
	        </div>
	
	        
	        <div class="subWrap floatRight" id="cate_9">
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>여성 아우터</a></li>
	                    <li><a href='#'>코트</a></li>
	                    <li><a href='#'>점퍼</a></li>
	                    <li><a href='#'>야상</a></li>
	                    <li><a href='#'>자켓</a></li>
	                    <li><a href='#'>패딩</a></li>
	                    <li><a href='#'>레인코트 N</a></li>
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>여성 드레스</a></li>
	                    <li><a href='#'>롱/미디 원피스 H</a></li>
	                    <li><a href='#'>미니 원피스</a></li>
	                    <li><a href='#'>레이어드 원피스</a></li>
	                    <li><a href='#'>민소매 원피스</a></li>
	                    <li><a href='#'>정장 원피스</a></li>
	                    <li><a href='#'>생활한복 N</a></li>
	                    <li><a href='#'>니트 원피스</a></li>
	                    <li><a href='#'>셀프웨딩 드레스 N</a></li>                    
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>여성 상의</a></li>
	                    <li><a href='#'>스웨트셔츠 N</a></li>
	                    <li><a href='#'>후드 N</a></li>
	                    <li><a href='#'>후드집업</a></li>
	                    <li><a href='#'>티셔츠 H</a></li>
	                    <li><a href='#'>니트/조끼</a></li>
	                    <li><a href='#'>가디건 N</a></li>
	                    <li><a href='#'>셔츠/블라우스</a></li>                    
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>여성 하의</a></li>
	                    <li><a href='#'>스커트</a></li>
	                    <li><a href='#'>팬츠 H</a></li>
	                    <li><a href='#'>레깅스</a></li>                    
	                </ul>
	            </div>
	            <div class="subWrapUnit">
	                <ul>
	                    <li class="bold"><a href='#'>남성 아우터</a></li>
	                    <li class="bold"><a href='#'>남성 상의</a></li>
	                    <li class="bold"><a href='#'>남성 하의</a></li>
	                    <li class="bold"><a href='#'>유아동 의류</a></li>
	                    <li class="bold"><a href='#'>라운지웨어 H</a></li>
	                    <li class="bold"><a href='#'>비치웨어 N</a></li>
	                    <li class="bold"><a href='#'>선물샵</a></li>
	                    <li class="bold"><a href='#'>SALE</a></li>
	                    <li class="bold"><a href='#'>EVENT</a></li>                    
	                </ul>
	            </div>
	        </div>
	    </div>
	    <!-- 카테고리 메뉴            ========================================== -->
	    <hr class="gray_hr">
	</body>
</html>