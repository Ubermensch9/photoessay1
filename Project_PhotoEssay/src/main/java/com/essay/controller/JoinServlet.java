package com.essay.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.essay.dao.MemberDAO;
import com.essay.dto.MemberVO;

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/join.jsp");	// 페이지 이동
		dispatcher.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 회원 가입에서 작성한 데이터를 데이터베이스에 insert
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		//String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		
		String url = request.getParameter("url");
		email = email + "@" + url;
		
		System.out.println("email: " + email);
		
		//데이터 베이스에 회원 가입 정보저장
		MemberVO mVo = new MemberVO();
		mVo.setName(name);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setNick(nick);
		mVo.setEmail(email);
		//mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		
		HttpSession session = request.getSession();		// 세션 사용 방법
//		session.setAttribute("loginUser", mVo);			// 회원 정보를 세션에 저장
		System.out.println("result: " + result);
		if (result == 1) {
			request.setAttribute("message", "회원가입에 성공하였습니다.");
		} else{
			request.setAttribute("message", "회원가입에 실패했습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);		// 페이지 이동		
	}
}
