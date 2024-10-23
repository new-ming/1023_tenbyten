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
    <div class="info-text">
        <p>한번 등록한 상담내용은 수정이 불가능합니다. 수정을 원하시는 경우, 삭제 후 재등록 하셔야 합니다.</p>
        <p>1:1 상담은 24시간 신청가능하며 접수된 내용은 빠른 시간내에 답변을 드리도록 하겠습니다.</p>
        <p>문의하신 1:1 상담은 고객님의 메일로도 확인하실 수 있습니다.</p>
    </div>

    <a href="Service?command=service_board_update_form&board_no=${sbVo.board_no }" class="btn-submit mini">수정하기</a>
    <a href="Service?command=service_board_delete&board_no=${sbVo.board_no }" class="btn-submit mini">삭제하기</a>
	<br>
    <table class="table view" >
   		<tr>
   			<th>문의분야</th>
   			<td>${sbVo.servicetype}</td>   			
   			<th>입력일</th>
   			<td>${sbVo.writeDate}</td>
   		</tr>
   		<tr>
   			<th>이메일</th>
   			<td>${sbVo.email}</td>   			
   			<th>전화번호</th>
   			<td>${sbVo.phone}</td>
   		</tr>
   		<tr>
   		   	<th>제목</th>
			<td colspan="3">${sbVo.title}</td>   	
   		</tr>
   		<tr>
   			<td colspan="4" id="content">
	   			<div class = "textWrap">
	   				${sbVo.content}
	   			</div>
	   			<div class="imgWrap">
	   				<c:if test="${not empty  sbVo.imgUrl1}">
		   				<div class = "imgbox">
		   					<img src="/tenbyten/img/service/${sbVo.imgUrl1}" >
		   				</div>
	   				</c:if>
					<c:if test="${not empty  sbVo.imgUrl2}">
		   				<div class = "imgbox">
		   					<img src="/tenbyten/img/service/${sbVo.imgUrl2}" >
		   				</div>
		   			</c:if>
	   			</div>
   			</td>
   		</tr>
    </table>


</div>

</body>
</html>
