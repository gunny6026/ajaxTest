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
<button onclick="jsonajax()">클릭</button>

<script>
	// contentType 과 dataType 의 차이점은?
			
	var data ={
		username : "ssar",
		password: "1234"
	}
	// JSON.stringify() => 자바스크립트 오브젝트를 JSON으로 변경
	// Json 타입이 된다느게 아니라 json 처럼 생긴 문자열이 된다는 말이다.
	// JSON.parse() => JSON을 자바스크립트 오브젝트로 변경
	console.log(data);
	console.log(JSON.stringify(data));
	
	var jsonData = JSON.stringify(data);
	
	//json을 전송해야함 
	function jsonajax(){
		$.ajax({
			type : "POST",
			url : "http://localhost:8090/ajax/ajax3",
			//data :"username" :+username+,"password" : +password+,
			//data : data,
			data : jsonData,
			// contentType은 야 이 데이터 json이다~ 라고 알려주는거
			//contentType : "application/json",
			dataType: "json"
			// 내 웹서버와 주고 받을 때는 상관없는데, 만약에 네이버나 구글서버에 보내는 거라면??
			// 그래서 dataType을 적어주는게 맞다.
			
		}).done(function(result){
			//console.log(JSON.parse(result));
			console.log(result);
			//console.log(a)
		}).fail(function(error){
			
		})
	}
</script>
</body>
</html>