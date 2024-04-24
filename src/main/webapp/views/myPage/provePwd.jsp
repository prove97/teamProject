<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>provePwd</title>
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
            flex-direction: column;
            justify-content: center;
            align-items: center;

            border-radius: 15px;

        }

        #inputPwd>form>table{
            height: 100px;
            width: 600px;
            font-size: 27px;

        }

        #inputPwd tr:nth-child(1){
            padding-bottom: 30px;
        }

        #inputPwd tr:nth-child(2)>td{
            height: 50px;
            display: flex;
            justify-content: left;
            
        }

        input[type='password']{
            width: 70%;
            height: 100%;
        }

        button[type='submit']{
            background: rgb(180, 180, 180);
            font-size: 23px;
            border: none;
            border-radius: 5px;

            height: 100%;
            width: 80px;

            margin-left: 10px;


        }
</style>
</head>
<body>
    <div id="main">
	    <div id="inputPwd">
            <form action="checkPwd.my" method="post">
                <input type="hidden" name="userId" value="${userId}">
                <table>
                    <tr>
                        <td>비밀번호를 입력하세요</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="userPwd">
                            <button type="submit">입력</button>
                        </td>
                    </tr>
                </table>
            </form>
	    </div>

        <c:set var="checkPwd" value="${wrongPwd}" />
        <c:if test="${wrongPwd eq 'Y'}" >
            <div style="width: 600px; text-align: left; color: red;">잘못된 비밀번호 입니다. 다시 입력하세요</div>
        </c:if>
	</div>
</body>
</html>