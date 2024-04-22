package com.two.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.two.common.Pagination;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.product.model.vo.Product;

/**
 * Servlet implementation class IndexToLikeController
 */
@WebServlet("/indexToLike.my")
public class IndexToLikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexToLikeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); //현재 로그인 세션 정보 가져옴
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		
		
		if(loginUser != null) { //로그인 되어있을 경우 찜목록 메뉴로 이동
			request.setAttribute("changeUrl", "heart.jsp");		
			request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);
		} else { //로그인 되어있지 않을 경우 로그인 창으로 이동
			session.setAttribute("alertMsg", "로그인 해주세요");
			response.sendRedirect(request.getContextPath()+"/Login.me");
		} 
		
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession(); //현재 로그인 세션 정보 가져옴
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int userNo = loginUser.getUserNo();
		
		int listCount = mpService.selectMyTradeListCount(userNo); //현재 로그인한 유저의 전체 판매글 수
		int currentPage = Integer.parseInt(request.getParameter("cpage"));

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
		ArrayList<Product> list = mpService.selectMyTradeList(userNo, pi);
		
		if(loginUser != null) { //로그인 되어있을 경우 나의 판매글 메뉴로 이동
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			request.setAttribute("changeUrl", "salesPost.jsp");		
			request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);
			
		} else { //로그인 되어있지 않을 경우 로그인 창으로 이동
			session.setAttribute("alertMsg", "로그인 해주세요");
			response.sendRedirect(request.getContextPath()+"/Login.me");
		} 
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
