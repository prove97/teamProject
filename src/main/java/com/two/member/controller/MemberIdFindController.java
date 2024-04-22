package com.two.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.two.member.service.MemberService;

/**
 * Servlet implementation class MemberIdFindController
 */
@WebServlet("/idFind.me")
public class MemberIdFindController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberIdFindController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        // 닉네임과 전화번호를 파라미터로부터 가져옵니다.
        String nickname = request.getParameter("nickname");
        String phone = request.getParameter("phone");

        // 서비스 객체 생성
        MemberService memberService = new MemberService();
        // 닉네임과 전화번호를 이용하여 userId를 가져옵니다.
        String userId = memberService.idFind(nickname, phone);
        System.out.println(userId);
        if (userId != null) {
            // userId가 존재할 경우
            // 원하는 로직을 구현하세요. 예를 들어, userId를 화면에 출력하거나 다른 작업을 수행할 수 있습니다.
            // 아래는 간단한 예시입니다.
            PrintWriter out = response.getWriter();
            out.println("회원 아이디: " + userId);
        } else {
            // userId가 존재하지 않을 경우
            // 적절한 에러 처리를 수행하세요.
            request.setAttribute("errorMsg", "해당하는 회원이 없습니다.");
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
