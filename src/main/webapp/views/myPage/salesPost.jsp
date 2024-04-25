<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
        /* 메인창 */
        #main {
            width: 900px;
            height: 965px;
            background: #D6EFE3;

            display: flex;
            justify-content: center;
            align-items: center;

            border-radius: 15px;

        }

        #innerMain{
            width: 846px;
            height: 876px;
            background-color: white;

            display: flex;
            flex-direction: column;
            align-items: center;

            border-radius: 10px;

        }

        #menuName{
            width: 90%;
            height: 120px;

            text-align: left;
            line-height: 150px;

            padding-left: 20px;

            font-size: 30px;
        }

        /*불러올 게시글 상태 select*/
        #menuName>select{
            width: 120px;
            height: 40px;

            font-size: 18px;

            margin-left: 20px;

            padding-left: 10px;
        }

        /*게시글 테이블*/
        #board-table *{
            font-size: 16px;
        }

        #board-table{
            width: 90%;
            height: 90%;
        }

        #board-table>thead{
            height: 60px;
        }
        

        #board-table th{
            margin: auto;
            text-align: center;

            border-top: 2px solid black;
            font-size: 18px;

            height: 60px;

        }

        #board-table td{
            text-align: center;
            border-top: 0.1px solid rgb(187, 187, 187);
            border-bottom: 0.1px solid rgb(187, 187, 187);
        }
        
        /* 내 글 리스트 커서 올리면 포인터로 바뀜 */
        #myPostingList>tr{
            height: 60px;

            cursor: pointer;
        }
        #myPostingList>tr:hover{
            background-color: rgba(0,0,0,0.03) ;
        }

        
        #myPostingList>.title:hover{
            text-decoration : underline;
        }

        .title{
            text-align-last: left;
            padding-left: 20px;
        }
        
        .title>span{
            font-weight: 600;
            color: rgb(145, 145, 145);
        }
       


        /* 페이지 선택 */
        #pageSelect{
            height: 90px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #pageSelect a{
            width: 45px;
            height: 30px;
            background: white;
            border: 1px solid rgb(211, 211, 211);

            color: black;
            text-align: center;
            line-height: 30px;
        }

        
    </style>
</head>

<body>
	<div id="main">
	    <div id="innerMain">
	        <div id="menuName">나의 판매글
	            <select name="tradeStatus" id="boardStatusSelect" onchange="reloadMyTrade();">
	                <option value="all">전체</option>
	                <option value="onSale">판매중</option>
	                <option value="soldOut">판매완료</option>
	            </select>
	        </div>

            <script>
                // 페이지가 로드될 때 선택된 값으로 드롭다운 메뉴를 설정하는 함수
                function setSelectedValue() {
                    const params = new URLSearchParams(location.search); // 현재 페이지의 쿼리스트링을 불러와서 변수로 설정
                    console.log(params);
                    const selectedValue = params.get('selected');
                    if (selectedValue) {
                        document.querySelector('#boardStatusSelect').value = selectedValue;
                    }
                }
                
                // 페이지가 로드될 때 선택된 값으로 설정
                setSelectedValue();

                // 드롭다운 값이 변경될 때 호출되는 함수
                function reloadMyTrade() {
                    const selectedValue = document.querySelector('#boardStatusSelect').value;
                    console.log(selectedValue);
                    location.href = '${pageContext.request.contextPath}/indexToTradeHistory.my?cpage=1&selected=' + selectedValue;
                }
            </script>

	        <div id="board-table">
	            <table align="center">       
                    <thead>
                        <tr>
                            <th width="80px">글번호</th>
                            <th width="450px">게시글</th>
                            <th width="80px">조회수</th>
                            <th width="150px">작성일</th>
                        </tr>
                    </thead>             

                    <c:choose>
                        <c:when test="${not empty list}">
                            <c:forEach var="p" items="${list}">
                                <tbody id="myPostingList" >
                                    <tr class="originTr" onclick="location.href='${pageContext.request.contextPath}/detail.pr?goodsId=${p.goodsId}'">
                                        <td>${p.goodsId}</td>
                                        <td class="title">
                                            ${p.title} <span></span>
                                        </td>
                                        <td>${p.viewCount}</td>
                                        <td>${p.enrollDate}</td>
                                    </tr>
                            </c:forEach>
                                <c:set var="listSize" value="${fn:length(list)}" />
                                <c:set var="bLimit" value="${pi.boardLimit}" />
                                <c:forEach var="i" begin="1" end="${bLimit - listSize}">
                                    <tr></tr>
                                </c:forEach>
                                <c:remove var="listSize" />
                                <c:remove var="bLimit" />
                            </tbody>
                        </c:when>
                        <c:otherwise>
                            <tbody id="myPostingList" >
                                <tr>
                                    <td colspan="4" style="height: 600px;">게시글이 없습니다</td>
                                </tr>
                            </tbody>                     
                           </c:otherwise>
                    </c:choose>
                </table>
	            <div id="pageSelect" align="center">
                    <c:if test="${pi.listCount != 0}">
                        <c:if test="${pi.currentPage != 1}">
                            <a href="indexToTradeHistory.my?cpage=${pi.currentPage - 1}&selected=${selected}">&lt;</a>
                        </c:if>
                        
                        <c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}">
                            <a href="indexToTradeHistory.my?cpage=${i}&selected=${selected}">${i}</a>
                        </c:forEach>
                        
                        <c:if test="${pi.currentPage ne pi.maxPage}">
                            <a href="indexToTradeHistory.my?cpage=${pi.currentPage + 1}&selected=${selected}">&gt;</a>
                        </c:if>

                    </c:if>
	            </div>
	        </div>
	    </div>
	    
	</div>
</body>

</html>