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


@WebServlet("/Recipe_Filter")
public class Recipe_Filter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
	
	/*
	System.out.println(check);
	

	HttpSession session = request.getSession();
	session.setAttribute("rfilter", ardao );
	System.out.println("�� �׷���?");
	response.sendRedirect("recipe_blog.jsp");

	}*/
}
}
