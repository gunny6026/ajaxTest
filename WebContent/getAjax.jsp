<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>
<button onclick="getAjax()">클릭</button>

<script>
	function getAjax(){
		
// get key&value 데이터를 전송하고 응답을 text/plain을 받을예정     
	$.ajax({
		type : "get",         // get 방식이라서 쿼리 스트링으로 보내야함
		url : "http://localhost:8090/ajax/ajax1?userName=ssar&userPassword=12345",
		//data : get은 전송한 http의 body가 없음
		// contentType: 전송할 data가 업스니깐 그 data를 설명할 필드가 필요없음
		dataType : "text" //응답되는 데이터를 자바스크립트로 파싱하는 용도!! , 생략가능
	})
	.done(function(result){
		alert(result)
		
	})  // ajax 통신 완료 후에 정상이면 done이 가지고 있는 함수 호출
	.fail(function(error){
		
	}); // ajax 통신 완료 후에 비정상이면 fail이 가지고 있는 함수 호출

	}
	</script>
</body>
</html>