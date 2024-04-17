package com.two.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.board.model.vo.Board;
import com.two.myPage.service.MyPageService;
import com.two.myPage.service.MyPageServiceImpl;

/**
 * Servlet implementation class ReloadTradeHistoryController
 */
@WebServlet("/reloadTrade.my")
public class ReloadTradeHistoryController extends HttpServlet {
	MyPageService mpService = new MyPageServiceImpl();

	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReloadTradeHistoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tradeListOption = request.getParameter("tradeListOption");
		String userId = request.getParameter("userId");
		
		System.out.println(userId);
		
		ArrayList<Board> list = null;
		if(tradeListOption.equals("onSale")){
			list = mpService.loadOnSale();
			System.out.println("팔고있는 것들");
		} else if(tradeListOption.equals("soldOut")) {
			list = mpService.loadSoldOut();
			System.out.println("팔린것들");
		} else {
			list = mpService.myBoardList();
			System.out.println("전부");			
		}
		
		request.getAttribute("list", list);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
