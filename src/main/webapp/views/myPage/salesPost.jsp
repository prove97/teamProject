<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Random, java.lang.Math"%>
<%
    Random random = new Random();
    int commentsCount = Math.abs(random.nextInt() % 30);
%>
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

        #menuName>select{
            width: 120px;
            height: 40px;

            font-size: 18px;

            margin-left: 20px;

            padding-left: 10px;
        }

        #board-table *{
            font-size: 15px;
        }

        #board-table{
            width: 90%;
            height: 90%;
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
        
        /* 내 글 리스트 커서 올리면 포인터로 바뀜 */
        .myPostingList{
            cursor: pointer;
        }
        .myPostingList:hover{
            background-color: rgba(0,0,0,0.03) ;
        }

        .myPostingList>.title:hover{
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

        #pageSelect>button{
            width: 45px;
            height: 30px;
            background: white;
            border: 1px solid rgb(211, 211, 211);

        }

        
    </style>
</head>

<body>
	<div id="main">
	    <div id="innerMain">
	        <div id="menuName">나의 판매글
	            <select name="tradeStatus" id="boardStatusSelect" onchange="reLoadBoardList()">
	                <option value="all" selected>전체</option>
	                <option value="onSale">판매중</option>
	                <option value="soldOut">판매완료</option>
	            </select>
	        </div>
	        	        
	        <div id="board-table">
	            <table align="center">
	                <tr>
	                    <th width="80px">글번호</th>
	                    <th width="450px">제목</th>
	                    <th width="80px">조회수</th>
	                    <th width="150px">작성일</th>
	                </tr>
                    <c:forEach var="b" items="${list}">
                        <tr class="myPostingList" onclick="location.href='views/posting/postPage.jsp'"> <!--쿼리로 postId 넘겨줄 예정-->
                            <td>${b.postId}</td>
                            <td class="title">${b.titleId} <span>(<%=commentsCount%>)</span></td>
                            <td>${b.eyes}</td>
                            <td>${b.writeDate}</td>
                        </tr>
                    </c:forEach>

                    <script>
                        function reLoadBoardList(){
                            const tradeStatus = document.querySelector("#boardStatusSelect");
                            const myPostingList = document.querySelector(".myPostingList");
                            console.log(tradeStatus.value);
        
                            $.ajax({
                                    url: "reloadTrade.my",
                                    data: {tradeListOption : tradeStatus.value,
                                           userId : "${userId}"
                                    
                                    }, 
                                    success: function(result){
                                        console.log(result.value);
                                    },
                                    error: function(){
                                    }
                                })
                                                                    
                        }


                        function BoardDetailView(){
                            console.log("이동");
                        }

                    </script>
	
	            </table>
	            <div id="pageSelect" align="center">
	                <button onclick="location.href='#'">&lt;</button>
	                <% for(int i = 1; i <= 10; i++) { %>
	                    <button onclick="location.href='#'"><%= i %></button>
	                <% } %>
	                <button onclick="location.href='#'">&gt;</button>
	            </div>
	        </div>
	    </div>
	    
	</div>
</body>

</html>