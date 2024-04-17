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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/login.css">
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>

    <section>
    <div class="log">
        <div><img src="${pageContext.request.contextPath}/resources/image/loginlogo.png" alt="" id="img1"></div>
        <div>
            <fieldset id="login-area">
                <p id="login-font">login</p>
                <div id="login-form"><input type="text" placeholder="아이디를 입력하세요" required id="id-input"></div>
                <div id="login-form"><input type="text" placeholder="비밀번호를 입력하세요" required id="pwd-input"></div>
                <div id="save-id"><input type="checkbox" name="save" id="save-checkbox" style="cursor: pointer;">  ID 기억하기</div><br><br>
                <div id="submit"><button type="submit" id="submit-button" onclick="">로그인</button></div>
                <div class="bottom">
                    <div id="bottom-left"><a href="">아이디찾기</a></div>
                    <div id="bottom-right"><a href="">비밀번호찾기</a></div>
                    <div id="bottom-right"><a href="">회원가입</a></div>
                </div>
            </fieldset>
        </div>
    </div>
    </section>
    <script>
        document.getElementById('save-id').addEventListener('click', function() {
            var checkbox = document.getElementById('save-checkbox');
            checkbox.checked = !checkbox.checked;
        });
        document.getElementById('save-checkbox').addEventListener('click', function() {
            var checkbox = document.getElementById('save-checkbox');
            checkbox.checked = !checkbox.checked;
        });
        </script>

    <!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>