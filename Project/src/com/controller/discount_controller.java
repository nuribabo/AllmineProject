package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.ProductDAO;
import com.model.ProductDTO;

@WebServlet("/discount_controller")
public class discount_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<ProductDTO> dlist ;
		ProductDAO dao = new ProductDAO();
		String check = request.getParameter("check");			
		
		if(check.equals("dh")) {
			dlist = dao.select_by_discount_rate_Desc();
		}else if(check.equals("dl")) {
			dlist = dao.select_by_discount_rate_Asc();
		}else if (check.equals("ph")) {
			dlist = dao.select_by_Price_Desc();
		}else{
			dlist = dao.select_by_Price_Asc();
		}
		
		
	
	   if(dlist != null) {
			HttpSession session = request.getSession();
			session.setAttribute("list", dlist );
		}else {
			System.out.println("¾øÂÇ¿°");
		}
		response.sendRedirect("shop1.jsp?page_num=1");
	}
	
}
