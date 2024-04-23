package com.two.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.two.attachment.model.vo.Attachment;
import com.two.common.model.vo.MyFileRenamePolicy;
import com.two.member.model.vo.Member;
import com.two.product.model.vo.Product;
import com.two.product.service.ProductServiceImpl;

/**
 * Servlet implementation class ProductInsertController
 */
@WebServlet("/insert.pr")
public class ProductInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 10;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/product_upfile");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Product p = new Product();
			Member m = (Member) request.getSession().getAttribute("loginUser");
			
			p.setSellerNo(m.getUserNo());
			p.setCategoryM(multiRequest.getParameter("categoryM"));
			p.setTitle(multiRequest.getParameter("title"));
			p.setSellPrice(Integer.parseInt(multiRequest.getParameter("sellPrice")));
			p.setpExplain(multiRequest.getParameter("pExplain"));
			p.setReturnPd((multiRequest.getParameter("returnPd") == null) ? "N" : "Y");
			p.setLocationT(multiRequest.getParameter("locationT"));
			p.setProductStatus(multiRequest.getParameter("productStatus"));
			
			Attachment at = new Attachment();
			at.setFilePath("/resources/product_upfile");
			
			int result = new ProductServiceImpl().insertProduct(p, at);
			
			if (result > 0) {
				System.out.println(p);
				request.getSession().setAttribute("alertMsg", "상품을 성공적으로 등록했습니다.");
				response.sendRedirect(request.getContextPath());
			} else {
				request.setAttribute("errorMsg", "상품 등록 실패");
				request.getRequestDispatcher("index.jsp").forward(request, response);
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
