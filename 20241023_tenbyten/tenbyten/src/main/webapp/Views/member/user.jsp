<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tenbyten</title>
    <link rel="stylesheet" href="/tenbyten/css/member/user.css"> <!-- CSS 파일 연결 -->

</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="profile">
                <p>Hello, ${loginUser.username} 님</p>
                <div class="profile-img">
                    <img src="/tenbyten/img/icon/defaltProfile.png" alt="Profile Image">
                </div>
                <button>Edit</button>
            </div>

            <div class="user-info">
			    <ul>
			        <li><p>4장</p>쿠폰</li>
			        <li><p>0p</p>마일리지</li>
			        <li><p>0원</p>예치금</li>
			        <li><p>0원</p>기프트카드</li>
			    </ul>
            </div>

            <nav class="quick-menu">
                <ul>
                    <li>당첨안내</li>
                    <li>반품/환불</li>
                    <li><a href="Service?command=service_board">1:1 문의</a></li>
                    <li><a href="Member?command=pwd_check&check=user_update">개인정보 수정</a></li>
                    <li><a href="Member?command=pwd_check&check=user_delete">회원 탈퇴</a></li>
                </ul>
            </nav>
        </aside>

        <main class="content">
            <header>
                <h1>MY 10X10</h1>
                <div class="breadcrumb">
                    <span>HOME > MY TENBYTEN</span>
                </div>
            </header>

				
				<c:choose>
					<c:when test="${page == 'service_borad'}">
						<jsp:include page="../service/serviceBoard.jsp"></jsp:include>
					</c:when>
					<c:when test="${page == 'service_broad_view'}">
						<jsp:include page="../service/serviceBoardView.jsp"></jsp:include>
					</c:when>	
					<c:when test="${page == 'service_board_update_form'}">
						<jsp:include page="../service/serviceBoardUpdateForm.jsp"></jsp:include>
					</c:when>	
					<c:when test="${page == 'service_board_write_form'}">
						<jsp:include page="../service/serviceBoardWriteForm.jsp"></jsp:include>
					</c:when>					
				</c:choose>
            
            
        </main>
    </div>

</body>
</html>
