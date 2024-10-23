<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>tenbyten</title>
	<link rel="stylesheet" href="/tenbyten/css/member/loginForm.css">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="/tenbyten/script/member.js"></script>
</head>




<body>

	<div class="container">
		<div class="login-section">
			<!-- 회원 로그인 -->
			<div class="member-login">
				<h2>회원 로그인</h2>
				<form action="Member"  method="post" name="frm">
					<input type="hidden" name="command" value="login_check">
					<input type="text" name="userid" value="${userid }" placeholder="아이디">
					<input type="password" name="pwd" placeholder="비밀번호">
					<input type="submit" class="login-btn" value="로그인" onclick = "return loginCheck()">
					<br><br>
					<div  class="id-container">
						<p>아이디 저장 <input type="checkbox" id="save-id"></p>
						<p>
						<a href="#">아이디/비밀번호 찾기</a>
						</p>
					</div>
					<br>
					<div class="message">${message }</div>
					<div class="social-login">
						<h3>다음 계정으로 로그인</h3>
						<img src="/tenbyten/img/icon/kakaoTalk_logo.png" alt="Kakao"> 
						<img src="/tenbyten/img/icon/google_logo.png" alt="Google"> 
						<img src="/tenbyten/img/icon/naver_logo.png" alt="Naver">
					</div>
				</form>
			</div>
				


			<!-- 비회원 로그인 -->
			<div class="non-member-login">
				<h2>비회원 로그인</h2>
				<form method="post" action="" name="frm2">
					<input type="text" id="order-number" placeholder="주문번호">
					<input type="text" id="email" placeholder="주문고객 이메일">
					<button class="non-member-btn">주문배송조회</button>
					<br>
					<div class="register">
						<p>아직 텐바이텐 회원이 아니세요?</p>
						<input type="button" class="register-btn" value="텐바이텐 회원가입" onclick="location.href='Member?command=join_form'">
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>
