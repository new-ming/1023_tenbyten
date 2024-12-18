<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tenbyten</title>
    <link rel="stylesheet" href="/tenbyten/css/member/serviceBoard.css">

</head>
<body>

<div class="service-board-container">
    <h1>1:1 상담</h1>


    <a href="Service?command=service_board" class="btn-submit mini">돌아가기</a>
    <a href="Service?command=service_board_delete&board_no=${sbVo.board_no }" class="btn-submit mini">삭제하기</a>
	<br>
	<form action="Service" method="post" enctype="multipart/form-data" name="frm">
		<input type="hidden" name="command" value="service_board_update">
		<input type="hidden" name="board_no" value="${sbVo.board_no}">
	    <table class="table view" >
	   		<tr>
	   			<th>문의분야</th>
	   			<td>${sbVo.servicetype}</td>   			
	   			<th>입력일</th>
	   			<td>${sbVo.writeDate}</td>
	   		</tr>
	   		<tr>
	   			<th>이메일</th>
	   			<td><input type="text" name="email" value="${sbVo.email}"></td>   			
	   			<th>전화번호</th>
	   			<td><input type="text" name="phone" value="${sbVo.phone}"></td>
	   		</tr>
	   		<tr>
	   		   	<th>제목</th>
				<td colspan="3"><input type="text" name="title" value="${sbVo.title}"></td>   	
	   		</tr>
	   		<tr>
	   			<td colspan="4" id="content">
	   				<textarea rows="10" cols="50" name="content" id="content">${sbVo.content}</textarea>
	   			</td>
	   		</tr>
	   		
	   		
	   		
	   		<tr>
	   			<th class="simgbox">	
	   				<c:if test="${not empty  sbVo.imgUrl1}">	
	 					<div class = "simgbox">
	   						<img src="/tenbyten/img/service/${sbVo.imgUrl1}" >
	   					</div>
   					</c:if>
   				</th>
	   			<td>
	   				<input type="file" name="imgUrl1">
	   				<input type="hidden" name="nonmakeImg1" value="${sbVo.imgUrl1}">
	   			</td>   			
	   			<th class="simgbox">
	  				<c:if test="${not empty  sbVo.imgUrl2}">
		   				<div class = "simgbox">
		   					<img src="/tenbyten/img/service/${sbVo.imgUrl2}" >
		   				</div>
		   			</c:if>
	   			</th>
	   			<td>
	   				<input type="file" name="imgUrl2" >
	   				<input type="hidden" name="nonmakeImg2" value="${sbVo.imgUrl2}">
	   			</td>
	   		</tr>
	    </table>
	    <input type="submit" value="저장하기" class="btn-submit" onclick="return serviceBoardCheck()">
	</form>

</div>

</body>
</html>
