<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>tenbyten</title>

	</head>

	<body>
		<script type="text/javascript">
			console.log("${result}")
			
			if("${result}" == 1){
				alert("변경되었습니다.");
				location.href = "Member?command=user_update_form&num=${num}";
			} else if ("${check}" == 2){
				alert("변경에 실패했습니다.");
				location.href = "Member?command=user_update_form&num=${num}";
			}
		
		</script>
	</body>
</html>