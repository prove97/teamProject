<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        display: flex;
        flex-direction: column;
        align-items: center;
        height: auto;
        position: relative;
    }
    
    /* 전체를 감싸는 div */
    #All{
        width: 1151px;
        height: 1142px;
        border: 0.8px solid #d9d9d9;
        margin: 0 auto;
    }

    /* 모든 a태그 */
    a{
        text-decoration-line: none;
        color: black;
    }

    /* 광고창 밑 검색창,시간 */

    #catebar-head{
        margin: -4px 0px 0px 45px;
    }

    /* border만 준거 */
    .bobo{
        border: 0.8px solid #d9d9d9;
        width: 1006px;
        margin: auto;
        padding: 10px; /* 내부 여백 추가 */
    }

    /* 돋보기사진 */
    #eheqhrl{
        border: 3px solid orange; 
        background: orange; 
        margin: 2px 0px -3px -28px;
        padding: -5px 5px 0px 5px;
        width: 54px; 
        height: 42px;
    }

    /* 광고밑 검색어 옆 글귀 폰트및 크기 */
    #catebar-head  tr  td{
        font-size: 20px;
        font-weight: 500;
    }

    /* 자유게시판 틀 */
    #catebar-body1{
        border: 0.8px solid #d9d9d9;
        width: 1055px;
        margin: auto;
    }
    
    /* 자유게시판 글 폰트 */
    #catebar-body1  td{
        font-size: 25px;
    }

    /* 공지있는 틀 */
    #catebar-body1_1{
        border: 0.8px solid #d9d9d9;
        width: 1055px;
        margin: -1px 0px 0px 48px;
    }

    /* 공지 */
    .rhdwl{
        width: 59px; 
        background: orange; 
        color: white;
        padding: 0px;
    }

    /* 게시글 등록창 */
    #catebar-body2 {
        border: 0.8px solid #d9d9d9;
        width: 1055px;
        margin: auto;
        position: relative; /* position 속성 추가 */
    }

        #catebar-body2::before {
        content: ""; /* 가상 요소 생성 */
        display: block;
        height: 20px; /* 원하는 공간의 높이로 설정하세요 */
        }


    /* 맨 밑 */
    .footerSpace{
        height: 160px;
    }

    

</style>

</head>
<body>
    <%@ include file="/views/common/header.jsp" %>
    <div id="All">
        <thead id="head">
            <img src="../" alt="광고배너" style="width: 1150px; height: 148px; box-shadow: 0px 10px 10px -10px #000; margin-top: 61px;">                                       
            <div>
                <table id="catebar-head" style="width: 1055px;">
                    <tr>
                        <td> <input type="text" placeholder="검색어를 입력해 주세요."  style="width: 493px; height: 45px; border: 0.8px solid #d9d9d9; margin-top: 7px;"></td>
                        <td><img src="../../resources/image/banner.png" alt="돋보기" id="eheqhrl"></td>
                        <td align="right" style="">
                            <select name="" class="" style="color: orange; border: none; width: 250px; height: 26px;">
                            <option disabled selected>5 PNY XLR8 지포···</option>
                            <option value="">5 PNY XLR8 지포···</option>
                            <option value="">5 PNY XLR8 지포···</option>
                            <option value="">5 PNY XLR8 지포···</option>
                            <option value="">5 PNY XLR8 지포···</option>
                          </select>
                        </td>
                        <td align="right" style="">22:16:41 | D-0 23:43:19 </td>
                    </tr>
                </table>
            </div>
            <br>
        </thead>
        <tbody>
            <div>
                <table id="catebar-body1">
                    <tr style="height: 78px;">
                        <td align="center">자유게시판 - 하드웨어/게임 관련 질문은 질문/토론 게시판을 이용해 주세요 :D</td>
                    </tr>
                </table>
            </div>
            <div>
                <table id="catebar-body1_1">
                    <tr>
                        <td align="center" class="rhdwl">공지</td>
                        <td style="height: 37px; padding: 0px 20px;"><a href="" style="color: black;">퀘이사존 전체 게시판 공통 규정(23.10.31)</a></td>
                        <td></td>
                        <td align="center">퀘이사존  |  31k  |  11-01</td>
                    </tr>
                </table>
            </div>
            <br>
            <div id="catebar-body2" style="padding: 5px 20px;">
                <table>
                        <div style="display: flex; justify-content: space-between;">
                            <select name="" class="" style="border: 0.8px solid #d9d9d9; width: 125px; height: 33px;">
                                <option disabled selected align="center">카테고리</option>
                                <option value="">5 PNY XLR8 지포···</option>
                                <option value="">5 PNY XLR8 지포···</option>
                                <option value="">5 PNY XLR8 지포···</option>
                                <option value="">5 PNY XLR8 지포···</option>
                            </select>
                        
                        <button style="border: 0.8px solid #d9d9d9; width: 100px; height: 35px; background: white;" align="right">저장 (2)</button>
                    </div>

                    <div style="display: flex;  padding-top: 15px;">
                        <div style="font-size: 16px; width: 200px; height: 43px; border: 0.8px solid #d9d9d9; padding: 10px 0px; margin-right: 20px;">
                            <input type="checkbox" style="margin:0px 10px;">메인 베스트 등록 금지
                        </div>
                                            
                        <div style="font-size: 16px; width: 215px; height: 43px; border: 0.8px solid #d9d9d9; padding: 10px 0px;">
                            <input type="checkbox" style="margin:0px 10px;">게시판 베스트 등록 금지
                        </div>
                    </div>

                    <tr>
                        <td  class="bobo" style="border: none;">
                            <div style="width: 00px;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;"><strong>제목을 입력하세요</strong> </td>
                    </tr>
                </table>

                <hr style="border: 1px solid #d9d9d9; width: 1004px; margin: 20px 0px;"align="center">
                
                <div style="width: 1006px; cursor: pointer; position: relative;">
                    <textarea name="" id="customTextarea" cols="135" rows="10" style="width: 100%; box-sizing: border-box; border: 0.8px solid #d9d9d9; resize: none; z-index: 1;"></textarea>
                    
                    <div id="placeholder" style="position: absolute; top: 10px; left: 10px; pointer-events: none; z-index: 0;">
                        <span style="color: #29C379;">자유게시판은 PC관련 질문 강력히 금지</span>합니다.<span style="color: #29C379;"></span><br>
                        하드웨어/게임/OS/인터넷 등의 주제는<span style="color: #29C379;">질문/토론 게시판</span>을 이용해 주세요.
                    </div>
                </div>
                
                <div style="display: flex; justify-content: center; align-items: center; padding-top: 15px;">
                    <div style="margin-right: 10px;"><button style="color: white; background: orange; border: none; height: 30px;">작성완료</button></div>
                    <div><button style="background: white; border: 0.8px solid #d9d9d9; height: 30px;">취소</button></div>
                </div>
                
                <script>
                    // textarea의 내용이 변경될 때마다 placeholder 숨기기/표시하기
                    document.getElementById('customTextarea').addEventListener('input', function() {
                        const placeholderDiv = document.getElementById('placeholder');
                        if (this.value.length > 0) {
                            placeholderDiv.style.display = 'none';
                        } else {
                            placeholderDiv.style.display = 'block';
                        }
                    });
                </script>
        </tbody>
    </div>
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>