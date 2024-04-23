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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/FindResult.css">
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
	
	<!-- 메인 결과 -->
    <section>
        <div class="main">
            <form action="${pageContext.request.contextPath}/Login.me">
                <p id="font">ID / PWD 찾기 결과</p>
                <fieldset class="result-area">
                    <div><img src="${pageContext.request.contextPath}/resources/image/loginlogo.png" alt="" id="img1"></div>
                    <div id="Msg"><h1 align="center" style="color:black; margin-top: 30px; margin-bottom: 50px;">${successMsg}</h1></div>
                    <div><button type="submit" id="submit-button" onclick="">로그인창으로 이동</button></div>
                </fieldset>
            </form>
        </div>
    </section>
	<!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>