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
        *{
            box-sizing: border-box;
        }
        body{
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }
        .contentBox{
            width: 1151px;
            background-color: white;
            margin: auto;
            overflow-x: auto;
            overflow-y: auto;
            padding: 100px 50px;
        }
        .contentBox_top{
            width: 800px;
            margin-left: 30px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .input_table{
            width: 865px;
            margin: auto;
        }
        /*
        #photo_count{
            padding: 0px;
            margin: 0px;
            font-size: 15px;
            color: darkgray;
        }
        */
        #title{
            width: 580px;
            height: 30px;
            border: 1px solid darkgray;
        }
        .letter_count{
            margin-left: 20px;
            color: darkgray;
        }
        .category_box{
            display: flex;
            align-items: center;
            font-size: 15px;
        }
        #category_top_box{
            border: 1px solid darkgray;
            width: 200px;
            height: 130px;
            overflow-x: auto;
            overflow-y: auto;
        }
        #category_top_box > p{
            margin: 10px 5px;
        }
        #category_middle_box{
            border: 1px solid darkgray;
            width: 200px;
            height: 130px;
            overflow-x: auto;
            overflow-y: auto;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        #product_info{
            border: 1px solid darkgray;
            resize: none;
        }
        .column1{
            width: 100px;
            padding: 0px 30px;
        }
        .column2{
            width: 82%;
        }
        .column2 > button{
            background-color: white;
            border: 1px solid darkgray;
            width: 94px;
            height: 30px;
            font-size: 12px;
        }
        #detail_address{
            border: 1px solid darkgray;
            background-color:rgb(238, 238, 238);
            width: 575px;
            height: 30px;
            margin-top: 5px;
        }
        #price{
            border: 1px solid gray;
            width: 200px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-left: 9px;
            padding: 0px;
        }
        #price > input{
            border-right: none;
        }
        .price_check_opt{
            font-size: 15px;
        }
        .price_check_opt > button{
            margin-left: 10px;
        }
        .status_explane{
            color: darkgray;
            font-size: 14px;
            font-weight: 100;
            margin-left: 15px;
        }
        .btn{
            width: 950px;
            display: flex;
            justify-content: right;
            gap: 30px;
        }
        .btn > button{
            border: none;
            color: white;
            font-size: 20px;
            width: 128px;
            height: 48px;
        }
        #delete_btn{
            background-color: salmon;
        }
        #submit_btn{
            background-color: mediumaquamarine;
        }
        #product-img:hover{
           cursor: pointer;
           scale: 0.98;
        }
    </style>
