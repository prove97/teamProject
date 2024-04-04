<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
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
    #login > form a{
        color: black;
        font-size: 14px;
        font-style: none;
    }

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
        <div id="login">
            <form action="">               
                <a href=""><img src="${pageContext.request.contextPath}/img/userBtn.png" alt="">로그인/회원가입</a>
            </form>
        </div>
    </div>

</body>
</html>