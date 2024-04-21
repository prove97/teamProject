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

        .main {
            width: 1151px;
            height: auto;
        }

        .FAQ-title {
            margin-top: 140px;
            margin-bottom: 65px;
            width: 100%;
            height: 48px;
            cursor: pointer;
        }

        .FAQ-area {
            display: flex;
            justify-content: space-between;
            flex-direction: column;
            width: 831px;
            height: 70px;
            margin: 0 auto;
            cursor: pointer;
        }

        #FAQ1 {
            width: 798px;
            height: 70px;
            border: 1px solid #D9D9D9;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
            position: relative;
        }

        #FAQ1 p {
            margin-right: auto; /* 맨 왼쪽으로 정렬 */
        }

        .hidden {
            display: none;
            height: 110px;
            background: #D6EFE3;
            border-radius: 5px;
            position: absolute;
            top: 70px;
            left: 0;
            width: 100%;
        }

        .footer {
            width: 1151px;
            height: 120px;
            margin: 0 auto;
            bottom: 0px;
            position: absolute;
            background: white;
        }

        #footer-1 {
            height: 48px;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            display: flex;
            justify-content: center;
        }

        #footer-1-box {
            width: 625px;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        #footer-1 a {
            text-decoration: none;
            color: black;
        }

        #footer-2 {
            display: flex;
            justify-content: space-around;
        }

        #footer-2 div:nth-child(1) p,
        #footer-2 div:nth-child(2) p,
        #footer-2 div:nth-child(3) p {
            margin: 0;
        }
    </style>
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
    <!-- 메인 -->
    <div>
        <div class="FAQ-title">
            <h1 id="title-text">나의 문의내역</h1>
        </div>
        <div class="FAQ-area" onclick="toggleFAQ()">
            <div id="FAQ1">
                <p align="left" style="font-size: 25px; margin-top: 13px;">제목 : ${ }</p> 
                <div align="right"><span style="padding: 6px; border: 2px solid #FFB800; color: #FFB800; border-radius: 10px;">답변대기</span><span id="icon1">▽</span></div>
                <div class="hidden">
                    <p style="padding-left: 36px; padding-bottom: 20px; font-size: 20px;">운영자 답변</p>
                    <p style="padding-left: 36px; font-size: 15px;">내용 : </p>
                </div>
            </div>
        </div>
    </div>
    <script>
        function toggleFAQ() {
            var hiddenDiv = document.querySelector('.hidden');
            var icon = document.getElementById('icon1');

            if (hiddenDiv.style.display === 'none' || hiddenDiv.style.display === '') {
                hiddenDiv.style.display = 'block';
                icon.innerHTML = '△'; // 올림차순 아이콘으로 변경
            } else {
                hiddenDiv.style.display = 'none';
                icon.innerHTML = '▽'; // 내림차순 아이콘으로 변경
            }
        }
    </script>
</body>
</html>