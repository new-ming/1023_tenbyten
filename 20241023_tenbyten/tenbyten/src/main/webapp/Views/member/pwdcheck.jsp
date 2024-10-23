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
                	<c:if test="${check == 'user_update'}">
                		<span>HOME > MY TENBYTEN > MY 회원정보 > 개인정보 수정</span>
                	</c:if>
                    <c:if test="${check == 'user_delete'}">
                		<span>HOME > MY TENBYTEN > MY 회원정보 > 회원탈퇴</span>
                	</c:if>
                </div>
            </header>

            <section class="password-section">
				<c:if test="${check == 'user_update'}">
					<h2>개인정보 수정</h2>
				</c:if>
				<c:if test="${check == 'user_delete'}">
					<h2>회원탈퇴</h2>
				</c:if>
                <form class="password-form" name="frm" action="Member" method="post">
                	<input type="hidden" name="command" value="pwd_check_result">
                	<input type="hidden" name="check" value="${check}">
                    <label for="password">비밀번호 확인</label>
                    <input type="password" id="password" name="pwd" placeholder="비밀번호를 입력하세요" required>
                    ${message}
                    <button type="submit">확인</button>
                    <p class="info">회원님의 개인정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.</p>
                    <p class="warning">해외망에서 개인정보를 신청하셨을 경우 해킹방지 등의 목적으로 저장된 비밀번호는 조회 및 변경이 불가능합니다.</p>
                </form>
            </section>
        </main>
    </div>

</body>
</html>
