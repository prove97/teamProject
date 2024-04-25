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
            display: flex;
            justify-content: center;
            position: relative;
        }

        #mainSection {
            height: 1200px;
            width: 1151px;
            
            display: flex;
            flex-direction: row;
            align-items: flex-start;
            justify-content: space-between;

            margin-top: 82px;
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

        #menubar a{
            color: inherit;        
        }

        .nonStyle {
            color: black;
            text-decoration: none;
            list-style: none;
        }

        .nonStyle:hover {
            text-decoration: underline solid;
        }

        /*회원탈퇴 버튼*/
        #deleteMember{
            font-size: 17px;
            font-weight: bold;
        }

        /* 마이페이지 기본틀 */
        .main {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 900px;
            height: 965px;
            background: #D6EFE3;
            position: relative;

            border-radius: 15px;
        }

    </style>
</head>

<body>
    <jsp:include page="/views/common/header.jsp" />
    <section id="mainSection">
        <div id="aside">
            <div id="profile">
                <div id="profileImage"><a href="#"></a></div>
                <div id="nickname">${loginUser.getNickname()}</div>
                <div id="brightnessRate">
                    <h6>밝음 수치: ${loginUser.getScore()} lux</h6>
                    <div class="progress" style="width: 150px; border: 1px solid darkgray; border-radius: 10px;">
                        <div class="progress-bar" style="width:${loginUser.score}%; background: #70C9A0;"></div>
                    </div>
                </div>
            </div>
            <div id="menubar">
                <a href="${pageContext.request.contextPath}/indexToMyPage.my" class="nonStyle"><strong>내정보</strong></a>
                <ul>
                    <strong>나의 활동</strong>
                    <li><a href="${pageContext.request.contextPath}/indexToTradeHistory.my?cpage=1&selected=all" class="nonStyle">나의 판매글</a></li>
                    <li><a href="${pageContext.request.contextPath}/indexToCommentHistory.my?cpage=1" class="nonStyle">나의 댓글</a></li>
                    <li><a href="${pageContext.request.contextPath}/indexToLike.my?cpage=1" class="nonStyle">찜목록</a></li>
                </ul>
                <ul>
                    <strong>문의사항</strong>
                    <li><a href="${pageContext.request.contextPath}/opo.fa" class="nonStyle">1:1문의</a></li>
                    <li><a href="${pageContext.request.contextPath}/indexToFaq.fa" class="nonStyle">자주묻는질문</a></li>
                    <li><a href="${pageContext.request.contextPath}/list.fa" class="nonStyle">신고내역</a></li>
                </ul>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/deleteForm.my" id="deleteMember">회원탈퇴</a></li>
                </ul>


            </div>
        </div>
        
        <c:if test="${not empty changeUrl}">
            <jsp:include page="${changeUrl}" />		
        </c:if>        
        
    </section>

    <jsp:include page="/views/common/footer.jsp" />

    
</body>

</html>