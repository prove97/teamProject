<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_mainPage</title>
	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    *{
        box-sizing: border-box;
    }
    body{
        display: flex;
        align-items: center;
        /* justify-content: center; */
        position: relative;
        overflow-x: auto;
    }
    .contentBox{
        width: 1151px;
        background-color: white;
        margin: auto;
        overflow-x: auto;
        overflow-y: auto;
    }
    ul, li, ol{
        list-style-type: none;
        padding: 0px;
        margin: 0px;
    }
    .category_header{
        margin: 0px auto;
        margin-top: 80px;
        width: 870px;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
    }
    .category_header div {
        display: flex;
        align-items: center;
    }
    .category_navi{
        height: 100%;
        position: absolute;
        left: 0px;
    }
    .category_bar1:hover{
        cursor: pointer;
    }
    .category_bar2:hover{
        cursor: pointer;
    }
    .category_bar1, .category_bar2{
        position: relative;
    }
    #categories1{
        display: none;
        position: absolute;
        border: 1px solid black;
        top: 14px;
        left: 74px;
        width: 175px;
        background-color: white;
    }
    #categories2_1{
        display: none;
        position: absolute;
        border: 1px solid black;
        top: 14px;
        left: 279px;
        width: 175px;
        background-color: white;
    }
    .report{
        position: absolute;
        right: 0px;
    }
    .main_part{
        display: flex;
        align-items: center;
        justify-content: center;
        margin: auto;
        width: 870px;
    }
    #airpod{
        width: 300px;
        height: 360px;
        margin: 30px 0px;
        border-radius: 10%;
        margin-right: 70px;
    }
    .post_info{
        display: flex;
        align-items: center;
        gap: 30px;
    }
    .post_info > div{
        font-size: 20px;
    }
    .buttons{
        display: flex;
        align-items: center;
        gap: 30px;
    }
    div > button:hover{
        cursor: pointer;
    }
    div > button{
        width: 140px;
        height: 60px;
        font-size: 20px;
        color: white;
    }
    #button1{
        background-color: darkgray;
        border: 0px;
    }
    #button2{
        background-color: mediumaquamarine;
        border: 0px;
    }
    #button3{
        background-color: mediumseagreen;
        border: 0px;
    }
    .seller_part{
        position: relative;
        display: flex;
        align-items: center;
        width: 870px;
        margin: 0px auto;
        font-size: 28px;
        gap: 15px;
    }
    #seller{
        width: 60px;
        height: 60px;
        border-radius: 50%;
        float: left;
    }
    .score{
        font-size: 14px;
        position: absolute;
        left: 300px;
    }
    #colored_score1{
        border: 1px solid black;
        width: 70px;
        height: 15px;
        border-top-left-radius: 25px;
        border-bottom-left-radius: 25px;
        background-color: mediumseagreen;
    }
    #empty_score1{
        border: 1px solid black;
        width: 50px;
        height: 15px;
        border-top-right-radius: 25px;
        border-bottom-right-radius: 25px;
    }
    .score_bar{
        display: flex;
        align-items: center;
    }
    .product_part{
        display: flex;
        align-items: center;
        justify-content: center;
        width: 870px;
        margin: 0px auto;
    }
    .product_status{
        float: left;
        line-height: 2;
    }
    table th{
        color: darkgray;
    }
    .product_info{
        float: right;
    }
    hr{
        margin: 20px auto;
        width: 870px;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .comment_part{
        margin: 30px auto;
        margin-top: 0px;
        width: 870px;
    }
    .comment_part > div{
        margin-bottom: 10px;
    }
    .comment_banner{
        margin: 0px auto;
        display: flex;
        gap: 50px;
        font-size: 22px;
        width: 870px;
        margin-bottom: 10px;
    }
    #opt1, #opt2{
        float: left;
    }
    #opt1 > b, #opt2 > b{
        text-decoration: none;
        color: gray;
        vertical-align: middle;
    }
    #opt1 > b{
        color: black;
    }
    #opt1:hover{
        cursor: pointer;
    }
    #opt2:hover{
        cursor: pointer;
    }
    .purchase_request{
        position: relative;
        border: 1px solid darkgray;
    }
    .purchase_method{
        position: absolute;
        left: 370px;
        /* align-items: start;
        justify-content: center; */
        color: gray;
        font-size: 20px;
    }
    .buyer{
        display: flex;
        position: relative;
    }
    .buyer_pic{
        width: 50px;
        height: 50px;
        margin-top: 30px;
        margin-left: 50px;
        border-radius: 50%;
        margin-right: 70px;
    }
    .buyer_name{
        position: absolute;
        left: 110px;
        top: 18px;
        font-size: 16px;
    }
    .score_bar2{
        display: flex;
        align-items: center;
        width: 100px;
        position: absolute;
        left: 110px;
        top: 60px;
    }
    .suggested_price{
        margin-left: 110px;
        font-size: 20px;
    }
    .time_of_writing1{
        position: absolute;
        right: 30px;
        bottom: 0px;
        color: gray;
    }
    #colored_score2{
        border: 1px solid black;
        width: 25px;
        height: 15px;
        border-top-left-radius: 25px;
        border-bottom-left-radius: 25px;
        background-color: mediumseagreen;
    }
    #empty_score2{
        border: 1px solid black;
        width: 95px;
        height: 15px;
        border-top-right-radius: 25px;
        border-bottom-right-radius: 25px;
    }
    .comment{
        border: 1px solid darkgray;
        width: 870px;
        position: relative;
        margin: 0px auto;
        margin-bottom: 10px;
    }
    .first_comment{
        position: absolute;
        top: 25px;
        left: 280px;
    }
    .time_of_writing2{
        position: absolute;
        right: 100px;
        top: 30px;
        color: gray;
    }
    .extension_button{
        position: absolute;
        top: 30px;
        right: 30px;
    }
    .reply{
        display: flex;
        align-items: center;
        margin-left: 100px;
        height: 50px;
    }
    .time_of_writing3{
        position: absolute;
        right: 100px;
        color: gray;
    }
    .comment{
        display: none;
    }
