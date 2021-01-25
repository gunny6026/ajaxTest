package com.cos.ajax;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@WebServlet("/ajax3")
public class Ajax3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Ajax3() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contentType = request.getContentType();
		
		  response.setContentType("application/json; charset=UTF-8");

		// 요청이 Json으로 들어왔기 때문에 request.getParameter로 받을 수 없다.
		BufferedReader br = request.getReader();
		// 원형 데이터로 http body 데이터로 순수하게 읽기
		// request.getParameter는 순수하게 읽지않고 파싱해서 읽는다.
		String requestData = br.readLine();
		System.out.println(contentType);
		System.out.println(requestData);
		
		Gson gson = new Gson();
		// gson.fromJson()  => json을 자바 오브젝트로
		// gson.toJson() => 자바 오브젝트를 json으로
		
		//UserDto userDto = gson.fromJson(requestData, UserDto.class);
	
		//System.out.println(userDto);
		
		User user = new User();
		user.setId(1);
		user.setUsername("love");
		user.setPassword("1234");
		user.setPhone("0102222");
		
		String userJson = gson.toJson(user);
		System.out.println("userJson: " + userJson);
		PrintWriter out = response.getWriter();
		out.print(userJson);
		out.flush();
				
	
	
	}

}
