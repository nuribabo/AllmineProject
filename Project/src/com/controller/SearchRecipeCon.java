package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.RecipeDAO;
import com.model.RecipeDTO;


@WebServlet("/SearchRecipeCon")
public class SearchRecipeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String search =request.getParameter("sword");
		search.replace(" ", ""); //���� �����ִ°���;;
		System.out.println(search);
		 		
		ArrayList<RecipeDTO> list = new ArrayList<RecipeDTO>();
		
		RecipeDAO dao = new RecipeDAO();
		list = dao.select_by_name(search);
		System.out.println("��Ʈ�ѷ�");
		
		
		if(list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("selectlist", list);
		}else {
			System.out.println("�˻�����");
		}response.sendRedirect("onerecipe_blog.jsp");
		
		
		
		
	}

}
