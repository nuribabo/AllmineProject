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

@WebServlet("/cart_controller")
public class Cart_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("EUC-KR");  //�޾ƿ��°� �ѱ۷� ���ڵ�
	
	String itemid = request.getParameter("name"); //wishlist.jsp���� name �̶� �̸��� ���� ������ ������ ���̵𿡴���
	int quantity = Integer.parseInt(request.getParameter("quantity")); //���� ������ ��Ʈ�� �������� �ٿ��Ŵ
	 CartDAO dao = new CartDAO();  //īƮ dao �޼ҵ� ������� dao����
	 ProductDTO dto = dao.select(itemid);    //�޼��� ���  �� productDTO���Ŀ� ����
	 
	 HttpSession session = request.getSession();  //���ǻ���
	 MemberDTO info = (MemberDTO)session.getAttribute("info"); //���ǿ��� ��������������
	 String member_id = info.getMember_id();   // ������������ ���id ����
	 String product_id = dto.getProduct_id();  // �޾Ƴ��� productDTO���� dto���� ��ǰid����
	 quantity = 1;
	 CartDTO cdto = new CartDTO(member_id, product_id, quantity); //�����°��� cartDTO���Ŀ�����
	int cnt = 0;
	  cnt = dao.insert_cart(cdto); //������ �μ�Ʈ ��Ŵ  �������� int cnt�� �����
	  
	  //Ȯ���ϱ�
	  if(cnt != 0) {
		  System.out.println("��ٱ��� ���� ����");
	  }else {
		  System.out.println("��ٱ��� �ļ�");
	  }
	
	}

}