</head>
<body bgcolor="D9D9D9">
    <div class="contentBox">
        <div class="contentBox_top">
            <p style="font-size: 28px; margin-bottom: 0;">상품등록</p>
            <p style="color: red; margin-bottom: 0;">*필수항목</p>
        </div>

        <br>
        <hr style="border: 1px solid black;">
        <br>

        <table class="input_table" style="font-size: 18px;">
            <tr class="row1">
                <td class="column1">
                    상품사진<sup style="color: red;">*</sup>
                    <!-- <p id="photo_count">(0/10)</p> -->
                </td>
                <td class="column2">
                    <img id="product-img" src="${pageContext.request.contextPath}/img/fileImg.png" style="width: 144px; height: 150px;" onclick="chooseFile(1);">
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
            <tr class="row2">
                <td class="column1">
                    글 제목<sup style="color: red;">*</sup>
                </td>
                <td class="column2">
                    <input type="text" id="title"> <sub class="letter_count" id="title_letter_count" maxlength="40">0/40</sub>
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
            <tr class="row3">
                <td class="column1">
                    카테고리<sup style="color: red;">*</sup>
                </td>
                <td class="column2">
                    <div class="category_box">
                        <div id="category_top_box">
                            <p>컴퓨터 주요 부품</p>
                            <p>키보드, 마우스, 주변기기</p>
                            <p>모니터, 악세서리</p>
                            <p>프린터, 복합기, 스캐너</p>
                            <p>네트워크, 공유기</p>
                        </div>
                        <div id="category_middle_box">
                            <b style="color: darkgray;">중분류 선택</b>
                        </div>
                    </div>
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
            <tr class="row4">
                <td class="column1">
                    상품 설명<sup style="color: red;">*</sup>
                </td>
                <td class="column2">
                    <textarea name="" id="product_info" cols="70" rows="10" maxlength="2000"></textarea>
                    <sub class="letter_count" id="info_letter_count">0/2000</sub>
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
            <tr class="row5">
                <td class="column1">
                    거래지역<sup style="color: red;">*</sup>
                </td>
                <td class="column2">
                    <button>내 위치</button>
                    <button>최근 지역</button>
                    <button>주소 검색</button>
                    <button>지역설정안함</button>
                    <br>
                    <input type="text" id="detail_address">
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
            <tr class="row6">
                <td class="column1">
                    가격<sup style="color: red;">*</sup>
                </td>
                <td class="column2" style="display: flex; align-items: center; gap: 30px;">
                    <div id="price">
                        <input type="number" id="price"><b style="font-size: 17px; margin: 0px 4px;">원</b>
                    </div>
                    <div class="price_check_opt">
                        <input type="checkbox">가격 제안 받기
                        <input type="checkbox">배송비 포함
                        <input type="checkbox">교환 가능
                    </div>
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
            <tr class="row7">
                <td class="column1">
                    상품상태<sup style="color: red;">*</sup>
                </td>
                <td class="column2">
                    <input type="radio" name="product_status">새상품(미개봉)
                    <b class="status_explane">사용하지 않은 새 상품</b>
                    <br><br>
                    <input type="radio" name="product_status">사용감 없음
                    <b class="status_explane">사용은 했지만 눈에 띄는 흔적이나 얼룩이 없음</b>
                    <br><br>
                    <input type="radio" name="product_status">사용감 적음
                    <b class="status_explane">눈에 띄는 흔적이나 얼룩이 약간 있음</b>
                    <br><br>
                    <input type="radio" name="product_status">사용감 많음
                    <b class="status_explane">눈에 띄는 흔적이나 얼룩이 많이 있음</b>
                    <br><br>
                    <input type="radio" name="product_status">고장/파손상품
                    <b class="status_explane">기능 이상이나 외관 손상 등으로 수리/수선 필요</b>
                </td>
            </tr>
            <tr class="lines">
                <td colspan="2"><br><hr><br></td>
            </tr>
        </table>
        <div style="display:none">
                <input type="file" name="file1" id="file1" required onchange="loadImg(this, 1)">
            </div>
        <div class="btn">
            <button id="delete_btn">삭제하기</button>
            <button id="submit_btn">등록하기</button>
        </div>
    </div>
    
    <script>
       function loadImg(inputFile, num){
            // console.log(inputFile)
            // console.log(num)
            //inputFile : 현재 변화가 생긴 input type=file 요소객체
            //num : 몇번째 input요소인지 확인하기 위한 파라미터
            
            //inputFile.files[0] => 선택된 파일이 담겨있다.
            //inputFile.files.length -> 1
            console.log(inputFile.files.length)

            if (inputFile.files.length == 1){//파일을 하나 선택했다. => 미리보기
                //파일을 읽어들일 FileReader객체생성
                const reader = new FileReader();

                //파일을 읽어들이는 메소드
                //해당파일을 읽어들이는 순간 해당 파일만의 고유한 url부여
                reader.readAsDataURL(inputFile.files[0]);

                //파일 읽어들이기 완료했을 때 실행할 함수 정의
                reader.onload = function(ev){
                    // console.log(ev.target.result) => 읽어들인 파일의 고유한 url
                    if(num == 1) {
                       document.getElementById("product-img").src = ev.target.result;
                    }
                }
            } else { // 선택된 파일을 취소한 경우 => 미리보기 지워준다.
               if (num == 1) {
                  document.getElementById("product-img").src = "${pageContext.request.contextPath}/img/fileImg.png";
               }
            }
        }
        function chooseFile(num){
            const imgInput = document.querySelector("#file" + num);
            imgInput.click();
        }

        $('#title').keyup(function (e){
            var content = $(this).val();
            $('#title_letter_count').text("("+content.length+" / 40)");

            if (content.length > 40){
                alert("최대 40자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 40));
                $('#counter').text("(40 / 40)");
            }
        });
        
        $('#product_info').keyup(function (e){
            var content = $(this).val();
            $('#info_letter_count').text("("+content.length+" / 2000)");

            if (content.length > 2000){
                alert("최대 40자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 40));
                $('#counter').text("(2000 / 2000)");
            }
        });
    </script>
</body>
</html>