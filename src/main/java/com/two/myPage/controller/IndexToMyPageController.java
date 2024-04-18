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
		
		if(((String)session.getAttribute("completeCheckPwd")).equals("Y")) { //이미 비밀번호 입력을 했을 경우 -> 회원정보 창으로 이동
			request.setAttribute("changeUrl", "profile.jsp"); //changeUrl의 값에 따라 myPageMain.jsp창에서 뜨는 내용이 달라짐
			request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);			
		} else { //비밀번호를 아직 입력하지 않았을 경우 -> provePwd.jsp
			request.setAttribute("changeUrl", "provePwd.jsp"); 
			request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);	
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
