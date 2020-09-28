package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class JoinService
 */
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String member_id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String member_addr1 = request.getParameter("member_addr1");
		String member_addr2 = request.getParameter("member_addr2");
		String member_addr3 = request.getParameter("member_addr3");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(member_id, pw, pw2, name, email, phone, member_addr1,
				member_addr2, member_addr3, gender, birth);
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입성공!");
			HttpSession session = request.getSession();
			session.setAttribute("id", member_id);
			response.sendRedirect("join_success.jsp");
		}else {
			System.out.println("회원가입실패!");
			response.sendRedirect("join.jsp");
		}
		
	}
		
		
	

}
