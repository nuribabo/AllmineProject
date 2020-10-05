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


@WebServlet("/searchWord_controller")
public class searchWord_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String search =request.getParameter("sword");
		search.replace(" ", ""); //띄어쓰기 없애주는거임;;
		 		System.out.println(search);
		 		
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		
		ProductDAO dao = new ProductDAO();
		list = dao.select_by_name(search);
		System.out.println("컨트롤러");
		
		
		if(list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("selectlist", list);
		}else {
			System.out.println("검색실패");
		}response.sendRedirect("oneshop.jsp");
	}

}
