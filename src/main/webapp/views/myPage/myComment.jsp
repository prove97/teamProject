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

        #board-table th {
            height: 60px;
            font-size: 18px;
            text-align: center;

            border-top: 2px solid black;
        }

        /* 댓글 리스트 */
        .nullReplySpace{
            height: 99px;
        }

        .replyList{
            height: 99px;
            border-top: 0.1px solid rgb(187, 187, 187);
            border-bottom: 0.1px solid rgb(187, 187, 187);
        }

        .replyList:hover{
            cursor: pointer;
            background-color: rgba(0,0,0,0.03) ;
        }

        .replyList>td:nth-child(2){
            height: 99px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        /*댓글 번호*/
        .replyList>#replyNo{
            text-align: center;

        }

        /*댓글 내용*/
        .replyList>td>#replyContent{
            font-size: 20px;
            text-align: left;

            padding-left: 30px;
            margin-bottom: 15px;

            text-overflow: ellipsis;

        }

        .replyList>td>#replyContent:hover{
            text-decoration: underline;
        }

        /*댓글이 있는 게시글 제목*/
        .replyList>td>#boardTitle{
            font-size: 15px; 
            color: #b3b3b3;           
            text-align: left;   
            padding-left: 30px;
        }

        /*댓글 등록일*/
        .replyList>#enrollDate{
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
            text-align: center;
            line-height: 30px;
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
                        <th width="100px">댓글번호</th>
	                    <th width="560px">댓글</th>
	                    <th width="200px">작성일</th>
	                </tr>         
                    <c:choose>
                        <c:when test="${not empty rList}">
                            <c:forEach var="r" items="${rList}">
                                <tr class="replyList" onclick="location.href='${pageContext.request.contextPath}/detail.pr?goodsId=${r.product.goodsId}'">
                                    <td id="replyNo">${r.replyNo}</td>
                                    <td>
                                        <div id="replyContent">${r.replyContent}</div>
                                        <div id="boardTitle">게시글: ${r.product.title}</div>
                                    </td>
                                    <td id="enrollDate">${r.replyDate}</td>
                                </tr>
                            </c:forEach>
                            
                            <c:set var="listSize" value="${fn:length(rList)}" />
                            <c:set var="bLimit" value="${pi.boardLimit}" />
                            <c:forEach var="i" begin="1" end="${bLimit - listSize}">
                                <tr class="nullReplySpace"></tr>
                            </c:forEach>
                            <c:remove var="listSize" />
                            <c:remove var="bLimit" />

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