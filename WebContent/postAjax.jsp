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
<button onclick="postAjax()">클릭</button>

<script>
	function postAjax(){
		
// post로 key & value 데이터를 전송하고 응답을 json으로 받아보기     
	$.ajax({
		type : "POST",         // get 방식이라서 쿼리 스트링으로 보내야함
		url : "http://localhost:8090/ajax/ajax2",
		data : "username=cony&userpassword=1234",
		//contentType: "application/x-www-form-urlencoded", // 사실 생략 가능하다 왜냐하면 브라우저에 보내는게 아니고 내가 만든 서블릿에서 보내니깐 다 안다 응답할 때만 적으면 됨
		//dataType : "text" //응답되는 데이터를 자바스크립트로 파싱하는 용도!! , 생략가능
		dataType : "json"
	})
	.done(function(result){
		console.log(result);
		console.log(result.username);
		
	})  // ajax 통신 완료 후에 정상이면 done이 가지고 있는 함수 호출
	.fail(function(error){
		
	}); // ajax 통신 완료 후에 비정상이면 fail이 가지고 있는 함수 호출

	}
	</script>
</body>
</html>