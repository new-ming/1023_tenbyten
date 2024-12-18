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

    <a href="Service?command=service_board_write_form" class="btn-submit">1:1 상담 신청하기</a>

    <table class="table">
        <thead>
            <tr>
                <th>구분</th>
                <th>상담종류</th>
                <th>상담명</th>
                <th>등록일</th>
                <th>상태</th>
            </tr>
        </thead>
        <tbody>
        	<c:choose >
        		<c:when test="${sbVoList == null}">
	        		<tr>
		                <td colspan="5" class="no-records">문의하신 1:1 상담 내역이 없습니다.</td>
		            </tr>
        		</c:when>
				<c:otherwise>
					<c:forEach var="sbVo" items="${sbVoList}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${sbVo.servicetype}</td>
							<td><a href="Service?command=service_board_view&board_no=${sbVo.board_no }">${sbVo.title}</a></td>
							<td>${sbVo.writeDate}</td>
							<td>${sbVo.state}</td>
						</tr>
	
					</c:forEach>
				</c:otherwise>
        	</c:choose>
    

        </tbody>
    </table>

    <div class="pagination">
        <a href="#">&laquo;</a>
        <a href="#" class="current-page">1</a>
        <a href="#">&raquo;</a>
    </div>
</div>

</body>
</html>

