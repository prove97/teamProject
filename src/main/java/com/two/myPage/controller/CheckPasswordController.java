package com.two.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		// jsp로부터 입력받은 password
		String inputPwd = request.getParameter("userPwd");
		
		//로그인되어있는 session의 userId가져옴
		HttpSession session = request.getSession();
		String userId = ((Member)session.getAttribute("loginUser")).getUserId();
		
		//userId를 db에 보내 저장된 비밀번호와 입력받은 비밀번호를 비교 -> 같으면 1 이상 값, 아니면 0 
		int result = mpService.checkPassword(userId);

		if(result > 0) { //비밀번호가 일치할경우
			session.setAttribute("completeCheckPwd", "Y");
			response.sendRedirect(request.getContextPath()+ "/indexToProfile.my");
		} else { //비밀번호가 일치하지 않을 경우
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
