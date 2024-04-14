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

<link rel="stylesheet" href="${pageContext.request.contextPath}/style/header.css">

</head>

<body>
<div id="sdiv">
    <div id="side-bar">
        <ul>
            <li >
                <a href="#">컴퓨터·주요부품</a>
                <ul >
                    <div class="side-bar-min-head">
                        <strong>컴퓨터·주요부품</strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="https://www.naver.com/">· CPU</a></li>
                    <li><a href="#">· 메인보드</a></li>
                    <li><a href="#">· 메모리</a></li>
                    <li><a href="#">· 그래픽카드</a></li>
                    <li><a href="#">· SSD</a></li>
                    <li><a href="#">· 하드디스크</a></li>
                    <li><a href="#">· ODD(외장/내장)</a></li>
                    <li><a href="#">· 케이스</a></li>
                    <li><a href="#">· 파워서플라이</a></li>
                    <li><a href="#">· 공/수냉쿨러</a></li>
                </ul>
            </li>
            <li>
                <a href="#">키보드·마우스·주변기기</a>
                <ul >
                    <div class="side-bar-min-head">
                        <strong>키보드·마우스·주변기기</strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="#">· 키보드</a></li>
                    <li><a href="#">· 마우스</a></li>
                    <li><a href="#">· 스피커</a></li>
                </ul>
            </li>
            <li>
                <a href="#">모니터·악세서리</a>
                <ul>
                    <div class="side-bar-min-head">
                        <strong>모니터·악세서리 </strong>
                        <br>
                        <br>
                    </div>
                    <li><a href="#">· 19~22 인치 모니터</a></li>
                    <li><a href="#">· 24~26 인치 모니터</a></li>
                    <li><a href="#">· 27~29 인치 모니터</a></li>
                    <li><a href="#">· 30~39 인치 모니터</a></li>
                </ul>
            </li>
            <li>
                <a href="#">프린터·복합기·스캐너</a>
                <ul>
                    <div class="side-bar-min-head">
                        <strong>프린터·복합기·스캐너</strong>

                    </div>
                    <li><a href="#">· 잉크젯 프린터</a></li>
                    <li><a href="#">· 레이저 프린터</a></li>
                    <li><a href="#">· 복합기</a></li>
                    <li><a href="#">· 스캐너</a></li>
                </ul>
            </li>
            <li>
                
                <ul>
                    <div class="side-bar-min-head">
                        <li><a href="#">· 공유기</a></li>
                        <li><a href="#">· 랜카드</a></li>
                        <li><a href="#">· 랜 케이블</a></li>
                        <li><a href="#">· 스위칭 허브</a></li>
                    </div>
                    
                </ul>
            </li>
        </ul>
    </div>
</div>
    
    <div class="top" >        
        <button type="button"  class="categoryBtn" onclick="hoverCategoryBtn();" style="background-image: url(${pageContext.request.contextPath}/img/categoryBtn.png);"></button> 
        <button type="button" class="logo" onclick="clickLogo();" style="background-image: url(${pageContext.request.contextPath}/img/logo.png);"></button>
 

        <div id="searchBar">
            <form action="">
                <input type="search" name="keyword" >
                <button type="submit" id="searchBtn" style="background-image: url(${pageContext.request.contextPath}/img/searchBtn.png);"></button>
            </form> 
        </div>     

        <div id="loginAfter">
            <div>      
                <img src="${pageContext.request.contextPath}/img/mannerScore.png" style="margin-left: 25px;" alt="매너점수">
             </div>  
            <div id="myPageDiv" style="font-size: 13px; " >
                ${loginUser.userName } 님<br>
                <a href="${pageContext.request.contextPath}/indexToMyPage.my" id="maPageTag"> 마이페이지</a>
            </div>
            <div>
                <a href="" id="bellTag" style="margin-left: 25px;"><img src="${pageContext.request.contextPath}/img/bell.png" alt=""></a>
            </div>
        </div>

        
        <!-- <c:choose>
    		<c:when test="${ empty loginUser }">
		        <div id="login">          
		            <a href="${pageContext.request.contextPath}/Login.me"><img src="${pageContext.request.contextPath}/img/userBtn.png" alt="">로그인/회원가입</a>           
		        </div>
		    </c:when>
			<c:otherwise> -->
			
            <!-- 이 자리에 login 후 코드 오면됨 -->
		       
		    <!-- </c:otherwise>
		 </c:choose> -->
		
		    
    </div>
    <script>
        /* 로고 클릭시 index로 재요청 */
		function clickLogo(){
            location.href = "${pageContext.request.contextPath}/index.re";
        }

        /* 카테고리Btn */
        function hoverCategoryBtn(){
            let divSb = document.getElementById("side-bar");
            if(divSb.style.display=="none"){
                divSb.style.display="block";
            } else{
                divSb.style.display="none";
            }
            
        }
    </script>

</body>
</html>