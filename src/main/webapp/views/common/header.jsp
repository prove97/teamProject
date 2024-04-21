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
	<%@ include file="/views/category/mainPart.jsp" %>
    
    <div class="top" >        
        <button type="button"  class="categoryBtn" onclick="hoverCategoryBtn();" style="background-image: url(${pageContext.request.contextPath}/resources/image/categoryBtn.png);"></button> 
        <button type="button" class="logo" onclick="clickLogo();" style="background-image: url(${pageContext.request.contextPath}/resources/image/logo.png);"></button>
 

        <div id="searchBar">
            <form action="search.pr" method="get">
            	<input type="hidden" name="cpage" value="1">
                <input type="text" name="keyword" value="${keyword }">
                <button type="submit" id="searchBtn" style="background-image: url(${pageContext.request.contextPath}/resources/image/searchBtn.png);"></button>
            </form> 
        </div>     
            <!-- 로그인 전 -->
         <c:choose>
    		<c:when test="${ empty loginUser }">
		        <div id="login">          
		            <a href="${pageContext.request.contextPath}/Login.me"><img src="${pageContext.request.contextPath}/resources/image/userBtn.png" alt="">로그인/회원가입</a>           
		        </div>
		    </c:when>
			<c:otherwise> 
			<!-- 로그인 후-->
            <div id="loginAfter">
                <div>      
                    <!--  <img src="${pageContext.request.contextPath}/resources/image/mannerScore.png" style="margin-left: 25px;" alt="매너점수"> -->
                    <div id="brightnessRate" style=" margin-left: 10px; height: 35px;">
                        <p style="font-size: 14px; margin: 0;">밝음 수치: 70 lux</p>
                        <div class="progress" style="width: 120px; height: 14px;  border-radius: 10px; border: 0.1px solid darkgray;" >
                            <div class="progress-bar" style="width:70%; background: #70C9A0;"></div>
                        </div>
                    </div>
                 </div>  
                <div id="myPageDiv" style="font-size: 13px; " >
                    ${loginUser.userId } 님<br>
                    <a href="${pageContext.request.contextPath}/indexToMyPage.my" id="myPageTag" onmouseover="overMyPage();"> 마이페이지</a>
                    <div id="mdiv" style="background-image: url(${pageContext.request.contextPath}/img/myPageHover.png); background-size: 100px 200px" onmouseover="overMyPage();" onmouseout="outMyPage();">                  
                            <ul class="myPageUl" >
                                <li class="three"><a href="${pageContext.request.contextPath}/indexToLike.my"><img src="${pageContext.request.contextPath}/img/heartIcon.png" alt="">좋아요</a></li>
                                <li class="four"><a href="${pageContext.request.contextPath}/indexToTradeHistory.my"><img src="${pageContext.request.contextPath}/img/chatIcon.png" alt="" >거래내역</a></li>
                                <li class="two"><a href="${pageContext.request.contextPath}/indexToSetting.my"><img src="${pageContext.request.contextPath}/img/settingIcon.png" alt="">설정</a></li>
                                <li class="three"><a href="${pageContext.request.contextPath}/indexToWrite.po"><img src="${pageContext.request.contextPath}/img/writeIcon.png" alt="">글쓰기</a></li>
                                <li class="three"><a href="${pageContext.request.contextPath}/indexToProfile.my"><img src="${pageContext.request.contextPath}/img/personIcon.png" alt="">프로필</a></li>
                                <li class="four"><a href="${pageContext.request.contextPath}/indexToFaq.fa"><img src="${pageContext.request.contextPath}/img/faqIcon.png" alt="">고객센터</a></li>
                                <li class="four"><a href="${pageContext.request.contextPath}/logout.me"><img src="${pageContext.request.contextPath}/img/logoutIcon.png" alt="">로그아웃</a></li>
                            </ul>
                
                    </div>
                </div>
                <div>
                    <a href="" id="bellTag" style="margin-left: 25px;"><img src="${pageContext.request.contextPath}/resources/image/bell.png" alt=""></a>
                </div>
            </div> 
		       
		     </c:otherwise>
		 </c:choose> 

		    
    </div>
    <script>
        /* 로고 클릭시 index로 재요청 */
		function clickLogo(){
            location.href = "${pageContext.request.contextPath}/index.re";
        }


        /* 마이페이지 마우스 오버 */
        function overMyPage(){
            let mdiv = document.getElementById("mdiv");
            mdiv.style.display="block";
        }

        function outMyPage(){
            let mdiv = document.getElementById("mdiv");
            mdiv.style.display="none";
        }
        
        function 
    </script>

</body>
</html>