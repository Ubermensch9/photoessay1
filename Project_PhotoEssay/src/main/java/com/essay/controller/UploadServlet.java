package com.essay.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UploadServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // post 방식 한글 처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String savePath = "upload";
		int uploadFileSizeLimit = 5* 1024 * 1024;		//파일 최대 업로드 크기(5MB)
		String encType = "UTF-8";						//인코딩 방식
		
		ServletContext context= getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리: " + uploadFilePath);

		try {
		
		
		MultipartRequest multi = new MultipartRequest (
				request,			//request 객체
				uploadFilePath,		//서버상의 실제 디렉토리
				uploadFileSizeLimit, //최대 업로드 파일 크기
				encType,			// 인코딩 방법
				new DefaultFileRenamePolicy() //동일한 이름이 존재 시 변경
	);
		//업로드 된 파일의 이름 획득
		String fileName = multi.getFilesystemName("uploadFile");
		
		if(fileName == null) {
			System.out.println("파일 업로드 실패");
			
		}else {
			out.println("작성자: " + multi.getParameter("name"));
			out.println("제 목: " + multi.getParameter("title"));
			out.println("파일명: " + fileName);
			
			
		}
	}catch (Exception e) {
		System.out.println("예외 발생: " + e);
	}
	

}
}