</style>
</head>
<body bgcolor="D9D9D9">
    <div class="contentBox">
        <%@ include file="../common/header.jsp" %>
        <br>
        <div class="category_header">
            <div class="category_navi">
                <div>🏠 홈</div>
                <div style="width: 30px; justify-content: center;">></div>
                <div class="category_bar1" style="border: 1px solid black; padding: 3px;" onclick="showCategories('categories1')">
                    <div style="width: 151px;">카테고리1</div>
                    <div>▽</div>
                </div>
                <ul id="categories1">
                    <li><a>컴퓨터 주요 부품</a></li>
                    <li><a>키보드.마우스.주변 기기</a></li>
                    <li><a>모니터.악세서리</a></li>
                    <li><a>프린터.복합기.스캐너</a></li>
                    <li><a>네트워크.공유기</a></li>
                </ul>
                <div style="width: 30px; justify-content: center;">></div>
                <div class="category_bar2" style="border: 1px solid black; padding: 3px;"  onclick="showCategories('categories2_1')">
                    <div style="width: 151px;">카테고리2</div>
                    <div>▽</div>
                </div>
                <ul id="categories2_1">
                    <li><a>CPU</a></li>
                    <li><a>메인보드</a></li>
                    <li><a>메모리</a></li>
                    <li><a>그래픽카드</a></li>
                    <li><a>SSD</a></li>
                    <li><a>하드디스크</a></li>
                    <li><a>ODD(외장/내장)</a></li>
                    <li><a>케이스</a></li>
                    <li><a>파워서플라이</a></li>
                    <li><a>공/수냉쿨러</a></li>
                </ul>
            </div>
            <div class="report">
                <a href="#">☏ 신고하기</a>
            </div>
        </div>
        
        <div class="main_part">
            <div>
                <img src="${pageContext.request.contextPath}/img/airpod.jpeg" alt="" id="airpod">
            </div>
            <div>
                <div><h2>에어팟 맥스</h2></div>
                <div><h1>500,000원</h1></div>
                <br><br>
                <div class="post_info">
                    <div style="color: mediumaquamarine;">♥ 2</div>
                    <div>👀 9</div>
                    <div>⏱️ 4일전</div>
                </div>
                <br>
                <div class="buttons">
                    <div><button id="button1">♥ 찜</button></div>
                    <div><button id="button2">댓글 달기</button></div>
                    <div><button id="button3">구매 신청</button></div>
                </div>
            </div>
        </div>
        
        <div class="seller_part">
            <div class="seller_part">
                <div>
                    <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" id="seller">
                </div>
                <div>
                    <p>판매자아이디</p>
                </div>
            </div>
            <div class="score">
                <div>
                    <p style="text-align: center; margin-bottom: 5px;">밝음 수치 40lux</p>
                </div>
                <div class="score_bar">
                    <!-- <div id="total_score"></div> -->
                    <div id="colored_score1"></div>
                    <div id="empty_score1"></div>
                </div>
            </div>
        </div>
        
        <div class="product_part">
            <div>
                <h3 style="font-size: 25px;">상품 설명</h3>
                <div class="product_status">
                    <table>
                        <tr>
                            <th>· 제품 상태 : </th>
                            <td>사용감 없음</td>
                        </tr>
                        <tr>
                            <th>· 교환 여부 : </th>
                            <td>교환 불가</td>
                        </tr>
                        <tr>
                            <th>· 거래 지역 : </th>
                            <td>인천시 연수구 송도1동</td>
                        </tr>
                        <tr>
                            <th>· 가격 제안 : </th>
                            <td>가능</td>
                        </tr>
                    </table>
                </div>
                <div class="product_info">
                    <pre>
                        세 달 정도 사용했습니다.
                        상태 S급, 외관상 기능상 하자 없어요
                        구성품 : 기기, 스마트 케이스
                        박스 및 충전기x

                        직거래 인천 송도
                        택배는 우체국 택배로 포장 꼼꼼히 해서 보냅니다
                        발송 전에 인증 사진 찍어드려요
                        택배 시 계좌이체 결제, 택배비 5천원 추가입니다.
                    </pre>
                </div>
            </div>
        </div>
        <hr>
        <div>
            <ul class="comment_banner">
                <li id="opt1" onclick="show_comment_part()"><b id="banner_opt1">구매 신청</b></li>
                <li id="opt2" onclick="show_comment()"><b id="banner_opt2">댓글</b></li>
            </ul>
        </div>
        <div class="comment_part" id="comment_banner_menu1">
            <div class="purchase_request">
                <p class="purchase_method">[직거래 신청]</p>
                <p class="time_of_writing1">2024.03.27 16:08</p>
                <div class="buyer">
                    <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" class="buyer_pic">
                    <p class="buyer_name">구매자 닉네임</p>
                    <div class="score_bar2">
                        <div id="colored_score1"></div>
                        <div id="empty_score1"></div>
                    </div>
                </div>
                <div class="suggested_price">
                    <p>구매 희망 가격 : 450,000원</p>
                </div>
            </div>
            <div class="purchase_request">
                <p class="purchase_method">[택배거래 신청]</p>
                <p class="time_of_writing1">2024.03.27 16:31</p>
                <div class="buyer">
                    <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" class="buyer_pic">
                    <p class="buyer_name">구매자 닉네임</p>
                    <div class="score_bar2">
                        <div id="colored_score2"></div>
                        <div id="empty_score2"></div>
                    </div>
                </div>
                <div class="suggested_price">
                    <p>구매 희망 가격 : 410,000원</p>
                </div>
            </div>
        </div>
        <div class="comment" id="comment_banner_menu2">
            <div class="buyer" style="margin-bottom: 20px;">
                <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" class="buyer_pic">
                <p class="buyer_name">구매자 닉네임</p>
                <div class="score_bar2">
                    <div id="colored_score1"></div>
                    <div id="empty_score1"></div>
                </div>
            </div>
            <div class="first_comment">
                <p style="font-size: 20px;">안녕하세요. 혹시 팔렸나요?</p>
            </div>
            <div>
                <p class="time_of_writing2">2024.03.27 16:08:37</p>
                <p class="extension_button">▽</p>
            </div>
            <div class="reply">
                <p>↳</p>
                <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin: 0px 5px;">
                <p class="comment_reply">아직 판매중입니다!</p>
                <p class="time_of_writing3">2024.03.27 16:09:02</p>
            </div>
            <div class="reply">
                <p>↳</p>
                <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin: 0px 5px;">
                <p class="comment_reply">사용 기간이 어떻게 되나요?</p>
                <p class="time_of_writing3">2024.03.27 16:11:26</p>
            </div>
            <div class="reply">
                <p>↳</p>
                <img src="${pageContext.request.contextPath}/img/seller.jpeg" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin: 0px 5px;">
                <p class="comment_reply">1주일 사용했습니다.</p>
                <p class="time_of_writing3">2024.03.27 16:15:17</p>
            </div>
        </div>
        <%@ include file="../common/footer.jsp" %>
    </div>

    <script>
        function showCategories(category) {
            const cate = document.getElementById(category);

            if (cate.style.display === "none") {
                cate.style.display = "block";
            } else {
                cate.style.display = "none";
            }
        }

        const comment_part = document.getElementById("comment_banner_menu1");
        const comment = document.getElementById("comment_banner_menu2");
        const opt1 = document.getElementById("banner_opt1");
        const opt2 = document.getElementById("banner_opt2");

        function show_comment_part() {
            comment_part.style.display = "block";
            comment.style.display = "none";
            banner_opt1.style.color = "black";
            banner_opt2.style.color = "gray";
        }

        function show_comment() {
            comment_part.style.display = "none";
            comment.style.display = "block";
            banner_opt1.style.color = "gray";
            banner_opt2.style.color = "black";
        }
    </script>
</body>
</html>