package com.two.faq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.two.faq.model.vo.Faq;
import com.two.faq.service.FaqServiceImpl;
import com.two.member.model.vo.Member;

/**
 * Servlet implementation class FaqListController
 */
@WebServlet("/list.fa")
public class FaqListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//나의 문의내역
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int uNo = loginUser.getUserNo();
		
		ArrayList<Faq> list = new FaqServiceImpl().selectList(uNo);
		//The method parseInt(String) in the type Integer is not applicable for the arguments (int)
		System.out.println("lsit : " + list);
		
		request.setAttribute("list", list);
	    request.getRequestDispatcher("views/FAQ/myFAQ.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
