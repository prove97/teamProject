package com.two.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.product.model.vo.Nreply;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class NreplyInsertController
 */
@WebServlet("/insert.nr")
public class NreplyInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NreplyInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nreplyContent = request.getParameter("nreplyContent");
		int replyNo = Integer.parseInt(request.getParameter("replyNo"));
		int nreplyWriter = Integer.parseInt(request.getParameter("nreplyWriter"));
		
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		
		Nreply n = new Nreply();
		
		n.setNreplyContent(nreplyContent);
		n.setReplyNo(replyNo);
		n.setNreplyWriter(nreplyWriter);
		
		int result = new ProductServiceImpl().insertNreply(n);
		
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
