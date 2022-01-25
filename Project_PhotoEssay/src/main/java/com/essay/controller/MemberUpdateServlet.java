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

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMember(userid);
//		System.out.println(mVo.getName());
		request.setAttribute("mVo", mVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/memberUpdate.jsp");	
		dispatcher.forward(request,response);		// 페이지 이동
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐 방지
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String admin = request.getParameter("admin");
				
		MemberVO mVo = new MemberVO();
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		mVo.setNick(nick);
		mVo.setEmail(email);
		//mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao = MemberDAO.getInstance();	// MemberDAO 객체 호출		
		mDao.updateMember(mVo);		
		response.sendRedirect("login.do");			// LoginServlet을 통해 login.jsp 페이지로 이동
	}
}
