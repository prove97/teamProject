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
    
    .log{
        width: 1151px;
        height: 100%;
        text-align: center;
    }

    #img1{
        width: 267px;
        height: 167px;
        margin-top: 137px;
        margin-bottom: 25px;
    }

    #login-area{
        width: 430px;
        height: 400px;
        margin: 0 auto;
        border: 3px solid #B5B5B5;
        border-radius: 20px;
    }

    #login-font{
        color: #8A8A8A;
        font-size: 40px;
        margin-top: 0px;
        font-weight: 900;
        margin-bottom: 38px;
    }

    #id-input{
        width: 290px;
        height: 42px;
        background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png);
        background-size: 28px;
        border-radius: 15px;
        border: 3px solid #8A8A8A;
        background-position: 10px center;
        padding-left: 50px;
        background-repeat: no-repeat;
        font-size: 15px;
        margin-bottom: 32px;
        font-weight: 900;           
        opacity: 0.7;
    }

    #pwd-input{
        width: 290px;
        height: 42px;
        background-image: url(${pageContext.request.contextPath}/resources/image/pwdInput.png);
        background-size: 23px;
        border-radius: 15px;
        border: 3px solid #8A8A8A;
        background-position: 10px center;
        padding-left: 50px;
        background-repeat: no-repeat;
        font-size: 15px;
        margin-bottom: 32px;
        font-weight: 900;           
        opacity: 0.7;
    }

    #save-id{
        float: left;
        margin-left: 50px;
        font-size: 16px;
        line-height: 24px;
        font-weight: 500;
        color: #8A8A8A;
        cursor: pointer;
    }
    #save-id > input[type="checkbox"]{
        width: 22px;
        height: 22px;
        vertical-align: middle;
        -webkit-appearance: none; /* 기본 체크박스 스타일 제거 */
        -moz-appearance: none;
        appearance: none;
        background-color: #8A8A8A; /* 체크박스의 배경색 */
        border-radius: 50%; /* 동그란 형태를 위해 경계 반지름 설정 */
        vertical-align: middle; /* 체크박스를 폰트의 가운데로 정렬 */
    }

    /* 체크된 상태의 커스텀 체크박스 디자인을 설정합니다 */
    #save-id > input[type="checkbox"]:checked {
    background-color: #70C9A0; /* 체크된 상태의 배경색 */   
    }  
    
    #submit-button{
        width: 200px;
        height: 40px;
        color: white;
        background: #70C9A0;
        border-radius: 15px;
        border-style: none;
        opacity: 0.6;
        font-size: 20px;
        margin-bottom: 13px;
        cursor: pointer;
    }

    .bottom{
        width: 100%;
        height: 36px;
        border: 1px solid none;
        color: black;
        margin-top: 10px;
    }
    #bottom-left{
        width: 33%;
        float: left;
        box-sizing: border-box;
        padding-left: 10px;
    }
    #bottom-mid{
        width: 34%;
        box-sizing: border-box;
    }
    #bottom-right{
        width: 33%;
        float: right;
        box-sizing: border-box;
        padding-right: 10px;
    }

    #bottom-left a,
    #bottom-mid a,
    #bottom-right a {
    color: black; /* 링크의 색상을 검은색으로 지정 */
    }
</style>
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