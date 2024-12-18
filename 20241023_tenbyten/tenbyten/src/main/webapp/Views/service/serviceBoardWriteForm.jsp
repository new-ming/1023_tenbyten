<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tenbyten</title>
    <link rel="stylesheet" href="/tenbyten/css/member/serviceBoard.css">
    <script type="text/javascript" src="script/service.js"></script>

</head>
<body>

<div class="service-board-container">
    <h1>1:1 상담</h1>


    <a href="Service?command=service_board" class="btn-submit mini">돌아가기</a>

	<br>
	<form action="Service" method="post" enctype="multipart/form-data" name="frm">
		<input type="hidden" name="command" value="service_board_write">
	    <table class="table view" >
	   		<tr>
	   			<th>문의분야</th>
	   			
	   			<td >
	   				<select name="servicetype">
	   					<option value="배송문의">배송문의</option>
	   					<option value="상품문의">상품문의</option>
	   					<option value="교환/환불">교환/환불</option>
	   					<option value=기타문의>기타문의</option>
	   				</select>
	   			</td>   	
	   			<th></th>	
	   			<td></td>	

	   		</tr>
	   		<tr>
	   			<th>이메일</th>
	   			<td><input type="text" name="email" value="${mVo.email}"></td>   			
	   			<th>전화번호</th>
	   			<td><input type="text" name="phone" value="${mVo.phone}"></td>
	   		</tr>
	   		<tr>
	   		   	<th>제목</th>
				<td colspan="3"><input type="text" name="title" id="title"></td>   	
	   		</tr>
	   		<tr>
	   		   	<td colspan="4" id="content">
					<textarea rows="10" cols="50" name="content" id="content"></textarea>
				</td>   	
	   		</tr>
	   		<tr>
	   			<th>이미지1</th>
	   			<td><input type="file" name="imgUrl1"></td>   			
	   			<th>이미지2</th>
	   			<td><input type="file" name="imgUrl2"></td>
	   		</tr>
	   		<tr>
	   		   	<td colspan="4" ><input type="submit" value="저장하기" class="btn-submit" onclick="return serviceBoardCheck()"></td>   	
	   		</tr>
			
	    </table>
	    
	</form>

</div>

</body>
</html>
