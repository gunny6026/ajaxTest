# POST 방식

```javascript
$.ajax({
		type : "POST",         
		url : "http://localhost:8090/ajax/ajax2",
		data : "username=cony&userpassword=1234",
		//contentType: "application/x-www-form-urlencoded", //생략가능
		dataType : "json"
	})
	.done(function(result){
		console.log(result);
		console.log(result.username);
		
	})  // ajax 통신 완료 후에 정상이면 done이 가지고 있는 함수 호출
	.fail(function(error){
		
	}); // ajax 통신 완료 후에 비정상이면 fail이 가지고 있는 함수 호출

	}

```