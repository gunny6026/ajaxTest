# application/json


```javascript
var data ={
		username : "ssar",
		password: "1234"
	}
	var jsonData = JSON.stringify(data);
	
	function jsonajax(){
		$.ajax({
			type : "POST",
			url : "http://localhost:8090/ajax/ajax3",
			data : jsonData,
			contentType : "application/json",
			dataType: "json"	
		}).done(function(result){
			var a = JSON.parse(result);
			console.log(result);
			console.log(a)
		}).fail(function(error){
			
		})
	}

```

json 형식으로 데이터를 보냈다. <br/>
contentType을 application/json으로 설정하고
데이터를 전송하였다. <br/>

서블릿에서 json으로 잘 받았다. <Br/>

contentType을 생략해도 잘 받을 수 있었다.


-------------

Json으로 파싱하지 않고 자바스크립트 오브젝트로 데이터를 전송하였다. <br/>
`Ajax3.java` <br/>
응답받는 contentType은 x-www-form-urlencoded 이고
데이터 역시 키 값 형태이다.  <br/>

만약 응답 받는쪽에서 json으로 받는다고 한다면?? <br/>

```java
 response.setContentType("application/json; charset=UTF-8");
 ```
 
 그래도 여전히 key & value 값이다.
