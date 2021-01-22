package com.cos.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ajax1")
public class Ajax1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Ajax1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		
		System.out.println("userName: "+userName);
		System.out.println("userPassword : " + userPassword);
		
		//응답하면 !!
		PrintWriter out = response.getWriter();
		
		out.print("<hy<");
	
		out.flush();
	}

	/**
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
