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
 * Servlet implementation class IndexToProfileController
 */
@WebServlet("/indexToProfile.my")
public class IndexToProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexToProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//로그인 되어있고, provePwd.jsp에서 비밀번호를 맞게 입력했다면 뜨게해야함
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		System.out.println("현재 로그인정보 : " + loginUser);
		
		if(loginUser != null) { //로그인 되어있을 경우
			if(((String)session.getAttribute("completeCheckPwd")).equals("Y")) { //이미 비밀번호 입력을 했을 경우 -> 회원정보 창으로 이동
				session.setAttribute("loginUser", loginUser);
				request.setAttribute("changeUrl", "profile.jsp"); //changeUrl의 값에 따라 myPageMain.jsp창에서 뜨는 내용이 달라짐
				request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);	
			} else { //비밀번호를 아직 입력하지 않았을 경우 -> provePwd.jsp
				request.setAttribute("changeUrl", "provePwd.jsp"); 
				request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);	
			}
			
		} else { //로그인 되어있지 않을 경우
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
