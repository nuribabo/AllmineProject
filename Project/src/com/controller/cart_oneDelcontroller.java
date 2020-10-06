package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CartDAO;
import com.model.CartDTO;
import com.model.MemberDTO;


@WebServlet("/cart_oneDelcontroller")
public class cart_oneDelcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		
		String member_id = info.getMember_id();
		String product_id = request.getParameter("item");
		
		CartDTO cdto = new CartDTO(member_id, product_id);
		CartDAO dao = new CartDAO();
		int cnt = dao.remove(cdto);
		
		if(cnt!= 0) {
			System.out.println("부분삭제 완료");
			session.removeAttribute("clist");
		}else {
			System.out.println("부분삭제 실패");
			
		}
		response.sendRedirect("cartView_controller");
		
		
		
	}

}
