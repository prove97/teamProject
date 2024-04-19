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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/signIn.css">
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
    
    <!-- 메인 -->
    <div class="main">
        <div id="logo1"><img src="${pageContext.request.contextPath}/resources/image/loginlogo.png" alt=""></div>
        <div class="signup-area"></div>
        <form action="${pageContext.request.contextPath}/insert.me" method="post">
            <fieldset class="id-pwd-email">
                <div><input type="text" placeholder="아이디" required id="id-input" name="userId"
                    style="background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png)"></div>
                <div><input type="password" placeholder="비밀번호" required id="pwd-input" name="userPwd"
                    style="background-image: url(${pageContext.request.contextPath}/resources/image/pwdInput.png)"></div>
                <div><input type="text" placeholder="이메일" required id="email-input" name="email"
                    style="background-image: url(${pageContext.request.contextPath}/resources/image/이메일.png)"></div>
            </fieldset>
            <fieldset class="name-phone-location-gender">
                <div><input type="text" placeholder="닉네임" required id="name-input" name="userName"
                    style="background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png)"></div>
                <div><input type="text" placeholder="전화번호 (- 미포함)" required id="phone-input" name="phone"
                    style="background-image: url(${pageContext.request.contextPath}/resources/image/폰.png)"></div>
                <div><input type="text" placeholder="지역 (시까지만 [ex]OO시)" required id="location-input" name="location"
                    style="background-image: url(${pageContext.request.contextPath}/resources/image/지역.png)"></div>
                <div class="gender">
                    <div id="bottom-left"><input type="radio" name="gender" id="male" value="M"> 남자</a></div>
                    <div id="bottom-right"><input type="radio" name="gender" id="female" value="F"> 여자</a></div>
                </div>
            </fieldset>
            <div><button type="submit" id="submit-button" onclick="">회 원 가 입</button></div>
            </form>
        </div>
    </div>
    <script>
        document.getElementById('save-id').addEventListener('click', function () {
            var checkbox = document.getElementById('save-checkbox');
            checkbox.checked = !checkbox.checked;
        });
        document.getElementById('save-checkbox').addEventListener('click', function () {
            var checkbox = document.getElementById('save-checkbox');
            checkbox.checked = !checkbox.checked;
        });

        function handleGenderSelection() {
            var selectedValue = getGenderValue();
            if (selectedValue === '남자') {
                return 'M';
            } else if (selectedValue === '여자') {
                return 'F';
            } else {
                // 선택된 값이 없을 경우 처리
                console.error('성별을 선택하세요.');
                return null;
            }
}
    </script>

    <!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>