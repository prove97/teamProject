package com.two.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.member.model.vo.Member;
import com.two.member.service.MemberService;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/insert.me")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("phone");
		String location = request.getParameter("location");
		String gender = request.getParameter("gender");
		
//		Member m = new Member(userId, userPwd, email, userName,
//							  phone, location, gender);
		
		Member m = new Member(userId, userPwd, nickname, phone,
		  gender, email, location);
		
		int result = new MemberService().insertMember(m);
		
		if(result > 0) {
	        // 회원가입 성공 시 팝업창 띄우기
	        String message = "회원가입이 성공적으로 완료되었습니다.";
	        String url = request.getContextPath();
	        String script = "<script>alert('" + message + "');";
	        script += "window.location='" + url + "';</script>";
	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println(script);
//			response.sendRedirect(request.getContextPath());
			
		} else {
			request.setAttribute("errorMsg", "회원가입에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
