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


@WebServlet("/cartDel_controller")
public class cartDel_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cnt = 0;
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String member_id = info.getMember_id();
		
		
		
		CartDAO dao = new CartDAO();
		cnt = dao.delete_all(member_id);
		
		
		if(cnt != 0) {
			System.out.println("장바구니 전체삭제 성공");
			session.removeAttribute("clist");
		}else {
			System.out.println("장바구니 비우기 실패");
		}response.sendRedirect("cartView_controller");
		
		
		
		
		
		
	}

}
