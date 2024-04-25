package com.two.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.product.model.vo.Reply;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class ReplyInsertController
 */
@WebServlet("/insert.rep")
public class ReplyInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyContent = request.getParameter("replyContent");
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		int replyWriter = Integer.parseInt(request.getParameter("replyWriter"));
		String nickname = request.getParameter("nickname");
		int score = Integer.parseInt(request.getParameter("score"));
		
		Reply r = new Reply();
		
		r.setReplyContent(replyContent);
		r.setGoodsId(goodsId);
		r.setReplyWriter(replyWriter);
		r.setNickname(nickname);
		r.setScore(score);
		
		int result = new ProductServiceImpl().insertReply(r);
		
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
