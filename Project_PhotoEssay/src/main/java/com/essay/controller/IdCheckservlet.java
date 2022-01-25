package com.essay.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.essay.dao.MemberDAO;


@WebServlet("/idCheck.do")
public class IdCheckservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public IdCheckservlet() {
        super();
      
        	
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 가입폼에 입력한 아이디를 디비에서 조회하여 동일한 아이디가 없는지 확인
    	String userid = request.getParameter("userid");
    	
    	MemberDAO mDao = MemberDAO.getInstance();
    	int result = mDao.confirmID(userid);
		//System.out.println(result);
    	request.setAttribute("userid", userid);
		request.setAttribute("result", result);
				
		if (result == 1) {
			System.out.println("사용 불가능한 아이디 입니다.");
			request.setAttribute("message", "이미 사용중인 아이디 입니다.");
		} else {
			System.out.println("사용 가능한 아이디 입니다.");
			request.setAttribute("message", "사용 가능한 아이디 입니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/idCheck.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//}

}
