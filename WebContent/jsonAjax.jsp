<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<button onclick="jsonajax()"></button>

<script>
	// contentType 과 dataType 의 차이점은?
	function jsonajax(){
		$.ajax({
			type : "POST",
			url : "http://localhost:8090/lectureEvaluation/ajax3",
			data : "json데이터",
			contentType : "application/json",
			dataType: "json"
			// 내 웹서버와 주고 받을 때는 상관없는데, 만약에 네이버나 구글서버에 보내는 거라면??
			// 그래서 dataType을 적어주는게 맞다.
			
		}).done().fail()
	}
</script>
</body>
</html>