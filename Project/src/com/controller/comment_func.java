package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CommentVO;

@WebServlet("/comment_func")
public class comment_func extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	
	String a = request.getParameter("c_name");
	String b = request.getParameter("c_date");
	String c = request.getParameter("c_message");
	System.out.println(a);
	System.out.println(b);
	System.out.println(c);
	CommentVO cvo = new CommentVO(a,b,c);
	
	response.sendRedirect(request.getRequestURI());
	
	}

	
	
}

