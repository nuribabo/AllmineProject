package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CartDAO;

@WebServlet("/cart_controller")
public class Cart_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("EUC-KR");
	String itemid = request.getParameter("name");
	CartDAO dao = new CartDAO();
	 int cnt = dao.insert(itemid);
	
	
	
	}

}
