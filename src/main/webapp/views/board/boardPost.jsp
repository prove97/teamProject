<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        width: 100px;
        height: 20px;

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
    #catebar-body2{
        border: 0.8px solid #d9d9d9;
        width: 1055px;
        margin: -1px 0px 0px 48px;
    }


    /* 맨 밑 */
    .footerSpace{
        height: 160px;
    }

</style>

</head>
<body >
    <%@ include file="/views/common/header.jsp" %>
    <div id="All">
        <thead id="head">
            <img src="https://pbs.twimg.com/media/EA9UJBjU4AAdkCm.jpg" alt="광고배너" style="width: 1150px; height: 148px; box-shadow: 0px 10px 10px -10px #000; margin-top: 61px;">                                       
            <div>
                <table id="catebar-head" style="width: 1055px;">
                    <tr>
                        <td> <input type="text" placeholder="검색어를 입력해 주세요."  style="width: 493px; height: 45px; border: 0.8px solid #d9d9d9; margin-top: 7px;"></td>
                        <td><img src="https://cdn-icons-png.flaticon.com/512/71/71403.png" alt="돋보기" id="eheqhrl"></td>
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
                        <td style="height: 37px; padding: 0px 20px;"><a href="">퀘이사존 전체 게시판 공통 규정(23.10.31)</a></td>
                        <td></td>
                        <td align="center">퀘이사존  |  31k  |  11-01</td>
                    </tr>
                </table>
            </div>
            <br>
            <div id="catebar-body2" style="padding: 5px 20px;">
                <table>
                    <tr>
                        <td>
                            <select name="" class="" style="border: 0.8px solid #d9d9d9; width: 125px; height: 33px;">
                                <option disabled selected align="center">카테고리</option>
                                <option value="">5 PNY XLR8 지포···</option>
                                <option value="">5 PNY XLR8 지포···</option>
                                <option value="">5 PNY XLR8 지포···</option>
                                <option value="">5 PNY XLR8 지포···</option>
                            </select>
                        </td>
                        <td>
                            <button style="border: 0.8px solid #d9d9d9; width: 125px; height: 33px; background: white;">저장 (2)</button>
                        </td>
                        <td  class="bobo">

                        </td>
                        <td  class="bobo">

                        </td>
                        <td  class="bobo">

                        </td>
                        <td  class="bobo">
                            
                        </td>
                        <td  class="bobo">

                        </td>
                        <td  class="bobo">
                            
                        </td>
                    </tr>
                    <tr>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                    </tr>
                    <tr>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                    </tr>
                    <tr>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                        <td  class="bobo">
                        </td>
                    </tr>
                </table>
                
            </div>
        </tbody>
    </div>
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>