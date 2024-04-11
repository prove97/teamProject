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
    /*  헤더div  */
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



    /*  메인div  */
    .FAQ-title{
        margin-top: 140px;
        margin-bottom: 65px;
        width: 100%;
        height: 48px;
    }

    .FAQ-area{
        width: 831px;
        height: 685px;
        margin: 0 auto;
    }

    #FAQ1{
        width: 100%;
        height: 70px;
        border: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ2{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ3{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ4{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ5{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ6{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ7{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    #FAQ8{
        width: 100%;
        height: 70px;
        border-bottom: 1px solid #D9D9D9;
        border-left: 1px solid #D9D9D9;
        border-right: 1px solid #D9D9D9;
        border-radius: 5px;
    }

    .hidden {
        display: none;
        height: 110px;
        width: 831px;
        border: 1 none none;
        border-style: none;
        background: #D6EFE3;
        border-radius: 5px;
    }



    /*  푸터div  */
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

    <!-- 메인 -->
    <div>
        <div class="FAQ-title">
            <h1 id="title-text">문 의 하 기</h1>
        </div>
        <div class="FAQ-area">
            <div id="FAQ1" onclick="toggleFAQ('1')">
                <p style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">광고성 콘텐츠(상점)에요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>
            </div>
            <div id="FAQ2" onclick="toggleFAQ('2')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">상품 정보가 부정확해요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
            <div id="FAQ3" onclick="toggleFAQ('3')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">거래 금지 품목으로 판단돼요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
            <div id="FAQ4" onclick="toggleFAQ('4')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">사기가 의심돼요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
            <div id="FAQ5" onclick="toggleFAQ('5')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">전문 업자 같아요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
            <div id="FAQ6" onclick="toggleFAQ('6')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">욕설 / 비방 / 혐오표현을 해요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
            <div id="FAQ7" onclick="toggleFAQ('7')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">부적절한 성적 행위(발언)를 해요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
            <div id="FAQ8" onclick="toggleFAQ('8')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">기타</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; padding-bottom: 20px; color: #F24E1E;">상점 및 타사이트 홍보</p>
                    <p style="padding-left: 36px; color: #F24E1E;">상품도배</p>
                </div>                                     
            </div>
        </div>
    </div>
    <script>
        function toggleFAQ(num) {
            var faq = document.getElementById('FAQ' + num);
            var hiddenDiv = faq.querySelector('.hidden');
    
            if (hiddenDiv.style.display === 'none' || hiddenDiv.style.display === '') {
                hiddenDiv.style.display = 'block';
                faq.style.height = 'auto';
                faq.style.width = '831px';
                faq.style.border = '1px none none';
                faq.style.background = '#D6EFE3';
            } else {
                hiddenDiv.style.display = 'none';
                faq.style.height = ''; // 기본값으로 변경
                faq.style.width = ''; // 기본값으로 변경
                faq.style.border = ''; // 기본값으로 변경
                faq.style.background = ''; // 기본값으로 변경
            }
        }
    </script>
    <!-- <script>
        function toggleFAQ(id) {
            var faq = document.getElementById(id);
            var hiddenDiv = faq.querySelector('.hidden');
        
            // 만약 hidden 클래스가 존재한다면
            if (hiddenDiv.style.display === 'none') {
                // 보이게 함
                hiddenDiv.style.display = 'block';
            } else {
                // 숨김
                hiddenDiv.style.display = 'none';
            }
        }
        </script> -->

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