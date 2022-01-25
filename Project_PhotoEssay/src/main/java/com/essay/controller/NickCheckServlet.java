package com.essay.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.essay.dao.MemberDAO;
import com.essay.dto.MemberVO;

@WebServlet("/nickCheck.do")
public class NickCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public NickCheckServlet() {
        super();
       
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 입력한 아이디를 디비에서 조회하여 동일한 아이디가 없는지 확인
		
		String nick = request.getParameter("nick");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmNICK(nick);
		
		request.setAttribute("nick", nick);
		request.setAttribute("result", result);
				
		if (result == 1) {
			System.out.println("사용 불가능한 닉네임 입니다.");
			request.setAttribute("message", "이미 사용중인 닉네임 입니다.");
		} else {
			System.out.println("사용 가능한 닉네임 입니다.");
			request.setAttribute("message", "사용 가능한 닉네임 입니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/nickCheck.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
