package com.two.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.two.member.model.vo.Member;

/**
 * Servlet implementation class IndexToMyPageController
 */
@WebServlet("/indexToMyPage.my")
public class IndexToMyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexToMyPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String selected = request.getParameter("selected");
		
		
		if(loginUser != null) { //로그인 되어있을 경우
			if(session.getAttribute("completeCheckPwd") == "Y") { // 회원정보창 들어가기전 비밀번호 체크를 했을 경우
				response.sendRedirect(request.getContextPath()+ "/indexToProfile.my");
			} else {
				request.setAttribute("changeUrl", "provePwd.jsp"); 
				request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);	
			}
		} else { //로그인 되어있지 않을 경우 로그인 창으로 이동
			session.setAttribute("alertMsg", "로그인 해주세요");
			response.sendRedirect(request.getContextPath()+"/Login.me");
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
