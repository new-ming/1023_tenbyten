<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>tenbyten</title>
		
	</head>
	
	<body>
		<script type="text/javascript">
			console.log("${check}")
			
			if("${check}" == 'user_update'){
				alert("확인되었습니다.");
				location.href = "Member?command=user_update_form&num=${num}";
			} else if ("${check}" == 'user_delete'){
				alert("삭제되었습니다.");
				location.href = "Member?command=user_delete&num=${num}";
			}
		
		</script>
	</body>
</html>