package com.two.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.product.model.vo.Request;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class RequestInsertController
 */
@WebServlet("/insert.req")
public class RequestInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int requestPrice = Integer.parseInt(request.getParameter("requestPrice"));
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		int requestWriter = Integer.parseInt(request.getParameter("requestWriter"));
		String nickname = request.getParameter("nickname");
		int score = Integer.parseInt(request.getParameter("score"));
		
		Request q = new Request();
		
		q.setRequestPrice(requestPrice);
		q.setGoodsId(goodsId);
		q.setRequestWriter(requestWriter);
		q.setNickname(nickname);
		q.setScore(score);
		
		int result = new ProductServiceImpl().insertRequest(q);
		
		if (result > 0) {
			response.sendRedirect(request.getContextPath() + "/detail.pr?goodsId=" + goodsId);
		} else {
			request.setAttribute("errorMsg", "구매요청 실패");
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
