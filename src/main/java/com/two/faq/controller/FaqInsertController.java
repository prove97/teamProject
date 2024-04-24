package com.two.faq.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.two.attachment.model.vo.Attachment;
import com.two.faq.model.vo.Faq;
import com.two.faq.service.FaqServiceImpl;
import com.two.common.model.vo.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class FaqInsertController
 */
@WebServlet("/insert.fa")
public class FaqInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1:1문의 등록
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 파일업로드를 위한 라이브러리 : cos.jar()
			// www.servlets.com 다운로드
			
			// 1.전달되는 파일을 처리할 작업내용(전달되는 파일의 용량제한, 어느폴더에저장시킬 폴더경로설정)
			// 1_1) 용량제한(byte단위)
			
			// byte = > kbyte => mbyte => gbyte => tbyte ...
			int maxSize = 1024 * 1024 * 10; //10mb
			
			// 1_2) 전달된 파일을 저장시킬 폴더 경로 알아내기
			String savePath = request.getSession().getServletContext().getRealPath("/resources/product_upfile/");
			//이렇게하면 직접경로를 가져온다 (루트디랙토리 : 웹앱)
			
			/*
			 * 2. 전달된 파일의 파일명 수정 및 서버에 업로드 작업을 해야됨
			 * 
			 * MultipartRequest request -> MultipartRequest multiRequest 로 변환
			 * 
			 * 위 구문 한줄 실행만으로 넘어온 첨부파일이 해당 폴더에 무조건 업로드가 된다.
			 * 단, 업로드시 파일명을 수정해줘야한다.(파일명이 곂칠수있으니) 그래서 파일명을 수정시켜주는 객체를 제시해야한다.
			 * => 같은파일명이 있을경우 물어보지'않고' 그냥 덮어씌워질 수 있고, 파일명에 한글/특수문자/띄어쓰기가 포함될 경우 서버에따라 문제가 발생할 수 있다.
			 * 
			 * 기본적으로 파일명이 안곂치도록 수정작업해주는 객체가
			 * => DefaultFileRenamePolicy 객체(cos에서 제공해준다.)
			 * => 내부적으로 rename(원본파일명){
			 * 	기존에 동일한 파일명이 존재할 경우
			 *  파일명뒤에 숫자를 붙여줌
			 *  ex) aaa.jpg(를 올리고), aaa1.jsp(로 만들어준다), aaa2.jsp(마찬가지) 이런식으로 숫자를 붙혀준다
			 *  	꽃.jsp, 꽃1.jsp
			 *  	return 수정파일
			 * }
			 * 
			 * 나만의 방식대로 절대 겹치지않도록 rename 할 수 있게 FileRenamePolicy클래스를 만들면된다.
			 * common 에서 클래스생성
			 * com.kh.common.MyFileRenamePolicy
			 * 
			 */
			
			//MultipartRequest multiRequest = new MultipartRequest(request, 저장시킬 폴더의 경로, 용량제한(나는 몇md 이하로할거야), 인코딩, new DefaultFileRenamePolicy());
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			//위 코드가 읽어지는 순간 파일 업로드가 끝난다.
			
			//요 파일을 이제 데이터베이스에 저장해야한다 왜? 그래야 나중에도 꺼내볼수있으니깐!
			
			// 3.DB에 기록할 데이터를 추출해서 VO에 차곡차곡 담아주자
			// > 카테고리번호, 제목, 내용, 작성자번호
			// > 첨부파일이 있다면(없을수도있으니) 원본명, 수정명, 저장폴더경로 다 저장할것이다.
			// multiRequest 로 꺼내면 꺼내진다
//			String boardTitle = multiRequest.getParameter("title");
//			String boardContent = multiRequest.getParameter("content");
//			String boardWriter = multiRequest.getParameter("userNo");
			String faqTitle = multiRequest.getParameter("title");
			String faqContent = multiRequest.getParameter("content");
			String userNo = multiRequest.getParameter("userNo");
//			
//			Board b = new Board();
//			b.setCategory(category);
//			b.setBoardTitle(boardTitle);
//			b.setBoardContent(boardContent);
//			b.setBoardWriter(boardWriter);
			Faq f = new Faq();
			f.setFaqTitle(faqTitle);
			f.setFaqcontents(faqContent);
			f.setUserNo(userNo);
			
			//첨부파일이있다면 따로 만들어서 넣어줘야한다 vo Attachment.java
			
			Attachment at = null;
			
			// 우리가 파일을 업로드했을때 명칭 : upfile
			if (multiRequest.getOriginalFileName("upfile") != null) {
				// null이 아니면 있다는 뜻
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				//어떻게 내 파일이 저장됬냐
				at.setFilePath("resources/board_upfile/");
			}
			
			// 4. 서비스 요청 -> 어떤걸? 보드를
			// 둘다 한번에 요청할거 서비스에
			int result = new FaqServiceImpl().insertFaq(f, at);
			
			// 5. 응답뷰 요청
			if(result > 0) { //성공 -> 목록페이지로 보냄(kh/list.bo?cpage=1) (다른 url로 가면 무조건 response.sendRedirect)
				request.getSession().setAttribute("alertMsg", "일반게시글 작성 성공");
				response.sendRedirect(request.getContextPath() + "/list.bo?cpage=1");
				
			} else { //실패 -> 업로드된 파일 삭제해주고 에러페이지 보내줄거임
				if(at != null) {
					new File(savePath + at.getChangeName()).delete();
					// savePath 경로로 찾아가서 at.getChangeName() 찾아서 delete : 지운다
				}
				
				request.setAttribute("errorMsg", "일반게시글 작성 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			
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
