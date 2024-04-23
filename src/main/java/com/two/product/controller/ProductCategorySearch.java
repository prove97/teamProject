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
 * Servlet implementation class ProductCategorySearch
 */
@WebServlet("/categorySearch.pr")
public class ProductCategorySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductCategorySearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String BeforeCate = request.getParameter("cate"); //사용자가 입력한 키워드값
		String cate = BeforeCate.substring(2,5);
		HashMap<String, String> map = new HashMap<>();
		map.put("cate", cate);
		
		int cateCount = new ProductServiceImpl().selectcateCount(map);
		int currentPage = request.getParameter("cpage") == null ? 1 : Integer.parseInt(request.getParameter("cpage"));

//		System.out.println("써치카운트 : "+cateCount); 
		HashMap<String, Object> cateMap = new HashMap<>();
		PageInfo pi = Pagination.getPageInfo(cateCount, currentPage, 10 , 18);
		ArrayList<Product> list = new ProductServiceImpl().selectcateList(map, pi);
		
		cateMap.put("pi", pi);
		cateMap.put("list",	list);

		new Gson().toJson(cateMap, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
