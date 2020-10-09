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
import com.model.ProductDTO;

@WebServlet("/cartcontroller")
public class cartcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String itemid = request.getParameter("itemname"); // wishlist.jsp에서 name 이란 이름의 값을 가져와 아이템 아이디에담음
		
		int num = 1;
		int cnt = 0;
		int check_quantity = 0;
		String member_id= null;
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		if (info != null) { 
			member_id = info.getMember_id();
			CartDAO dao = new CartDAO();
			CartDTO cdto = new CartDTO(member_id, itemid, num);
			CartDTO check = dao.cartcheck(cdto); // 카트에 있는지없는지 체크
			
			if(check!= null) {
			check_quantity = check.getQuantity();
			}
			
			
			if(check_quantity == 0) {
				cnt = dao.insert_cart(cdto);
			}else {
				num++;
				CartDTO cdto2 = new CartDTO(member_id, itemid, num);
				cnt = dao.update_cart(cdto2);
			}
			

			ArrayList<CartDTO> list = new ArrayList<CartDTO>();
			list = dao.cartView(member_id);

			if (cnt != 0) {
				
				System.out.println("장바구니 저장 성공");
				session.setAttribute("clist", list);
				
			} else {
				System.out.println("장바구니 파손");
			}
			response.sendRedirect("main1.jsp");
			/* ?check=ok */
		
		}
		else {
			response.sendRedirect("login.jsp");
		}
		
		

	}

}
