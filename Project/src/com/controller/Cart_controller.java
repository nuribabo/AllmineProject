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

	request.setCharacterEncoding("EUC-KR");  //받아오는값 한글로 인코딩
	
	String itemid = request.getParameter("name"); //wishlist.jsp에서 name 이란 이름의 값을 가져와 아이템 아이디에담음
	int quantity = Integer.parseInt(request.getParameter("quantity")); //수량 가져옴 인트로 형식으로 다운시킴
	 CartDAO dao = new CartDAO();  //카트 dao 메소드 사용위해 dao생성
	 ProductDTO dto = dao.select(itemid);    //메서드 사용  값 productDTO형식에 담음
	 
	 HttpSession session = request.getSession();  //세션생성
	 MemberDTO info = (MemberDTO)session.getAttribute("info"); //세션에서 유저정보가져옴
	 String member_id = info.getMember_id();   // 유저정보에서 멤버id 빼옴
	 String product_id = dto.getProduct_id();  // 받아놓은 productDTO형식 dto에서 물품id빼옴
	 quantity = 1;
	 CartDTO cdto = new CartDTO(member_id, product_id, quantity); //빼내온값들 cartDTO형식에담음
	int cnt = 0;
	  cnt = dao.insert_cart(cdto); //값으로 인설트 시킴  변동사항 int cnt에 담아줌
	  
	  //확인하기
	  if(cnt != 0) {
		  System.out.println("장바구니 저장 성공");
	  }else {
		  System.out.println("장바구니 파손");
	  }
	
	}

}
