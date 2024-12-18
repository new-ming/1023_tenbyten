<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>tenbyten</title>
	<link rel="stylesheet" href="/tenbyten/css/member/joinForm.css">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="script/member.js"></script>
</head>
<body onload="showMessage()">

 <div class="container">
    
    <form action="Member" method="post" name="frm">
    <input type="hidden" name="command" value="join">
    <h3>필수항목</h3>
        <table id="Required">
            <tr>
                <td>
                	<input type="text" name="userid" placeholder="아이디" >
                	<input type="hidden" name="reid" size="20"> 
              		<input type="button" id="idCheck-btn" value="중복 체크" onclick="idCheck()">
                </td>
                <td>
                	3~15자의 영문/숫자를 조합하여 입력
                </td>
            </tr>
            <tr>
                <td><input type="password" name="pwd" id="pwd" placeholder="비밀번호" ></td>
            	<td>8-10자의 영문/숫자를 조합하여 입력</td>
            </tr>
            <tr>
            <td><input type="password" name="pwd_check" id="pwd_check" placeholder="비밀번호 확인" onkeyup="pwdCheck()"></td>
                <td id="checkText"></td>    
            </tr>
            <tr>
            	 <td>
                    <input type="text" class="phone-input" name="phone1" maxlength="3" placeholder="전화번호">
                    <input type="text" class="phone-input" name="phone2" maxlength="4" >
                    <input type="text" class="phone-input" name="phone3" maxlength="4" >
                </td>
                <td></td>              
            </tr>
			<tr>
				<td>
					<input type="radio" name="admin" value="0" onchange="toggleAdminCodeInput()" checked="checked" >일반회원
					<input type="radio" name="admin" value="1" onchange="toggleAdminCodeInput()" >관리자
				</td>
				<td></td>
			</tr>
            <tr id="admin_view" style="display: none;">

                <td>
                    <input type="text" name="admin_code" placeholder="인증번호 6자리를 입력하세요">      
                </td>
                 <td name="admin_text">
                 	<button type="button" name="admin_btn" onclick="admincheck()">확인</button>
                 	<input type="hidden" name="abmin_check" value="0">
                 </td>
            </tr>
		</table>


        <h3>선택항목</h3>
		<table id="Select">
            <tr>
                <td><input type="text" id="username" name="username" placeholder="성명"></td>
            	<td>한글 15자, 영문 30자까지 가능합니다</td>
            </tr>
            <tr>
                <td><input type="text" id="birth" name="birth" placeholder="생년월일"></td>
                <td>8자리로 입력하십시오.</td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" class="submit-btn" value="회원가입 신청하기" onclick="return joinCheck()">
                </td>
            </tr>
        </table>
    </form>
</div>
 
</body>
</html>
