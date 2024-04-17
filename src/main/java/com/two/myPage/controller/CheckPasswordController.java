package com.two.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.member.model.vo.Member;
import com.two.myPage.service.MyPageService;
import com.two.myPage.service.MyPageServiceImpl;

/**
 * Servlet implementation class CheckPasswordController
 */
@WebServlet("/checkPwd.my")
public class CheckPasswordController extends HttpServlet {
	private MyPageService mpService = new MyPageServiceImpl();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckPasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m = new Member();
		m.setUserId(request.getParameter("userId"));
		m.setUserPwd(request.getParameter("userPwd"));

		int result = mpService.checkPassword(m);
		System.out.println(result);
		
		if(result > 0) { //비밀번호가 일치할경우;
			response.sendRedirect(request.getContextPath()+ "/indexToProfile.my");
		} else {
			request.setAttribute("changeUrl", "provePwd.jsp");
			request.setAttribute("wrongPwd", "Y");			
			request.getRequestDispatcher("/views/myPage/myPageMain.jsp").forward(request, response);
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
