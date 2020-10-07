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
import com.model.ProductDTO;

@WebServlet("/cartcontroller")
public class cartcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR"); // �޾ƿ��°� �ѱ۷� ���ڵ�

		String itemid = request.getParameter("name"); // wishlist.jsp���� name �̶� �̸��� ���� ������ ������ ���̵𿡴���
		int num = 1;
		int cnt = 0;
		int check_quantity = 0;
		

	

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String member_id = info.getMember_id();
		
		CartDAO dao = new CartDAO();
		CartDTO cdto = new CartDTO(member_id, itemid, num);
		CartDTO check = dao.cartcheck(cdto); // īƮ�� �ִ��������� üũ
		
		
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
		

		

		if (cnt != 0) {
			System.out.println("��ٱ��� ���� ����");
		} else {
			System.out.println("��ٱ��� �ļ�");
		}
		response.sendRedirect("shop1.jsp");

	}

}
