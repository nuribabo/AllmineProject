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

@WebServlet("/pagenumber")
public class pagenumber extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<ProductDTO> plist ;
		ProductDAO dao = new ProductDAO();
		String cnt = request.getParameter("num");
		if(cnt == null) {
			plist = dao.select_by_All();
		}else {
		plist = dao.pagenumber(cnt);
		}
		
		if(plist != null) {
			HttpSession session = request.getSession();
			session.setAttribute("flist", plist );
		}else {
			System.out.println("¾øÂÇ¿°");
		}
		response.sendRedirect("fruitshop.jsp");
	}

}
