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
    body {
        display: flex;
        justify-content: center;
        height: 1200px;
        position: relative;
    }

    #logo1{
        margin-top: 100px;
    }

    .signup-area{
        margin-top: 30px;
    }
    .main {
        width: 100%;
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
        background-image: url('../../resources/image/idInput.png');
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
        border-radius: 15px 15px 0px 0px;
        border-bottom: 3px solid #BCBCBC;
        /* 하단 테두리 설정 */
        border-top: none;
        /* 상단 테두리 제거 */
        border-left: none;
        /* 좌측 테두리 제거 */
        border-right: none;
        /* 우측 테두리 제거 */
        background-image: url('../../resources/image/pwdInput.png');
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
        border-radius: 15px;
        height: 53px;
        background-image: url('../../resources/image/이메일.png');
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
        background-image: url('../../resources/image/signupId.png');
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
        background-image: url('../../resources/image/폰.png');
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
    
    /* 헤더 */
            /*헤더 div*/
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
    <!-- 메인 -->
    <div class="main">
        <div id="logo1"><img src="../../resources/image/loginlogo.png" alt=""></div>
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

    <!-- 헤더 -->
    <div class="top" >        
        <button type="button"  id="categoryBtn"><!--<img src="${pageContext.request.contextPath}/img/categoryBtn.png" alt="aa" >--></button>
        <button type="button" id="logo"></button>
            
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

    <!-- 푸터 -->
    <div class="footer">
        <div id="footer-1">
            <div id="footer-1-box">
                <a href="">팀소개</a>|
                <a href="">이용약관</a>|
                <a href="">운영정책</a>|
                <a href="">개인정보처리방침</a>|
                <a href="">청소년보호정책</a>|
                <a href="">광고제휴</a>
            </div>
        </div>
        <div id="footer-2">
            <div>
                <p style="font-size: 15px; margin-top: 10px">황금(2조) 팀 정보</p>
                <p style="font-size: 12px; margin-top: 5px ">
                팀장 : 김도헌 | 
                형상관리자 : 이원기
                <br>
                DB관리자 : 임병준 | 
                일정관리자 : 장용준
                <br>
                이슈관리자 : 심규홍
            </p>
            </div>
            <div>
                <p style="font-size: 15px; margin-top: 10px">토스트뱅크 채무지급보증 안내</p>
                <p style="font-size: 12px; margin-top: 5px">
                    피씨그린은 회사가 직접 판매하는 상품에 한하여, 고객님의 현금 결제 금액에 대해<br>
                    토스트뱅크과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.</p>
                    <p style="font-size: 13px; margin-top: 5px ">Ⓒ PCGreen. Inc All rights reserved.</p>
            </div>
            <div>
                <p style="font-size: 15px; margin-top: 10px">고객센터 ></p>
                <p style="font-size: 24px;">1670-2910</p>
                <p style="font-size: 12px; margin-top: 5px">운영시간 9시 - 18시 (주말/공휴일 휴무, 점심시간 12시 50분 - 14시)</p>
            </div>
        </div>
    </div>
</body>
</html>