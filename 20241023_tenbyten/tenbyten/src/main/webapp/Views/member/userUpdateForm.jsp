<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tenbyten</title>
    <link rel="stylesheet" href="/tenbyten/css/member/user.css">
    <link rel="stylesheet" href="/tenbyten/css/member/updateForm.css"> <!-- CSS 파일 연결 -->
	<script type="text/javascript" src="script/member.js"></script>

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
            
            <div class="container">
			    
			    <form action="Member" method="post" name="frm">
			    <input type="hidden" name="command" value="user_update">
			    <input type="hidden" name="user_no" value="${mVo.user_no }">
			    <h3>필수항목</h3>
			        <table id="Required">
			            <tr>
			            
			            	<td>아이디</td>
			                <td>
			                	${mVo.userid}
			                </td>
			            	
			            </tr>
			            <tr>
			                <td>비밀번호</td>
			            	<td><input type="password" name="pwd" id="pwd" placeholder="비밀번호" ><span>8-10자의 영문/숫자를 조합하여 입력</span></td>
			            </tr>
			            <tr>
			            	<td>비밀번호 확인</td>
			                <td>
			                	<input type="password" name="pwd_check" id="pwd_check" placeholder="비밀번호 확인" onkeyup="pwdCheck()">
			                	<span id="checkText"></span>
			                </td>    
			            </tr>
			            <tr>
			           		<td>전화번호</td>  
			            	 <td>
			                    <input type="text"name="phone" maxlength="13" value="${mVo.phone}">
			                	<span></span>
			                </td>
			                            
			            </tr>
						<tr>
							<td>회원종류</td>
							<td>
								<c:if test="${mVo.admin == 0}">
									일반회원 입니다.
								</c:if>
								<c:if test="${mVo.admin == 1}">
									관리자 입니다.
								</c:if>
							</td>
							
						</tr>
			
					</table>
					<!-- 선택항목 -->
			        <h3>선택항목</h3>
					<table id="Select">
			            <tr>
			                <td>이름</td>
			                <td><input type="text" name="username" value="${mVo.username}"></td>
			            </tr>
			            <tr>
			                <td>이메일</td>
			                <td><input type="text"  name="email" value="${mVo.email}"></td>
			            </tr>
			            <tr>
			            	<td>생년월일</td>
			                <td><input type="text" name="birth" value="${mVo.birth}"></td>
			            </tr>    
			            <tr>
			                <td colspan="2">
			                    <input type="submit" class="submit-btn" value="수정하기" onclick="return updateCheck()">
			                </td>
			            </tr>
			        </table>
			    </form>
			</div>

        </main>
    </div>

</body>
</html>
