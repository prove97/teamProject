<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>profile</title>
    <link rel="stylesheet" href="resources/style/index.css">
    <link rel="stylesheet" href="resources/style/mainSection.css">
    <link rel="stylesheet" href="resources/style/aside.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
    #wrap {
    display: flex;
    flex-direction: column;
    align-items: center;
}

#mainSection{
    height: 960px;
    width: 1151px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    
}

#header{
    width: 1151px;
    height: 62px;
    background: gray;
    padding: 0;
    margin: 0;
    margin-bottom: 10px;
}

#footer{
    width: 1151px;
    height: 180px;
    background: gray;
    margin-top: 10px;
}

input{
    border: none;
    border-bottom: 1px solid black;
}

 /* aside 메뉴 */
 #aside {
    width: 240px;
    height: 940px;
}

#profile{
    width: 241px;
    height: 326px;
    border: 1px solid black;
    border-radius: 15px;

    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-around;

}

#profile>div{
    display: flex;
    flex-direction: column;    
    align-items: center;
}

#profileImage{    
    width: 150px;
    height: 150px;    

    border: 1px solid black;
    border-radius: 100%;

    margin-top: 20px;
    padding: 10px;

}
#profile>#nickname{
    font-size: 24px;
}

#brightnessRate>h6{
    margin: 5px 0;
}


#profile input[type=range]{

    width: 120px;
    height: 10px;
    margin-bottom: 20px;
}


#menubar{
    height: 100px;
    margin-top: 20px;
    display: flex;
    flex-direction: column;

    padding: 0 23px;
}

#menubar *{
    font-size: 21px;
    padding: 13px 0;
}

#menubar strong{
    font-size: 24px;
}

#menubar ul{
    margin: 0;
    margin-top: 10px;
}

#menubar li{
    list-style: none;
}

.nonStyle{
    color: black;
    text-decoration: none;
    list-style: none;            
}

.nonStyle:hover{
    text-decoration: underline solid;
}

/* main */
#main>form {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 900px;
    height: 965px;
    background: #D6EFE3;
    position: relative;
}

#main>form>div {
    width: 800px;
}

#main table{
    width: 600px;
}

#necessaryInfo{
    height: 55%;
}

#nonNecessaryInfo{
    height: 30%;
}   

th {
    font-size: 18px;
    text-align: left;
}

#main tr{
    display: flex;
    justify-content: space-between;
    padding: 20px 0;
}

.inputSpace {
    background: white;
    height: 80%;
    display: flex;
    justify-content: space-between;
    align-items: center;          
}




#genderInput input{
    display: none;
}

#genderInput input + label{
    display: inline-block;
    cursor: pointer;
    height: 28px;
    width: 60px;
    border: 1px solid black;
    border-radius: 5px;
    line-height: 28px;
    text-align: center;
    font-weight:bold;
    font-size:15px;
}

#genderInput input:checked+label{
    background-color:
     #70C9A0;

}

button{
    background: #CCCCCC;
    border: none;
    border-radius: 6px;

    height: 30px;

}

button[type=submit]{
    width: 80px;
    height: 50px;

    font-size: large;

    text-align: center;
    position: absolute;
    bottom: 70px;
    right: 70px;    
}









    
    </style>
</head>

<body>    
    <div id="wrap">
        <div id="header"></div>
        <div id="mainSection">
            <div id="aside">
                <div id="profile">
                    <div id="profileImage">
                    	<img src="${pageContext.request.contextPath}/img/sample1.png" alt="샘플이미지">
                    </div>
                    <div id="nickname">
                        user01
                    </div>
                    <div id="brightnessRate">
                        <h6>밝음 수치: 70 lux</h6>
                        <div class="progress-bar" style="width:70%"></div>
                        <input type="range" class="progress-bar" value="50.8" min="30" max="100" step="0.1">
                    </div>                    
                </div>
                <div id="menubar">
                    <a href="#" class="nonStyle"><strong>내정보</strong></a>
                    <ul>
                        <strong>나의 활동</strong>
                        <li><a href="#" class="nonStyle">나의 판매글</a></li>
                        <li><a href="#" class="nonStyle">나의 댓글</a></li>
                        <li><a href="#" class="nonStyle">찜목록</a></li>
                    </ul>
                    <ul>
                        <strong>문의사항</strong>
                        <li><a href="#" class="nonStyle">1:1문의</a></li>
                        <li><a href="#" class="nonStyle">자주묻는질문</a></li>
                        <li><a href="#" class="nonStyle">신고내역</a></li>
                    </ul>


                </div>
            </div>

            <div id="main">
                <form action="">                            
                    <div id="necessaryInfo">
                        <h2>회원정보</h2>
                        <div class="inputSpace">
                            <table align="center">
                                <tr>
                                    <th>아이디</th>
                                    <td class="space"></td>
                                    <td><input type="text" value="아이디" name="userId" readonly></td>
                                </tr>
                                <tr>
                                    <th>비밀번호</th>
                                    <td></td>
                                    <td><input type="password" name="userPwd"></td>
                                </tr>
                                <tr>
                                    <th>비밀번호 확인</th>
                                    <td></td>
                                    <td><input type="password" name="checkPwd"></td>
                                </tr>
                                <tr>
                                    <th>휴대폰 번호</th>
                                    <td></td>
                                    <td><input type="text" value="010-0000-0000" name="phone" readonly></td>
                                </tr>
                                <tr>
                                    <th>닉네임</th>
                                    <td colspan="2">
                                        <input type="text" value="user01" name="nickname">
                                        <button type="button">중복확인</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="nonNecessaryInfo">
                        <h2>선택입력</h2>
                        <div class="inputSpace">
                            <table align="center">
                                <tr>
                                    <th>성별</th>
                                    <td id="genderInput">
                                        <input type="radio" name="gender" id="male">
                                        <label for="male">남</label>
                                        <input type="radio" name="gender" id="female">
                                        <label for="female">여</label>
                                    
                                    </td>

                                    <th>이메일</th>
                                    <td><input type="email"></td>
                                </tr>
                                <tr>
                                    <th>지역</th>
                                    <td colspan="3">
                                        <select name="location" id="">
                                            <option value="서울">서울</option>
                                            <option value="부산">부산</option>
                                            <option value="인천">인천</option>
                                            <option value="광주">광주</option>
                                            <option value="대구">대구</option>
              
                                        </select>
                                        <b>시/도</b>
                                        <select name="location" id="">
                                            <option value="서울">서울</option>
                                            <option value="부산">부산</option>
                                            <option value="인천">인천</option>
                                            <option value="광주">광주</option>
                                            <option value="대구">대구</option>
                                        </select>
                                        <b>구/군</b>
                                        <select name="location" id="">
                                            <option value="서울">서울</option>
                                            <option value="부산">부산</option>
                                            <option value="인천">인천</option>
                                            <option value="광주">광주</option>
                                            <option value="대구">대구</option>
                                        </select>
                                        <b>동</b>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <button type="submit">저장</button>
                </form>
            </div>
        </div>
        <div id="footer"></div>

    </div>

    </div>
</body>
</html>