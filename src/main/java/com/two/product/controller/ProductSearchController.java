package com.two.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.two.common.Pagination;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.vo.Product;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class ProductSearchController
 */
@WebServlet("/search.pr")
public class ProductSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword"); //사용자가 입력한 키워드값
		
		HashMap<String, String> map = new HashMap<>();
		map.put("keyword", keyword);
		
		int searchCount = new ProductServiceImpl().selectSearchCount(map);
		int currentPage = request.getParameter("cpage") == null ? 1 : Integer.parseInt(request.getParameter("cpage"));

//		System.out.println(searchCount); 잘가져옴
		HashMap<String, Object> searchMap = new HashMap<>();
		PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10 , 18);
		ArrayList<Product> list = new ProductServiceImpl().selectSearchList(map, pi);
		
		searchMap.put("pi", pi);
		searchMap.put("list",	list);

		request.setAttribute("keyword", keyword);
		
		new Gson().toJson(searchMap, response.getWriter());
		

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
