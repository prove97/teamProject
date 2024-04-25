package com.two.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.two.common.Pagination;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.myPage.service.MyPageService;
import com.two.myPage.service.MyPageServiceImpl;
import com.two.product.model.vo.Nreply;
import com.two.product.model.vo.Reply;

/**
 * Servlet implementation class IndexToCommentHistory
 */
@WebServlet("/indexToCommentHistory.my")
public class IndexToCommentHistory extends HttpServlet {

	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexToCommentHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MyPageService mpService = new MyPageServiceImpl();
		
		HttpSession session = request.getSession(); //현재 로그인 세션 정보 가져옴
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser != null) { //로그인 되어있을 경우 나의 댓글 메뉴로 이동
			int userNo = loginUser.getUserNo();
			
			int listCount = mpService.selectMyReplyListCount(userNo); //현재 로그인한 유저의 전체 댓글 수
			int currentPage = Integer.parseInt(request.getParameter("cpage"));
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
			ArrayList<Reply> rList = mpService.selectMyReplyList(userNo, pi); // 댓글 리스트
			
			request.setAttribute("pi", pi);
			request.setAttribute("rList", rList);	
			request.setAttribute("changeUrl", "myComment.jsp");		
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
