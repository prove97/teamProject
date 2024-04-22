package com.two.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.member.model.vo.Member;
import com.two.member.service.MemberService;

/**
 * Servlet implementation class MemberLoginPageController
 */
@WebServlet("/loginPage.me")
public class MemberLoginPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginPageController() {
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
		Member loginUser = new MemberService().loginMember(m);
		System.out.println(m);
		
		if (loginUser == null) {
			request.setAttribute("errorMsg", "로그인 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		
		} else {
			request.getSession().setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
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