<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    body{
        display: flex;
        justify-content: center;
        height: 1200px;
        position: relative;
    }        
        /* 헤더 */
    .top{ 
        position: fixed;
        width: 1151px;
        height: 62px;
        background-color: #EEEEEE;
        margin: 0 auto;
        display: flex;
        align-items: center;
    }

    /*카테고리버튼*/
    #categoryBtn{
        width: 37px;
        height: 43px;
        background-image: url(${pageContext.request.contextPath}/img/categoryBtn.png);
        border: none;
        margin-left: 25px;
      
    }

    /*피씨그린로고*/
    #logo{
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
    #login > form a{
        color: black;
        font-size: 14px;
        font-style: none;
    }

    /* 메인 */
    .FAQ-title{
        margin-top: 164px;
        margin-bottom: 65px;
        width: 100%;
        height: 43px;
    }  

    .write-area{
        width: 797px;
        height: 611px;
        border: 1px solid #545454;
        border-radius: 5px;
    }

    #title-input{
        border-color: #8BD3B2;
        width: 575px;
        height: 38px;
        font-size: 15px;
        color: #545454;
        margin: 50px 110px 28px 110px;
    }

    #content-input{
        width: 575px;
        height: 360px;
        border: 2px solid #8BD3B2;
        resize: none;
        margin: 0px 110px 10px 110px;
        color: #545454;
        font-size: 15px;
    }

    .button-input{
        width: 797px;
        height: 24px;
        margin-left: 110px;
        margin-bottom: 40px;
    }

    #submit-input{
        margin-left: 350px;
    }

    /* 푸터 */
    .footer{
        width: 1151px;
        height: 120px;
        margin: 0 auto;
        bottom: 0px;
        position: absolute;
        height: 10rem;
        background: white;
    }

    #footer-1{
        height: 48px;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        display: flex;
        justify-content: center;
    }
    
    #footer-1-box{
        width: 625px;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
        
    #footer-1 a{
        text-decoration: none;
        color: black;
    }
 
    #footer-2{
        display: flex;
        justify-content: space-around;
    }

    #footer-2 div:nth-child(1) p{
        margin: 0;
    }
        
    #footer-2 div:nth-child(2) p{
        margin: 0;
    }
        
    #footer-2 div:nth-child(3) p{
        margin: 0;
    }
    </style>
</head>
<body>
	<!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>	
	
	<!-- 메인 -->
	<div style="width: 100%; padding-left: 174px;">
		<div class="FAQ-title">
			<h1 id="title-text">1:1 문의하기</h1>
		</div>
		<fieldset class="write-area">
			<div>
				<input type="text" name="title" id="title-input" placeholder="제목"
					required>
			</div>
			<div>
				<textarea name="content" id="content-input" placeholder="내용"
					required></textarea>
			</div>
			<div>
				<div class="button-input">
					첨부 파일 : <input type="file" name="" id="">
				</div>
				<div>
					<input type="submit" value="문의하기" id="submit-input">
				</div>
			</div>
		</fieldset>
	</div>
	<!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
     	
</body>
</html>