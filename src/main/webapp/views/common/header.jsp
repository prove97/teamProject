<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.two.member.model.vo.Member"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String contextPath = request.getContextPath();

	Member loginUser = (Member)session.getAttribute("loginUser");
	// 로그인 시도 전 menubar.jsp로딩시 : null
	// 로그인 성공 후 menubar.jsp로딩시 : 로그인 성공한 회원의 정보
	
	String alertMsg = (String)session.getAttribute("alertMsg");
	//서비스 요청 전 : null
	//서비스 요청 후 : alert띄워줄 메세지 문구
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    /*헤더 div*/
    .top{ 
        position: fixed;
        width: 1151px;
        height: 62px;
        background-color: #EEEEEE;
        margin: 0 auto;
        display: flex;
        align-items: center;
        z-index: 1;
    }

    /*카테고리버튼*/
    .categoryBtn{
        width: 37px;
        height: 43px;
        background-image: url(${pageContext.request.contextPath}/img/categoryBtn.png);
        border: none;
        margin-left: 25px;
      
    }

    /*피씨그린로고*/
    .logo{
        width: 72px;
        height: 45px;
        background-image: url(${pageContext.request.contextPath}/img/logo.png);
        border: none;
        margin-left: 25px;
    }

    /*검색창*/
    #searchBar{
        width: 553px;
        margin-left: 130px;
        height: 35px;
    }
    #searchBar form{
        height: 100%;
        position: relative;
    }
    #searchBar input{
        width: 100%;
        height: 100%;
        border: none;
        border-radius: 5px;
    }
    #searchBar button{
        background-image: url(${pageContext.request.contextPath}/img/searchBtn.png);
        border: none;
        position: absolute;
        width: 20px;
        height: 20px;
        right: 12px;
        top: 7px;
    }

    /*로그인*/
    #login{
        margin-left: 110px;
    }
    #login form{
        height: 100%;
    }
    #login > a{
        color: black;
        font-size: 14px;
        font-style: none;
    }
    
    /*로그인 후*/
    #loginAfter{
        display: flex;
        height: 100%;
        justify-content: center;
        align-items: center;
        
    }
    #myPageDiv{   
        margin-top: 15px;
        height: 100%;
        padding-left: 20px;
    }
    #maPageTag{
        
        font-size: 15px;
        color: #70C9A0;
        
    }
    /*  현재 미적용된 css, 추후 추가 예정
    #maPageTag::after{
        width: 0;
        height: 1vw;
        background: #5d8cef;
        left: 50%;
        content: '';
        display: block;
        position: absolute;
        bottom: 0;
        z-index: -1;
    }
    #myPageTag :hover{
        width: 100%;
        left: 0;
        transition: all .3s;
    }
    */

</style>
</head>

<body>

    
    <div class="top" >        
        <button type="button"  class="categoryBtn" onclick="hoverCategoryBtn();"></button> 
        <button type="button" class="logo"></button>
 

        <div id="searchBar">
            <form action="">
                <input type="search" name="keyword" >
                <button type="submit" id="searchBtn"></button>
            </form> 
        </div>     
        
        <c:choose>
    		<c:when test="${ empty loginUser }">
		        <div id="login">          
		            <a href="${pageContext.request.contextPath}/login.me"><img src="${pageContext.request.contextPath}/img/userBtn.png" alt="">로그인/회원가입</a>           
		        </div>
		    </c:when>
			<c:otherwise>
			
            <div id="loginAfter">
                <div>      
                    <img src="${pageContext.request.contextPath}/img/mannerScore.png" style="margin-left: 25px;" alt="매너점수">
                 </div>  
                <div id="myPageDiv" style="font-size: 13px; " >
                    ${loginUser.userName } 님<br>
                    <a href="" id="maPageTag"> 마이페이지</a>
                </div>
                <div>
                    <a href="" id="bellTag" style="margin-left: 25px;"><img src="${pageContext.request.contextPath}/img/bell.png" alt=""></a>
                </div>
            </div>
		       
		    </c:otherwise>
		 </c:choose>
		
		    
    </div>
    <script>

    </script>
</body>
</html>