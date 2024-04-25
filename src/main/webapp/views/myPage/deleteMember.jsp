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

        #inputPwd input[type='password']{
            width: 70%;
            height: 100%;

            font-size: 18px;
        }

        #inputPwd button[type='button']{
            background: rgb(180, 180, 180);
            font-size: 20px;
            border: none;
            border-radius: 5px;

            height: 100%;
            width: 120px;
        }

        #inputPwd button[type='submit']{
            background: rgb(180, 180, 180);
            font-size: 20px;
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
            <form action="delete.my" method="post">
                <input type="hidden" name="userNo" value="${loginUser.userNo}">
                <table>
                    <tr>
                        <td>정말로 탈퇴하시겠습니까?</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="userPwd" placeholder="비밀번호를 입력하세요" minlength="1">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" onclick="location.href='${pageContext.request.contextPath}/index.re'">돌아가기</button>
                            <button type="submit">탈퇴</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
