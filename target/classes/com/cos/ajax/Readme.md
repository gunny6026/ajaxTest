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

## 정리

#####  dataType과 함께 요청, 응답에 대한 타입을 이해할수 있다. 헷갈릴 때 마다 읽어보자

`dataType`  <br/>

응답 받을 데이터 형식을 지정하겠다.!!!!

```javascript
$.ajax({
		type : "POST",         
		url : "http://localhost:8090/ajax/ajax2",
		data : "username=cony&userpassword=1234",
		//dataType : "json"  1.
		//dataType: "text" 2.
		
	})
	.done(function(result){
		console.log(result);
		console.log(result.username);
		

```
1.
json으로 응답을 받겠다. <br/>
응답해주는 서블릿에서는 내가 보낸 username으로 다시 응답을 하였다.<br/>
결과를 콘솔에 찍어서 확인 해보았다.<br/>
결과는? 콘솔에 아무것도 없다.

2.
text으로 응답을 받겠다. <br/>
응답해주는 서블릿에서는 내가 보낸 username으로 다시 응답을 하였다.<br/>
결과를 콘솔에 찍어서 확인 해보았다.<br/>
결과는? text로 응답을 받을 수 있으니 cony가 콘솔에 찍혔다.

3.dataType을 생략하고 데이터를 보냈다. <br/>
응답해주는 서블릿에서는 내가 보낸 username으로 다시 응답을 하였다.<br/>
결과를 콘솔에 찍어서 확인 해보았다.<br/>
결과는? text로 응답을 받을 수 있으니 cony가 콘솔에 찍혔다.


----

```javascript
console.log(result)
console.log(result.usernmae)
```

1. 
json으로 응답을 받겠다. <br/>
응답해주는 서블릿에서는  json으로  응답을 하였다.<br/>
결과를 콘솔에 찍어서 확인 해보았다.<br/>
결과는? 당연히 객체로 응답 오고, 그 객체에 있는 키 값이 모두 응답왔다. 


2.
text로 응답을 받겠다. <br/>
응답해주는 서블릿에서는  json으로  응답을 하였다.<br/>
결과를 콘솔에 찍어서 확인 해보았다.<br/>
결과는? json으로 보이지만 그냥 문자열이고 당연히 객체의 키 값은 undefined이다. 객체로 받는다고 안했잖아.

3. 
dataType을 생략하고 응답을 받겠다. <br/>
응답해주는 서블릿에서는  json으로  응답을 하였다.<br/>
결과를 콘솔에 찍어서 확인 해보았다.<br/>
결과는? json으로 데이터를 응답해줬지만 , dataType을 생략해줬기 때문에 그냥 text 형식으로 받았다. 

---- 
data에  : username=cony &  userpassword =1234 보냈기 때문에 <br/>
contentType을 x-www-form-urlencoded로 지정해주지 않아도
받는 Ajax2 서블릿 입장에서는  contentType은 x-www-form-urlencoded로 받는다.

그리고 응답을 보낼때 json 형식을 담아서
out.print안에 데이터를  담으면 당연히 json이 담긴다.

 