<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	    /* 회원정보창 */
	    #main>form {
	        display: flex;
	        flex-direction: column;
	        justify-content: center;
	        align-items: center;
	        width: 900px;
	        height: 965px;
	        background: #D6EFE3;
	        position: relative;
	
	        border-radius: 15px;
	
	    }
	
	    div>h2{
            margin-bottom: 20px;
        }

        #main>form>div {
            width: 800px;
        }

        #main table {
            width: 600px;
        }

        #necessaryInfo {
            height: 55%;
        }

        #nonNecessaryInfo {
            height: 30%;
        }

        th {
            font-size: 18px;
            text-align: left;
        }

        /*회원정보 입력칸 밑줄만 나오게 설정*/
        #main>form input {
            border: none;
            border-bottom: 1px solid black;
        }

        /* 비밀번호,닉네임 등 입력에 체크가 필요한 input*/
        .inputWrong{
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }

        .warning{
            display: none;
            font-weight: bold;
            font-size: 11px;  
            color: red;
        }

        #main tr {
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

            border-radius: 10px;

        }

        /* 중복체크 버튼 */
        #duplicationCheckBtn {
            background: #CCCCCC;
            border: none;
            border-radius: 6px;

            height: 30px;

            position: absolute;
            right: -85px;
            bottom: 25px;

        }

        /* 필수선택 input요소 */
        .necessaryInput{
            width: 200px;
        }

        /* 성별 체크 */
        #genderInput input {
            display: none;
        }

        #genderInput input+label {
            display: inline-block;
            cursor: pointer;
            height: 28px;
            width: 60px;
            border: 1px solid black;
            border-radius: 5px;
            line-height: 28px;
            text-align: center;
            font-weight: bold;
            font-size: 15px;
        }

        #genderInput input:checked+label {
            background-color: #70C9A0;
        }

        /* 시/도 선택 */
        select[name="h_area1"]{
            width: 80px;
        }

        /* 시/군/구 선택 */
        select[name="h_area2"]{
            width: 130px;
            margin-left: 10px;
        }

        /* 저장버튼 */
        button[type=submit] {
            width: 80px;
            height: 40px;

            background: #CCCCCC;
            border: none;
            border-radius: 6px;

            font-size: large;

            text-align: center;
            position: absolute;
            bottom: 15px;
            right: 70px;
        }
    </style>
</head>

