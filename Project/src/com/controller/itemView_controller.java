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


@WebServlet("/itemView_controller")
public class itemView_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<ProductDTO> list = null;
		
		ProductDAO dao = new ProductDAO();
		String cnt = request.getParameter("name");
		
		if(cnt == "all") {
			list = dao.select_by_All();
			System.out.println("allÀÌ´ÙÀÌ»ö±â¾ß");
		}
		else {
			list = dao.select_by_Fruit(cnt);
		}
		
		if(list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
		}else {
			System.out.println("¾øÂÇ¿°");
		}
		response.sendRedirect("shop1.jsp?page_num=1&name="+cnt);
		
		
	}

}
