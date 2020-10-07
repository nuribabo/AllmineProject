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

@WebServlet("/EditMemberCon")
public class EditMemberCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		
		request.setCharacterEncoding("EUC-KR");
		String id = info.getMember_id();
		String pw = request.getParameter("newPassword");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String member_addr1 = request.getParameter("member_addr1");
		String member_addr2 = request.getParameter("member_addr2");
		String member_addr3 = request.getParameter("member_addr3");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(member_addr1);
		System.out.println(member_addr2);
		System.out.println(member_addr3);
		System.out.println(gender);
		System.out.println(birth);
		
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw, name, email, phone, member_addr1, member_addr2, member_addr3, gender, birth);
		int cnt = dao.update(dto);
		
		if(cnt >0) {
			System.out.println("업데이트 성공");
			session.setAttribute("info", dto);
		}else {
			System.out.println("업데이트 실패");
		}
		response.sendRedirect("main1.jsp");
	}

}
