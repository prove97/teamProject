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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/pwdFind.css">
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
    <div style="margin-top: 200px;"></div>
    <section>
    <div class="log">
        <div><img src="${pageContext.request.contextPath}/resources/image/loginlogo.png" alt="" id="img1"></div>
        <div>
				<fieldset id="login-area">
					<p id="login-font">비밀번호찾기</p>
					<form action="${pageContext.request.contextPath}/pwdFind.me" method="post">
					<div id="login-form">
						<input type="text" placeholder="아이디를 입력하세요" required id="id-input" name="userId"
							style="background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png);">
					</div>
					<div id="login-form">
						<input type="text" placeholder="닉네임을 입력하세요" required id="pwd-input" name="nickname"
							style="background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png);">
					</div>
                    <div id="login-form">
						<input type="text" placeholder="전화번호를 입력하세요" required id="phone-input" name="phone"
							style="background-image: url(${pageContext.request.contextPath}/resources/image/폰.png);">
					</div>
					<br>
					<br>
					<div id="submit">
						<button type="submit" id="submit-button" onclick="">비밀번호찾기</button>
					</div>
					</form>
				</fieldset>
			</div>
    </div>
    </section>

    <!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>