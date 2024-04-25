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
 * Servlet implementation class DeleteMemberController
 */
@WebServlet("/delete.my")
public class DeleteMemberController extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MyPageService mpService = new MyPageServiceImpl();
        HttpSession session = request.getSession();

        request.setCharacterEncoding("UTF-8");
        
        int userNo = Integer.parseInt(request.getParameter("userNo"));
        String userPwd = request.getParameter("userPwd");
        System.out.println(userPwd);
        Member m = new Member();
        m.setUserNo(userNo);
        m.setUserPwd(userPwd);
        
        int result = mpService.deleteMember(m);
        
        if(result > 0) {
            session.setAttribute("alertMsg", "회원탈퇴가 완료되었습니다.");
            session.removeAttribute("loginUser");
            response.sendRedirect(request.getContextPath()+"/index.re");
            
        } else {
            session.setAttribute("alertMsg", "잘못된 비밀번호입니다. 다시 입력하세요");
            request.setAttribute("changeUrl", "deleteMember.jsp");        
            request.getRequestDispatcher("views/myPage/myPageMain.jsp").forward(request, response);
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