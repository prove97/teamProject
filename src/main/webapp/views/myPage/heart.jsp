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

        #board-table{
            width: 90%;
            height: 90%;
            font-size: 16px;
        }

        #board-table tr{
            height: 60px;
        }

        #board-table th{
            margin: auto;
            text-align: center;

            border-top: 2px solid black;
            font-size: 18px;

        }

        #board-table td{
            text-align: center;
            border-top: 0.1px solid rgb(187, 187, 187);
            border-bottom: 0.1px solid rgb(187, 187, 187);
        }

        .myHeartList{
            cursor: pointer;
        }

        .myHeartList:hover{
            background-color: rgba(0,0,0,0.03) ;
        }


        
        .myHeartList>.title:hover{
            text-decoration: underline;
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
    <script>
        $(document).ready(function(){
            console.log("최근 찜한 게시물부터 불러옴");
        });
    </script>
	<div id="main">
	    <div id="innerMain">
	        <div id="menuName">찜목록</div>
	        <div id="board-table">
	            <table align="center">
	                <tr>
	                    <th width="80px">글번호</th>
	                    <th width="450px">게시글</th>
	                    <th width="80px">조회수</th>
	                    <th width="150px">작성자</th>
	                </tr>
                    <c:choose>
                        <c:when test="${not empty list}">
                            <c:forEach var="w" items="${list}">
                                <tr class="myHeartList" onclick="location.href='${pageContext.request.contextPath}/detail.pr?goodsId=${w.product.goodsId}'">
                                    <td>${w.product.goodsId}</td>
                                    <td class="title">
                                        ${w.product.title} <span></span>
                                    </td>
                                    <td>${w.product.viewCount}</td>
                                    <td>${w.member.nickname}</td>
                                </tr>
                            </c:forEach>

                            <c:set var="listSize" value="${fn:length(list)}" />
                            <c:set var="bLimit" value="${pi.boardLimit}" />
                            <c:forEach var="i" begin="1" end="${bLimit - listSize}">
                                <tr></tr>
                            </c:forEach>
                            <c:remove var="listSize" />
                            <c:remove var="bLimit" />
                        </c:when>
                        <c:otherwise>
                            <tbody id="myPostingList" >
                                <tr>
                                    <td colspan="3" style="height: 600px;">게시글이 없습니다</td>
                                </tr>
                            </tbody>                     
                       </c:otherwise>
                </c:choose>

	
	            </table>
	            <div id="pageSelect" align="center">
                    <c:if test="${pi.currentPage != 1}">
                        <a href="indexToLike.my?cpage=${pi.currentPage - 1}">&lt;</a>
                   </c:if>

                   <c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}">
                        <a href="indexToLike.my?cpage=${i}">${i}</a>
                   </c:forEach>
                   
                   <c:if test="${pi.currentPage ne pi.maxPage}">
                        <a href="indexToLike.my?cpage=${pi.currentPage + 1}">&gt;</a>
                   </c:if>
	            </div>
	        </div>
	    </div>
	</div>
</body>

</html>