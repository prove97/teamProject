<!DOCTYPE html>
<html lang="ko">
<head>
	
    <meta charset="UTF-8">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>footer</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    .footer{
        width: 1151px;
        height: 120px;
        margin: 0 auto;
        bottom: 0;
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
<body>
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