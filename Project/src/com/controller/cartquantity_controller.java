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
	int cnt = 0;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String member_id = info.getMember_id();

		CartDAO dao = new CartDAO();

		String to = request.getParameter("to");
		String[] to_list = to.split(" ");

		String test = request.getParameter("num");
		ArrayList<CartDTO> list = new ArrayList<CartDTO>();
		CartDTO cdto = new CartDTO(member_id, to_list[1]);
		CartDTO c_check = dao.cartcheck(cdto);
		int ccnt = c_check.getQuantity();

		if (to_list[0].equals("plus")) {
			if (ccnt < 21) {
				cnt = dao.quan_plus(member_id, to_list[1]);
				list = dao.cartView(member_id);
				session.setAttribute("clist", list);
				response.sendRedirect("wishlist.jsp");
			} else {
				response.sendRedirect("wishlist.jsp?result=uno");
			}
		} else {
			if (ccnt >= 2) {
				cnt = dao.quan_minus(member_id, to_list[1]);
				list = dao.cartView(member_id);
				session.setAttribute("clist", list);
				response.sendRedirect("wishlist.jsp");
			} else {
				response.sendRedirect("wishlist.jsp?result=dno");
			}
		}
		
	}
}
