package com.cos.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ajax2")
public class Ajax2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Ajax2() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	/**
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contentType = request.getContentType();
		System.out.println("contentType은: " +contentType);
		
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		
		System.out.println("username : " +username);
		System.out.println("userpassword : " +userpassword);
			String jsonData = "\r\n"
			+ "{\"username\" : \"ssar\" , \"userpassword\" : \"123213213\"}";
		
		
		PrintWriter out = response.getWriter();
		out.print(jsonData);
		//out.print(username);
		out.flush();
	
	}

}
