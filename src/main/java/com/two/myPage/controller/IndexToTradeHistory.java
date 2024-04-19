package com.two.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.two.board.model.vo.Board;
import com.two.member.model.vo.Member;
import com.two.myPage.service.MyPageServiceImpl;

/**
 * Servlet implementation class IndexToTradeHistory
 */
@WebServlet("/indexToTradeHistory.my")
public class IndexToTradeHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexToTradeHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); //현재 로그인 세션 정보 가져옴
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String userId = loginUser.getUserId();
		ArrayList<Board> list = new MyPageServiceImpl().selectTradeList(userId);
		
		if(loginUser != null) { //로그인 되어있을 경우 나의 판매글 메뉴로 이동
			session.setAttribute("loginUser", loginUser);
			request.setAttribute("list", list);
			request.setAttribute("changeUrl", "salesPost.jsp");		
			request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);
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