<body>
	<div id="main">
	    <form action="">
	        <div id="necessaryInfo">
	            <h2>회원정보</h2>
	            <div class="inputSpace">
	                <table align="center">
	                    <tr>
	                        <th>아이디</th>
	                        <td><input type="text" value="admin1234" name="userId" class="necessaryInput" readonly></td>
	                    </tr>
	                    <tr>
	                        <th>비밀번호</th>
	                        <td class="inputWrong">
	                            <input type="password" name="userPwd" id="pwd" class="necessaryInput" maxlength="20" oninput="combinePwd();">
	                            <div class="warning">비밀번호는 영어, 숫자, 특수기호 포함 8자 이상이어야 합니다.</div>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>비밀번호 확인</th>
	                        <td class="inputWrong">
	                            <input type="password" name="checkUserPwd" id="checkPwd" class="necessaryInput" maxlength="20" oninput="differPwd();">
	                            <div class="warning">비밀번호가 일치하지 않습니다.</div>                                        
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>휴대폰 번호</th>
	                        <td><input type="text" value="010-0000-0000" name="phone" class="necessaryInput" readonly></td>
	                    </tr>
	                    <tr style="position: relative;">
	                        <th>닉네임</th>    
	                        <td class="inputWrong">
	                            <input type="text" value="user01" class="necessaryInput" name="nickname">
	                            <div class="warning">중복된 닉네임입니다</div>                                        
	                            <button type="button" id="duplicationCheckBtn" onclick="nicknameCheck();">중복확인</button>
	                        </td>                                
	                        
	                    </tr>
	                </table>
	                <script>
	                    function combinePwd(){
	                        let newPwd = document.getElementById('pwd');
	                        let checkPwd = document.getElementById('checkPwd');
	                        let warning = document.getElementsByClassName('warning')[0];
	                        const reg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
	
	                        
	                        if(reg.test(newPwd.value) || newPwd.value === ""){ //비밀번호의 조합조건이 맞거나 빈칸일 경우
	                            warning.style.display = 'none';
	                            newPwd.style.border = '0px';
	                            newPwd.style.borderBottom = '1px solid black';
	                            newPwd.style.borderRadius = '0px';
	                        } else {
	                            newPwd.style.border = 'red solid';
	                            newPwd.style.borderRadius = '5px';
	                            warning.style.display = 'block';
	                        } 
	                        
	                    }
	
	                    function differPwd(){
	                        let newPwd = document.getElementById('pwd');
	                        let checkPwd = document.getElementById('checkPwd');
	                        let warning = document.getElementsByClassName('warning')[1];
	
	                        if(newPwd.value === checkPwd.value || checkPwd.value === ""){ //비밀번호가 일치하거나 빈칸일 경우
	                            warning.style.display = 'none';
	                            checkPwd.style.border = '0px';
	                            checkPwd.style.borderBottom = '1px solid black';
	                            checkPwd.style.borderRadius = '0px';
	                            
	                        } else{
	                            checkPwd.style.border = 'red solid';
	                            checkPwd.style.borderRadius = '5px';
	                            warning.style.display = 'block';
	                        }
	
	                    }
	
	                    function nicknameCheck(){ //닉네임 중복체크
	                        const nicknameInput = document.querySelector("input[name=nickname]");
	                        
	                        $.ajax({
	                            type: "GET",
	                            url: "nicknameCheck.me",
	                            data:{
	                                checkNickname: nicknameInput.value
	                            },
	                            success: function(res){},
	                            error: function(err){}
	                        })
	
	
	                    }
	                </script>
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
	                            <select name="h_area1" onChange="location1_change(this.value, h_area2)" class="h_area1">
	                                <option>선택</option>
	                                <option value='1'>서울</option>
	                                <option value='2'>부산</option>
	                                <option value='3'>대구</option>
	                                <option value='4'>인천</option>
	                                <option value='5'>광주</option>
	                                <option value='6'>대전</option>
	                                <option value='7'>울산</option>
	                                <option value='8'>강원</option>
	                                <option value='9'>경기</option>
	                                <option value='10'>경남</option>
	                                <option value='11'>경북</option>
	                                <option value='12'>전남</option>
	                                <option value='13'>전북</option>
	                                <option value='14'>제주</option>
	                                <option value='15'>충남</option>
	                                <option value='16'>충북</option>
	                            </select>
	                            <b>도/시</b>
	
	                            <select name="h_area2">
	                                <option>선택</option>
	                            </select>
	                            <b>시/구/군</b>
	                            <!-- <select name="location" id=""></select>
	                            <b>동</b> -->
	                        </td>
	                    </tr>
	                </table>
	            </div>
	        </div>
	        <button type="submit">저장</button>
	    </form>
	</div>
    
    <script>
        let location1_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
        let location1_name = ['서울', '부산', '대구', '인천', '광주', '대전', '울산', '강원', '경기', '경남', '경북', '전남', '전북', '제주', '충남', '충북'];

        let location2_num = [];
        let location2_name = [];

        location2_num[0] = [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41];
        location2_name[0] = ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구'];

        location2_num[1] = [42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57];
        location2_name[1] = ['강서구', '금정구', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구', '기장군'];

        location2_num[2] = [58, 59, 60, 61, 62, 63, 64, 65];
        location2_name[2] = ['남구', '달서구', '동구', '북구', '서구', '수성구', '중구', '달성군'];

        location2_num[3] = [66, 67, 68, 69, 70, 71, 72, 73, 74, 75];
        location2_name[3] = ['계양구', '남구', '남동구', '동구', '부평구', '서구', '연수구', '중구', '강화군', '옹진군'];

        location2_num[4] = [76, 77, 78, 79, 80];
        location2_name[4] = ['광산구', '남구', '동구', '북구', '서구'];

        location2_num[5] = [81, 82, 83, 84, 85];
        location2_name[5] = ['대덕구', '동구', '서구', '유성구', '중구'];

        location2_num[6] = [86, 87, 88, 89, 90];
        location2_name[6] = ['남구', '동구', '북구', '중구', '울주군'];

        location2_num[7] = [91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108];
        location2_name[7] = ['강릉시', '동해시', '삼척시', '속초시', '원주시', '춘천시', '태백시', '고성군', '양구군', '양양군', '영월군', '인제군', '정선군', '철원군', '평창군', '홍천군', '화천군', '횡성군'];

        location2_num[8] = [109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148];
        location2_name[8] = ['고양시 덕양구', '고양시 일산구', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시 소사구', '부천시 오정구', '부천시 원미구', '성남시 분당구', '성남시 수정구', '성남시 중원구', '수원시 권선구', '수원시 장안구', '수원시 팔달구', '시흥시', '안산시 단원구', '안산시 상록구', '안성시', '안양시 동안구', '안양시 만안구', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '하남시', '화성시', '가평군', '양주군', '양평군', '여주군', '연천군', '포천군'];

        location2_num[9] = [149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168];
        location2_name[9] = ['거제시', '김해시', '마산시', '밀양시', '사천시', '양산시', '진주시', '진해시', '창원시', '통영시', '거창군', '고성군', '남해군', '산청군', '의령군', '창녕군', '하동군', '함안군', '함양군', '합천군'];

        location2_num[10] = [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192];
        location2_name[10] = ['경산시', '경주시', '구미시', '김천시', '문경시', '상주시', '안동시', '영주시', '영천시', '포항시 남구', '포항시 북구', '고령군', '군위군', '봉화군', '성주군', '영덕군', '영양군', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군'];

        location2_num[11] = [193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214];
        location2_name[11] = ['광양시', '나주시', '목포시', '순천시', '여수시', '강진군', '고흥군', '곡성군', '구례군', '담양군', '무안군', '보성군', '신안군', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군'];

        location2_num[12] = [215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229];
        location2_name[12] = ['군산시', '김제시', '남원시', '익산시', '전주시 덕진구', '전주시 완산구', '정읍시', '고창군', '무주군', '부안군', '순창군', '완주군', '임실군', '장수군', '진안군'];

        location2_num[13] = [230, 231, 232, 233];
        location2_name[13] = ['서귀포시', '제주시', '남제주군', '북제주군'];

        location2_num[14] = [234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248];
        location2_name[14] = ['공주시', '논산시', '보령시', '서산시', '아산시', '천안시', '금산군', '당진군', '부여군', '서천군', '연기군', '예산군', '청양군', '태안군', '홍성군'];

        location2_num[15] = [249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260];
        location2_name[15] = ['제천시', '청주시 상당구', '청주시 흥덕구', '충주시', '괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '진천군', '청원군'];

        function location1_change(key, sel) { //매개변수 1:도/시 선택시 설정한 숫자값(this.value) , 2:시/구/군 select요소(h_area2)
            if (key == '') return;
            let name = location2_name[key-1];
            let val = location2_num[key-1];

            for (i = sel.length - 1; i >= 0; i--){
                sel.options[i] = null;
            }
            sel.options[0] = new Option('-선택-', '', '', 'true'); //Option 객체(text, value, 기본선택옵션(boolean), 선택(boolean))
            for (i = 0; i < name.length; i++) {
                sel.options[i + 1] = new Option(name[i], val[i]);
            }
        }

    </script>
</body>

</html>