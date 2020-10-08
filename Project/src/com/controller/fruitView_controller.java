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


@WebServlet("/fruitView_controller")
public class fruitView_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<ProductDTO> flist ;
		ProductDAO dao = new ProductDAO();
		String cnt = request.getParameter("name");
		if(cnt == null) {
			flist = dao.select_by_All();
		}else {
		flist = dao.select_by_Fruit(cnt);
		}
		
		if(flist != null) {
			HttpSession session = request.getSession();
			session.setAttribute("flist", flist );
		}else {
			System.out.println("¾øÂÇ¿°");
		}
		response.sendRedirect("fruitshop.jsp");
	}

}
