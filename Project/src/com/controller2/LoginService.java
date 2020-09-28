package com.controller2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model2.MemberDAO;
import com.model2.MemberDTO;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		MemberDTO dto = new MemberDTO(id,pw,name);
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("로그인 실패");
		}
		
		
	}
	

}
