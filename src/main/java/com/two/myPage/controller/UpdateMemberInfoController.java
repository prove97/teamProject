package com.two.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.two.member.model.vo.Member;
import com.two.myPage.service.MyPageService;
import com.two.myPage.service.MyPageServiceImpl;

/**
 * Servlet implementation class UpdateMemberInfoController
 */
@WebServlet("/updateInfo.my") //member의 회원정보 업데이트
public class UpdateMemberInfoController extends HttpServlet {
	MyPageService mpService = new MyPageServiceImpl();
	
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
		
		String checkNickname = request.getParameter("submitNickname");
		String checkPwd = request.getParameter("submitPwd");

		Member m = new Member();
		m.setUserId(request.getParameter("userId"));
		m.setUserId(request.getParameter("gender"));
		m.setUserId(request.getParameter("email"));
		m.setUserId(request.getParameter("location"));
		
		if(checkNickname != "") {
			m.setUserId(request.getParameter("nickname"));			
		}
		
		if(checkPwd != "") {
			m.setUserId(request.getParameter("userPwd"));			
		}
		
		Member updateInfo = mpService.updateInfo(m);
		
		
		if(updateInfo != null) {//멤버 변경에 성공했을 때
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateInfo);
			response.sendRedirect(request.getContextPath() + "/indexToProfile.my");
		} else { //정보변경 실패
			//에러문구가 보여지는 에러페이지
			request.setAttribute("errorMsg", "정보변경에 실패하였습니다.");			
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}


		
		
		
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
