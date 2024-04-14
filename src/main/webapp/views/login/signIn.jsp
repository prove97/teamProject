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
        height: 1280px;
        position: relative;
    }

    #logo1{
        margin-top: 100px;
    }

    .signup-area{
        margin-top: 30px;
    }
    .main {
        width: 1151px;
        height: 100%;
        text-align: center;
        margin-top: 8px;
    }

    .id-pwd-email {
        width: 440px;
        height: 185px;
        margin: 0 auto;
        margin-top: 28px;
        border: 3px solid #BCBCBC;
        border-radius: 15px;
        padding: 0px;
        margin-bottom: 28px;
    }

    #id-input {
        width: 430px;
        padding: 0px;
        border-style: none;
        height: 62px;
        border-radius: 15px 15px 0px 0px;
        border-bottom: 3px solid #BCBCBC;
        /* 하단 테두리 설정 */
        border-top: none;
        /* 상단 테두리 제거 */
        border-left: none;
        /* 좌측 테두리 제거 */
        border-right: none;
        /* 우측 테두리 제거 */
        background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png);
        background-size: 30px;
        background-position: 10px center;
        background-repeat: no-repeat;
        font-size: 20px;
        font-weight: 900;
        opacity: 0.7;
        padding-left: 50px;
    }

    #pwd-input {
        width: 430px;
        padding: 0px;
        border-style: none;
        height: 62px;
        border-bottom: 3px solid #BCBCBC;
        /* 하단 테두리 설정 */
        border-top: none;
        /* 상단 테두리 제거 */
        border-left: none;
        /* 좌측 테두리 제거 */
        border-right: none;
        /* 우측 테두리 제거 */
        background-image: url(${pageContext.request.contextPath}/resources/image/pwdInput.png);
        background-size: 27px;
        background-position: 10px center;
        background-repeat: no-repeat;
        font-size: 20px;
        font-weight: 900;
        opacity: 0.7;
        padding-left: 50px;
    }

    #email-input {
        width: 430px;
        padding: 0px;
        border-style: none;
        border-radius: 0px 0px 15px 15px;
        height: 53px;
        background-image: url(${pageContext.request.contextPath}/resources/image/이메일.png);
        background-size: 30px;
        background-position: 10px center;
        background-repeat: no-repeat;
        font-size: 20px;
        font-weight: 900;
        opacity: 0.7;
        padding-left: 50px;
    }

    .name-phone-birth-gender {
        width: 440px;
        height: 282px;
        margin: 0 auto;
        border: 3px solid #BCBCBC;
        border-radius: 15px;
        padding: 0px;
        margin-bottom: 28px;
    }

    #name-input {
        width: 430px;
        padding: 0px;
        border-style: none;
        height: 70.5px;
        border-radius: 15px 15px 0px 0px;
        border-bottom: 3px solid #BCBCBC;
        /* 하단 테두리 설정 */
        border-top: none;
        /* 상단 테두리 제거 */
        border-left: none;
        /* 좌측 테두리 제거 */
        border-right: none;
        /* 우측 테두리 제거 */
        background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png);
        background-size: 30px;
        background-position: 10px center;
        background-repeat: no-repeat;
        font-size: 20px;
        font-weight: 900;
        opacity: 0.7;
        padding-left: 50px;
    }

    #phone-input {
        width: 430px;
        padding: 0px;
        border-style: none;
        height: 70.5px;
        border-radius: 0px;
        border-bottom: 3px solid #BCBCBC;
        /* 하단 테두리 설정 */
        border-top: none;
        /* 상단 테두리 제거 */
        border-left: none;
        /* 좌측 테두리 제거 */
        border-right: none;
        /* 우측 테두리 제거 */
        background-image: url(${pageContext.request.contextPath}/resources/image/폰.png);
        background-size: 30px;
        background-position: 10px center;
        background-repeat: no-repeat;
        font-size: 20px;
        font-weight: 900;
        opacity: 0.7;
        padding-left: 50px;
    }

    #birth-input {
        width: 430px;
        padding: 0px;
        border-style: none;
        height: 70.5px;
        border-radius: 0px;
        border-bottom: 3px solid #BCBCBC;
        /* 하단 테두리 설정 */
        border-top: none;
        /* 상단 테두리 제거 */
        border-left: none;
        /* 좌측 테두리 제거 */
        border-right: none;
        /* 우측 테두리 제거 */
        background-image: url('../../resources/image/달력.png');
        background-size: 30px;
        background-position: 10px center;
        background-repeat: no-repeat;
        font-size: 20px;
        font-weight: 900;
        opacity: 0.7;
        padding-left: 50px;
    }

    #submit-button {
        width: 430px;
        height: 71px;
        font-size: 40px;
        text-align: center;
        border-radius: 15px;
        border-style: none;
        background: #70C9A0;
        color: white;
        cursor: pointer;
    }

    .gender {
        width: 100%;
        height: 36px;
        margin-top: 10px;
    }

    #bottom-left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        font-size: 30px;
        color: #BCBCBC;
        border-right: 3px solid #BCBCBC;
    }

    #bottom-right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        font-size: 30px;
        color: #BCBCBC;
    }

    .gender input{
        height: 22px;
        width: 22px;
    }
</style>
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
    
    <!-- 메인 -->
    <div class="main">
        <div id="logo1"><img src="${pageContext.request.contextPath}/resources/image/loginlogo.png" alt=""></div>
        <div class="signup-area"></div>
            <fieldset class="id-pwd-email">
                <div><input type="text" placeholder="아이디" required id="id-input"></div>
                <div><input type="text" placeholder="비밀번호" required id="pwd-input"></div>
                <div><input type="text" placeholder="이메일" required id="email-input"></div>
            </fieldset>
            <fieldset class="name-phone-birth-gender">
                <div><input type="text" placeholder="이름" required id="name-input"></div>
                <div><input type="text" placeholder="전화번호" required id="phone-input"></div>
                <div><input type="text" placeholder="생년월일" required id="birth-input"></div>
                <div class="gender">
                    <div id="bottom-left"><input type="radio" name="gender" id="male"> 남자</a></div>
                    <div id="bottom-right"><input type="radio" name="gender" id="female"> 여자</a></div>
                </div>
            </fieldset>
            <div><button type="submit" id="submit-button" onclick="">회 원 가 입</button></div>
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
    </script>

    <!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>

</body>
</html>