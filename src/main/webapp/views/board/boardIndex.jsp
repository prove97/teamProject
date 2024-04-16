<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>

        <style>
            body{
                display: flex;
                flex-direction: column;
                align-items: center;

                height: auto;

                position: relative;
            }
            
            #pull {
                width: 1151px;
                height: 1080px;
                display: flex;
                flex-direction: column;
                align-items: center;
                position: relative;
            }

            .border-border {
                border: 0.5px solid #D9D9D9;
                padding: 0px 10px;
            }

            .border-border-border {
                border: 0.5px solid #D9D9D9;
                border-radius: 20px 20px 20px 20px / 20px 20px 20px 20px;
            }

            #mainSection {
                height: 960px;
                width: 1151px;

                margin: auto;
                margin-top: 72px;

            }

            #bestListTitle {
                font-size: 25px;
            }

            .bestListTitle {
                font-size: 20px;
            }

            .bestListNum-left {
                background: orange;
                height: 23px;
                width: 23px;

                font-weight: 500;
                text-align: center;

            }

            .bestListNum-right {
                background: #999999;
                height: 20px;
                width: 20px;

                font-weight: 500;
                text-align: center;
            }

            #bestListTitle+div {
                display: flex;
                justify-content: space-between;
            }

            #bestListTitle>hr {
                background: orange;
                height: 2px;
                border: 0;
            }

            /* 메인 카테고리 */
            #categorySelectTab th {
                border: 0.8px solid #D9D9D9;
                height: 20px;
                width: 65px;
            }

            .bunlyu {
                border: 1px solid #70C9A0;
                background: #70C9A0;
                padding: 3px;
                border-radius: 30px 30px 30px 30px / 30px 30px 30px 30px;
            }

            .sedbar-left {
                border-left: 0.8px solid #D9D9D9;
                border-top: 0.8px solid #D9D9D9;
            }

            .sedbar-top {
                border-top: 0.8px solid #D9D9D9;
            }

            .sedbar-top > a{
                text-decoration: none;
                color: black;
            }
            

            .footerSpace{
                height: 160px;
            }
            
            /* 오늘의 BEST 랭킹 */
            .list1-10{
                padding-right: 70px;
                padding-bottom: 20px;
                margin: 5px;
            }

            /* 추천 행 */
            #cncjs{
                border: 0.8px solid #999999; 
                width: 30px;
                border-radius: 10px 10px 10px 10px / 10px 10px 10px 10px;
                margin: 5px 0px;
            }

            /* 잡담 행 */
            #wkqeka{
                border-radius: 10px 10px 10px 10px / 10px 10px 10px 10px;
                background: #70C9A0; 
                width: 70px;
            }
            
        </style>
    </head>

    <body>
        <%@ include file="/views/common/header.jsp" %>
        <div id="pull">
            <section id="mainSection" class="">
                <div id="bestList" >
                    <div class="border-border">
                        <div id="bestListTitle" style="width: 575px; margin-top: 20px;">오늘의 BEST
                            <hr>
                        </div>
                        <div class="list1-10">
                            <table>
                                <tr>
                                    <td class="bestListNum-left">1</td>
                                    <td class="bestListTitle">차단된 회원 게시물입니다</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-left">2</td>
                                    <td class="bestListTitle">이거 범인 잡을 수 있을까요?</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-left">3</td>
                                    <td class="bestListTitle">저도 사기를 당하고 말았네요..ㅠ</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-left">4</td>
                                    <td class="bestListTitle">메인보드 신품 주문했더니 중고로 주네요</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-left">5</td>
                                    <td class="bestListTitle">중고컴퓨터 담배냄새 제거후기</td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td class="bestListNum-right">6</td>
                                    <td class="bestListTitle">모니터암에 충돌경고문구 있어야 하지 않나요?</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-right">7</td>
                                    <td class="bestListTitle">잇섭 X 아톰에디션 하자 상품 교환 배송 사후 처리 ···</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-right">8</td>
                                    <td class="bestListTitle">왜 테크유튜버들은 혐판을 따라가는거죠</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-right">9</td>
                                    <td class="bestListTitle">알리 쇼핑 중독이 무섭네요</td>
                                </tr>
                                <tr>
                                    <td class="bestListNum-right">10</td>
                                    <td class="bestListTitle">알리 세일 다들 잘 즐기셨나요</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="main">
                        <div id="categorySelectTab" style="padding: 8px 0px;">
                            <table>
                                <tr>
                                    <th style="background: #70C9A0;">베스트</th>
                                    <th>전체</th>
                                    <th>잡담</th>
                                    <th>정보</th>
                                    <th>질문</th>
                                    <th>인사</th>
                                </tr>
                            </table>
                        </div>
                        <div id="boardList" class="" align="center">
                            <table style="width: 1151px; padding-bottom: 8px;">
                                <tr align="center">
                                    <td width="36">추천</td>
                                    <td width="90">분류</td>
                                    <td width="310">제목</td>
                                    <td width="90">닉네임</td>
                                    <td width="90">조회수</td>
                                    <td width="90">날짜</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                <tr class="border-border">
                                    <td align="center"> <div id="cncjs">0</div> </td>
                                    <td align="center"> <div id="wkqeka">잡담</div> </td>
                                    <td class="sedbar-top">&nbsp;&nbsp;&nbsp; <a href="">퀘존앱은 로그인 기능이 없나요?</a> </td>
                                    <td align="center" class="sedbar-left">Dodle</td>
                                    <td align="center" class="sedbar-left">25</td>
                                    <td align="center" class="sedbar-left">03-25</td>
                                </tr>
                                
                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="footerSpace"></div>
        <%@ include file="/views/common/footer.jsp" %>
    </body>

    </html>