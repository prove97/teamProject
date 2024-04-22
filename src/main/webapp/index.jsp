<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.two.common.model.vo.PageInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
/*
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
*/
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/style/index.css">

	<script src="${pageContext.request.contextPath}/script/index.js"></script>

</head>
<body>
    <%@ include file="views/common/header.jsp" %>
    
    <section class="main">
    	
        <!-- 배너 자리 -->
        <div id="banner">
            <img src="${pageContext.request.contextPath}/img/banner.png" alt="배너" style="width: 1151px; object-fit: cover;">
        </div>

        <!-- 컨텐츠 들어오는 곳 -->

        <div id="contents">
		   <script>
		   $(document).ready(function(){
			   contentsFunction(1);
		   })
       	   </script>
        </div>


		<!-- 페이징 처리 들어오는 곳-->	
        <div id="pagination">

        </div>
        
    </section>




    
    <%@ include file="views/common/footer.jsp" %>
</body>
</html>