package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CartDAO;
import com.model.CartDTO;
import com.model.MemberDTO;

@WebServlet("/cartquantity_controller")
public class cartquantity_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String member_id = info.getMember_id();
		
		CartDAO dao = new CartDAO();
		ArrayList<CartDTO> list = new ArrayList<CartDTO>();
		list = dao.cartView(member_id);
		
		if ()
	
	
	}

}
