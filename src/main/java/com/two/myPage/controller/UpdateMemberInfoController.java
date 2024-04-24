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
		MyPageService mpService = new MyPageServiceImpl();

		request.setCharacterEncoding("UTF-8");
		
		String checkNickname = request.getParameter("submitNickname"); //닉네임 조건 만족 했을 시 selected를 받음 or null
		String checkPwd = request.getParameter("submitPwd"); //비밀번호 조건 만족 했을 시 selected를 받음 or null
		
		System.out.println("checkNickname : " + checkNickname);
		System.out.println("checkPwd : " + checkPwd);

		Member m = new Member();

		m.setUserId(request.getParameter("userId"));

		if(checkNickname != null) {
			String nickname = request.getParameter("nickname");
			int result = mpService.updateNickname(m.getUserId(), nickname);

			if(result > 0) {//닉네임 변경에 성공했을 때				
				System.out.println("닉넴변경 성공");
				m.setNickname(nickname);
			} 
		}
		
		if(checkPwd != null) {
			String userPwd = request.getParameter("userPwd");
			int result = mpService.updatePassword(m.getUserId(), userPwd);
			
			if(result > 0) {//비밀번호 변경에 성공했을 때
				System.out.println("비번변경 성공");
				m.setUserPwd(userPwd);		

			} 
		}
		
		m.setGender(request.getParameter("gender"));
		m.setEmail(request.getParameter("email"));
		String location = request.getParameter("location");
		System.out.println(location);
		m.setLocation(location);
		
		Member updateInfo = mpService.updateInfo(m);//닉네임, 패스워드 제외
		System.out.println("updateInfo : " + updateInfo);
		
		
		if(updateInfo != null) {//멤버 변경에 성공했을 때
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateInfo);
			session.setAttribute("alertMsg", "회원정보 변경에 성공하였습니다.");
			response.sendRedirect(request.getContextPath() + "/indexToProfile.my");
		} else { //정보변경 실패
			//에러문구가 보여지는 에러페이지
			request.setAttribute("errorMsg", "정보변경에 실패하였습니다.");			
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
