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
    
    .main{
        width: 100%;
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
        background-image: url('../../resources/image/idInput.png');
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
        background-image: url('../../resources/image/pwdInput.png');
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

    .footer{
        margin-top: 188px;
        width: 100%;
        height: 180px;
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
</style>
</head>
<body>
    <div class="main">
        <div><img src="../../resources/image/loginlogo.png" alt="" id="img1"></div>
        <div>
            <fieldset id="login-area">
                <p id="login-font">login</p>
                <div id="login-form"><input type="text" placeholder="아이디를 입력하세요" required id="id-input"></div>
                <div id="login-form"><input type="text" placeholder="비밀번호를 입력하세요" required id="pwd-input"></div>
                <div id="save-id"><input type="checkbox" name="save" id="save-checkbox" style="cursor: pointer;">  ID 기억하기</div><br><br>
                <div id="submit"><button type="submit" id="submit-button" onclick="">다음</button></div>
                <div class="bottom">
                    <div id="bottom-left"><a href="">아이디찾기</a></div>
                    <div id="bottom-right"><a href="">비밀번호찾기</a></div>
                    <div id="bottom-right"><a href="">회원가입</a></div>
                </div>
            </fieldset>
            <div class="footer">
                
            </div>
        </div>
    </div>
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
</body>
</html>