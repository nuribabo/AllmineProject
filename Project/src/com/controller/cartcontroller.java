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

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("EUC-KR");  //받아오는값 한글로 인코딩
	
	String itemid = request.getParameter("name"); //wishlist.jsp에서 name 이란 이름의 값을 가져와 아이템 아이디에담음
	int num = 1;
	
	String quantity = request.getParameter("quantity"); 
	if(quantity!= null) {
	quantity.replace(" ", "");
	 num = Integer.parseInt(quantity);
	}
	 CartDAO dao = new CartDAO();  
	 ProductDTO dto = dao.select(itemid);    
	 
	 HttpSession session = request.getSession();  
	 MemberDTO info = (MemberDTO)session.getAttribute("info"); 
	 String member_id = info.getMember_id();   
	 String product_id = dto.getProduct_id();  
	 
	 CartDTO cdto = new CartDTO(member_id, product_id, num); 
	int cnt = 0;
	  cnt = dao.insert_cart(cdto); 
	  
	  
	  if(cnt != 0) {
		  System.out.println("장바구니 저장 성공");
	  }else {
		  System.out.println("장바구니 파손");
	  }response.sendRedirect("shop1.jsp");
	
	}

}
