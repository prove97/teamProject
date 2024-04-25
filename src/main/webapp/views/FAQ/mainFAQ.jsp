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

    /*  메인div  */
    .main{
        width: 1151px;
        height: auto;
    }

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
        border-style: none;
        background: #D6EFE3;
        border-radius: 5px;
        padding-top: 20px;
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
    <%@ include file="/views/common/header.jsp" %>
    <!-- 메인 -->
    <div>
        <div class="FAQ-title">
            <h1 id="title-text">자주 묻는 질문</h1>
        </div>
        <div class="FAQ-area">
            <div id="FAQ1" onclick="toggleFAQ('1')">
                <p style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">광고성 콘텐츠(상점)에요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <div style="padding-left: 36px; color: black; font-size: 20px;" >A : 1:1 게시글을 통해 사진과함께 문의 주시면 확인 후 정지 처리하겠습니다 감사합니다. </div>
                </div>
            </div>
            <div id="FAQ2" onclick="toggleFAQ('2')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">상품 정보가 부정확해요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px;color: black; font-size: 20px;">
                        A : 사기품일 가능성이 높으니 본인을 인증할 수 있는 증거와 함께 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            상품의 사진을 요구하시길 바랍니다 감사합니다.
                    </p>
                </div>                                     
            </div>
            <div id="FAQ3" onclick="toggleFAQ('3')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">거래 금지 품목으로 판단돼요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; color: black; font-size: 20px;">A : 판매 안하시면됩니다 감사합니다.</p>
                    <p style="padding-left: 36px; color: black; font-size: 20px;">B : 1:1 게시글을 통해 사진과함께 문의 주시면 확인 후 정지 처리하겠습니다 감사합니다. </p>
                </div>                                     
            </div>
            <div id="FAQ4" onclick="toggleFAQ('4')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">사기가 의심돼요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; color: black; font-size: 20px;">
                        A : 사기전적이 있는지 알아볼 수 있는 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <a href="https://thecheat.co.kr/rb/?mod=_search">https://thecheat.co.kr/rb/?mod=_search</a> 
                        으로 접속후 <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;확인하시길 바랍니다 감사합니다.</p>
                </div>                                     
            </div>
            <div id="FAQ5" onclick="toggleFAQ('5')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">전문 업자 같아요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style=" padding-left: 36px; color: black; font-size: 20px;">A : 1:1 게시글을 통해 사진과함께 문의 주시면 확인 후 정지 처리하겠습니다 감사합니다. </p>
                </div>                                     
            </div>
            <div id="FAQ6" onclick="toggleFAQ('6')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">욕설 / 비방 / 혐오표현을 해요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px; color: black; font-size: 20px;">A : 1:1 게시글을 통해 사진과함께 문의 주시면 확인 후 정지 처리하겠습니다 감사합니다. </p>
                </div>                                     
            </div>
            <div id="FAQ7" onclick="toggleFAQ('7')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">부적절한 성적 행위(발언)를 해요.</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px;color: black; font-size: 20px;">A : 1:1 게시글을 통해 사진과함께 문의 주시면 확인 후 정지 처리하겠습니다 감사합니다. </p>
                </div>                                     
            </div>
            <div id="FAQ8" onclick="toggleFAQ('8')">
                <p onclick="" style="padding: 20px 0px 20px 36px; font-size: 20px; color: #545454; font-weight: bold;
                                     cursor: pointer;">기타</p>
                <div class="hidden">
                    <!-- <p style="padding: 27px 0px 30px 36px; font-size: 20px; color: #545454; font-weight: bold;">광고성 콘텐츠(상점)에요.</p> -->
                    <p style="padding-left: 36px;color: black; font-size: 20px;">A : 1:1 문의를 주시면 차례대로 답변해드리고있습니다 감사합니다.</p>
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
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>