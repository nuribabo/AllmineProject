package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CartDAO;


@WebServlet("/Cart")
public class CartRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String product_id = request.getParameter("product_id");
		
		
		
		
		
		CartDAO dao = new CartDAO();
		int cnt = dao.remove(product_id);
		
		if(cnt> 0) {
			System.out.println("부분삭제 완료");
		}else {
			System.out.println("부분삭제 실패");
			
		}
		response.sendRedirect("main.jsp#contact");
		
		
		
	}

}
