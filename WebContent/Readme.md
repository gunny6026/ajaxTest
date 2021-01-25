# 자바스크립트 오브젝트 & json

자바스크립트 오브젝트(javascript)와 json은 생긴 것이 너무 비슷하다. <br/> 그래서 둘을 잘 구분해야한다.

```javascript
var data ={
		username : "ssar",
		password: "1234"
	}

	console.log(data);
	console.log(JSON.stringify(data));
```

결과는 ?
![image](https://user-images.githubusercontent.com/66653324/105654374-398bc780-5f01-11eb-93a8-8c219d20e0b4.png)


1번이 자바스크립트 오브젝트 : value 값만 쌍따옴표로 되어있다.
2번이 json :  모두 쌍따옴표로 되어있다.




### 파싱

__JSON.stringify()__ :  <br/>
자바스크립트 오브젝트 -> JSON <br/>(json 타입이 된다는게 아니라 json 처럼 생긴 문자열이 된다)



__JSON.parse()__ : <br/>

JSON -> 자바스크립트 오브젝트