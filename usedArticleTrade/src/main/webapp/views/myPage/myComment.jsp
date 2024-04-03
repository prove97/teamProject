<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>profile</title>
    <!-- <link rel="stylesheet" href="resources/style/index.css">
<link rel="stylesheet" href="resources/style/mainSection.css">
<link rel="stylesheet" href="resources/style/aside.css"> -->

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
            height: 1400px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;

        }

        .top{ 
            z-index: 1;
                       
        }
            
        .footer{
            
        }

        #mainSection {
            height: 960px;
            width: 1151px;
            
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;

            margin: auto;
            margin-top: 72px;
            padding-top: 10px;

        }

        input {
            border: none;
            border-bottom: 1px solid black;
        }

        /*사이드 구역 */
        #aside {
            width: 240px;
            height: 940px;
        }

        /*프로필*/
        #profile {
            width: 241px;
            height: 326px;
            border: 1px solid black;
            border-radius: 15px;

            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-around;

        }

        #profile>div {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #profileImage {
            background-image: url(${pageContext.request.contextPath}/img/sample1.png);

            width: 150px;
            height: 150px;

            border: 1px solid black;
            border-radius: 100%;

            margin-top: 20px;

            text-align: center;
            line-height: 150px;            
        }


        #profileImage:hover{
            filter: brightness(40%);
        }

        #profile>#nickname {
            font-size: 24px;
        }


        #brightnessRate>h6 {
            margin: 5px 0;
        }

        /* 사이드 메뉴바 */
        #menubar {
            height: 100px;
            margin-top: 20px;
            display: flex;
            flex-direction: column;

            padding: 0 23px;
        }

        #menubar * {
            font-size: 21px;
            padding: 13px 0;
        }

        #menubar strong {
            font-size: 24px;
        }

        #menubar ul {
            margin: 0;
            margin-top: 10px;
        }

        #menubar li {
            list-style: none;
        }

        .nonStyle {
            color: black;
            text-decoration: none;
            list-style: none;
        }

        .nonStyle:hover {
            text-decoration: underline solid;
        }

        /* 메인창 */
        #main {
            width: 900px;
            height: 965px;
            background: #D6EFE3;

            display: flex;
            justify-content: center;
            align-items: center;

        }

        #innerMain{
            width: 846px;
            height: 876px;
            background-color: white;

            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #menuName{
            width: 90%;
            height: 120px;

            text-align: left;
            line-height: 150px;

            padding-left: 20px;

            font-size: 30px;
        }

        #border-radius{
            width: 90%;
            height: 90%;
        }

        #border-radius th{
            font-size: 20px;
            text-align: center;

            border-top: 2px solid black;
        }

        .firstTd{
            border-top: 0.1px solid rgb(187, 187, 187);
        }
        
        .secondTd{
            border-bottom: 0.1px solid rgb(187, 187, 187);
            height: 40px;

        }
        .comments{
            font-size: 20px;
            text-align: left;
            padding-left: 20px;
            height: 60px;

        }
        
        .boards{
            font-size: 15px; 
            color: #b3b3b3;           
            text-align: left;   
            padding-left: 20px;
            height: 40px;

        }



        
    </style>
</head>

<body>
    <%@ include file="/views/common/header.jsp" %>
    <section id="mainSection">
        <div id="aside">
            <div id="profile">
                <div id="profileImage"><a href="#"></a></div>
                <div id="nickname">
                    user01
                </div>
                <div id="brightnessRate">
                    <h6>밝음 수치: 70 lux</h6>
                    <div class="progress" style="width: 150px; border-radius: 10px;">
                        <div class="progress-bar" style="width:70%; background: #70C9A0;"></div>
                    </div>
                </div>
            </div>
            <div id="menubar">
                <a href="profile.jsp" class="nonStyle"><strong>내정보</strong></a>
                <ul>
                    <strong>나의 활동</strong>
                    <li><a href="salesPost.jsp" class="nonStyle">나의 판매글</a></li>
                    <li><a href="myComment.jsp" class="nonStyle">나의 댓글</a></li>
                    <li><a href="heart.jsp" class="nonStyle">찜목록</a></li>
                </ul>
                <ul>
                    <strong>문의사항</strong>
                    <li><a href="#" class="nonStyle">1:1문의</a></li>
                    <li><a href="#" class="nonStyle">자주묻는질문</a></li>
                    <li><a href="#" class="nonStyle">신고내역</a></li>
                </ul>
            </div>
        </div>

        <div id="main">
            <div id="innerMain">
                <div id="menuName">나의 댓글</div>
                <div id="border-radius">
                    <table align="center">
                        <tr height="50px">
                            <th width="560px">제목</th>
                            <th width="200px">작성일</th>
                        </tr>
                        <%for(int i=0; i<6; i++) {%>
                        <tr class="firstTd">
                            <td class="comments">퇴근 후 7시에 가능합니다.</td>
                            <td rowspan="2" align="center">2024.03.04</td>
                        </tr>
                        <tr class="secondTd">
                            <td class="boards">게시글: 에어팟 맥스 팝니다.</td>
                        </tr>
                        <%} %>

                    </table>
                </div>
                
                
            </div>
            
        </div>
    </section>
    <%@ include file="/views/common/footer.jsp" %>            
</body>

</html>