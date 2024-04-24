package com.two.myPage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.two.common.Pagination;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.myPage.service.MyPageService;
import com.two.myPage.service.MyPageServiceImpl;
import com.two.product.model.vo.Product;

/**
 * Servlet implementation class ReloadTradeHistory
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
		MyPageService mpService = new MyPageServiceImpl();

		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession(); //현재 로그인 세션 정보 가져옴
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser != null) { //로그인 되어있을 경우 나의 판매글 메뉴로 이동
			int userNo = loginUser.getUserNo();
			String selected = request.getParameter("selected");
			System.out.println(selected);
			
			int listCount = 0;
			ArrayList<Product> list = null;
			PageInfo pi = null;
			
			int currentPage = Integer.parseInt(request.getParameter("cpage"));
			
			if(selected.equals("onSale")) {
				listCount = mpService.selectOnSaleListCount(userNo); //현재 로그인한 유저의 판매중인글 수
				System.out.println("onsale : " + listCount);
				pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
				list = mpService.selectOnSaleList(userNo, pi);
				System.out.println("onsale list : " + list);
				

			} else if(selected.equals("soldOut")) {
				listCount = mpService.selectSoldOutListCount(userNo); //현재 로그인한 유저의 판매완료글 수
				System.out.println("soldOut : " + listCount);
				pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
				list = mpService.selectSoldOutList(userNo, pi);
				System.out.println("soldOut list : " + list);
					
			} else { //all : 전체 게시글
				listCount = mpService.selectMyTradeListCount(userNo); //현재 로그인한 유저의 전체 판매글 수
				System.out.println("all : " + listCount);
				pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
				list = mpService.selectMyTradeList(userNo, pi);
				System.out.println("all list : " + list);
			}
			
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			request.setAttribute("selected", selected);
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
