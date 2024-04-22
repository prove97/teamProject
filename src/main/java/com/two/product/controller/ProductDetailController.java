package com.two.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.product.model.vo.Product;
import com.two.product.service.ProductService;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class ProductDetailController
 */
@WebServlet("/detail.pr")
public class ProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		
		ProductService pService = new ProductServiceImpl();
		
		Product p = pService.increaseCount(goodsId);
		
		if (p != null) {
			request.setAttribute("p", p);
			
			request.getRequestDispatcher("views/posting/postPage.jsp").forward(request, response);
		} else {
			request.setAttribute("errormsg", "상훔 조회 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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