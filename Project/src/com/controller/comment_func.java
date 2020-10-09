package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CommentVO;
import com.model.MemberDTO;

@WebServlet("/comment_func")
public class comment_func extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	request.setCharacterEncoding("EUC-KR");
	
	HttpSession session = request.getSession(); 
	MemberDTO account = (MemberDTO)session.getAttribute("info"); 
	String a = account.getName();
	
	String pattern = "yyyy.MM.dd";
	SimpleDateFormat time = new SimpleDateFormat(pattern); 
	String now_day = time.format(new Date());
	String b = now_day;
	
	String c = request.getParameter("c_message");
	System.out.println(a);
	System.out.println(b);
	System.out.println(c);
	CommentVO cvo = new CommentVO(a,b,c);
	
//	�������� ������߉�, ������ �۾��ϴ������� url �޾Ƽ�, �ٽ� ���� url�� �����ְ� commentary ���� �߰�
	session.setAttribute("Comment", cvo);
	response.sendRedirect("recipe_blog.jsp");
	
	}

	
	
}

