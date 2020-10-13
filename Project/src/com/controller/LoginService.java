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
import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		MemberDTO dto = new MemberDTO(id,pw,name);
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			
			
			String member_id = info.getMember_id();
			CartDAO cdao = new CartDAO();
			ArrayList<CartDTO> list = new ArrayList<CartDTO>();
			list = cdao.cartView(member_id);
			session.setAttribute("clist", list);
			
			// 여기서 flask 연동
			response.sendRedirect("main1.jsp");
			//response.sendRedirect("http://localhost:9000/recom?id=" + member_id);
			
		}else {
			System.out.println("로그인 실패");
		}
		
		
	}
	

}
