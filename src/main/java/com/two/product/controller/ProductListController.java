package com.two.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.two.common.Pagination;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.vo.Product;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class ProductListController
 */
@WebServlet("/list.pr")
public class ProductListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount = new ProductServiceImpl().selectListCount();
		
		int currentPage;

		System.out.println(request.getParameter("cpage"));
		if(request.getParameter("cpage")==null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("cpage"));
		}
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 18);
		System.out.println("listCount : " + listCount);
		System.out.println("currentPage : " + currentPage);
		System.out.println("PageLimit : " + pi.getPageLimit());
		System.out.println("BoardLimit : " + pi.getBoardLimit());
		System.out.println("MaxPage : " + pi.getMaxPage());
		System.out.println("StartPage : " + pi.getStartPage());
		System.out.println("EndPage : " + pi.getEndPage());
		
		ArrayList<Product>list = new ProductServiceImpl().selectList(pi);
		
		request.setAttribute("pi", pi);
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list, response.getWriter());
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
