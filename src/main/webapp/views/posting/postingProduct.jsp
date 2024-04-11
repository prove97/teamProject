<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body{
            display: flex;
            justify-content: center;
            height: 2000px;
            position: relative;
        }
        .section{
            width: 1151px;
            height: 2000px;
            display: flex;
            padding-top: 50px;
        }
        #info{
           width: 1151px;
           height: 100px;
           margin-top: 130px;
           display: flex;
           justify-content: left;
           align-items: center;
           
        }
        #info p,h2{
           margin-bottom: 0;
           font-weight: bold;
        }
        #info h2{
            margin-left: 60px;
        }
        #info p{
            margin-left: 5px;
            color: red;
        }
        hr{
            border: 1px solid black;
            border-radius: 2px;
            margin-top:0px;
            margin-bottom:10px;
        }
    </style>
</head>

<body>
	<%@ include file="../common/header.jsp" %>
        <section class="insert-product">
            <div id="info">
                <h2>상품등록</h2> <p>*필수입력</p>
            </div>
            <hr>
            <div>

            </div>
            <div>

            </div>
            <div>

            </div>
            <div>
                
            </div>
            <div>
                
            </div>
            <div>

            </div>
            <div>

            </div>
            <div>
                
            </div>
        </section>
    
    <%@ include file="../common/footer.jsp" %>
</body>
</html>