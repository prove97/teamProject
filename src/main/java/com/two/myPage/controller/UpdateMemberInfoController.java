package com.two.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateMemberInfoController
 */
@WebServlet("/updateMemberInfo.my") //member의 회원정보 업데이트
public class UpdateMemberInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId"); //id만 보내서 db데이터 가져옴?
		String userPwd = request.getParameter("userPwd");
		String phone = request.getParameter("phone");
		String nickname = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String address = request.getParameter("address1") + "," + request.getParameter("address2");
		
		System.out.println(userId);
		System.out.println(userPwd);
		System.out.println(phone);
		System.out.println(nickname);
		System.out.println(gender);
		System.out.println(email);
		System.out.println(address);
		
//		Member m = new Member(userId, userPwd, userName, email, birthday, gender, phone, address);
//		
//		int result = new MemberServiceImpl().insertMember(m);
//		
//		if(result > 0) {
//			response.sendRedirect(request.getContextPath());
//		} else {
//			request.setAttribute("errorMsg", "회원가입 실패");
//			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
//		}
		
//		int result = 0;
//		if(result > 0) { //회원정보변경 성공
//			
//		} else { //회원정보변경 실패
//			request. 
//		}
		
		request.setAttribute("changeUrl", "profile.jsp");
		request.getRequestDispatcher("/views/myPage/myPageMain.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
