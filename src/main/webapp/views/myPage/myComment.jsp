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
        }

        #board-table th{
            font-size: 18px;
            text-align: center;

            border-top: 2px solid black;
            height: 50px;
        }

        /* 댓글 리스트 */
        .commentList{
            height: 101.7px;
            border-top: 0.1px solid rgb(187, 187, 187);
            border-bottom: 0.1px solid rgb(187, 187, 187);
        }

        .commentList:hover{
            cursor: pointer;
            background-color: rgba(0,0,0,0.03) ;
        }

        .commentList>td:nth-child(1){
            height: 100px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .commentList>td>#commentContent{
            font-size: 20px;
            text-align: left;

            padding-left: 30px;
            margin-bottom: 15px;

            text-overflow: ellipsis;

        }

        .commentList>td>#commentContent:hover{
            text-decoration: underline;
        }

        .commentList>td>#boardTitle{
            font-size: 15px; 
            color: #b3b3b3;           
            text-align: left;   
            padding-left: 30px;
        }

        .commentList>#enrollDate{
            text-align: center;   
            font-size: 15px; 
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
        }



        
    </style>
</head>

<body>
	<div id="main">
	    <div id="innerMain">
	        <div id="menuName">나의 댓글</div>
	        <div id="board-table">
	            <table align="center">
	                <tr height="50px">
	                    <th width="560px">제목</th>
	                    <th width="200px">작성일</th>
	                </tr>
                    <c:forEach var="cmt" items="${list}">
                        <tr class="commentList">
                            <td>
                                <div id="commentContent">시발 왜 댓글이 없어어ㅓㅓㅓㅓ</div>
                                <div id="boardTitle">게시글: </div>
                            </td>
                            <td id="enrollDate">${cmt.commentsDate}</td>
                        </tr>
                    </c:forEach>

                    <c:set var="list" value="${list}" />
                    <c:set var="listSize" value="${fn:length(list)}" />
                    <c:set var="bLimit" value="${pi.boardLimit}" />
                    <c:forEach var="i" begin="1" end="${bLimit - listSize}">
                        <tr></tr>
                    </c:forEach>

	
	            </table>
	            <div id="pageSelect" align="center">
                    <c:if test="${pi.currentPage != 1}">
                        <a href="indexToCommentHistory.my?cpage=${pi.currentPage - 1}">&lt;</a>
                   </c:if>

                   <c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}">
                        <a href="indexToCommentHistory.my?cpage=${i}">${i}</a>
                   </c:forEach>
                   
                   <c:if test="${pi.currentPage ne pi.maxPage}">
                        <a href="indexToCommentHistory.my?cpage=${pi.currentPage + 1}">&gt;</a>
                   </c:if>
	            </div>
	        </div>
	    </div>
	</div>
</body>

</html>