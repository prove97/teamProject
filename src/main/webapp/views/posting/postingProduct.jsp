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
        .category_box > div{
        	border: 1px solid darkgray;
            width: 200px;
            height: 130px;
            overflow-x: auto;
            overflow-y: auto;
        }
        .category_box p:hover {
        	cursor: default;
        	background-color: darkgray;
        }
        #category_top_box > p{
            margin: 10px 5px;
        }
        #category_middle_noselected{
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

		<form action="${pageContext.request.contextPath}/insert.pr" id="productEnroll-form" method="POST" enctype="multipart/form-data">
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
	                            <p id="category_middle_opt1" onclick="category_middle(1);">컴퓨터 주요 부품</p>
	                            <p id="category_middle_opt2" onclick="category_middle(2);">키보드, 마우스, 주변기기</p>
	                            <p id="category_middle_opt3" onclick="category_middle(3);">모니터, 악세서리</p>
	                            <p id="category_middle_opt4" onclick="category_middle(4);">프린터, 복합기, 스캐너</p>
	                            <p id="category_middle_opt5" onclick="category_middle(5);">네트워크, 공유기</p>
	                        </div>
	                        <div id="category_middle_noselected">
	                            <b style="color: darkgray;">중분류 선택</b>
	                        </div>
	                        <div id="category_middle_1" style="display: none">
	                        	<p>CPU</p>
	                            <p>메인보드</p>
	                            <p>메모리</p>
	                            <p>그래픽카드</p>
	                            <p>SSD</p>
	                            <p>하드디스크</p>
	                            <p>ODD(외장/내장)</p>
	                            <p>케이스</p>
	                            <p>파워서플라이</p>
	                            <p>공/수냉쿨러</p>
	                        </div>
	                        <div id="category_middle_2" style="display: none">
	                        	<p>키보드</p>
	                            <p>마우스</p>
	                            <p>스피커</p>
	                        </div>
	                        <div id="category_middle_3" style="display: none">
	                        	<p>19~22인치 모니터</p>
	                            <p>24~26인치 모니터</p>
	                            <p>27~29인치 모니터</p>
	                            <p>30~39인치 모니터</p>
	                        </div>
	                        <div id="category_middle_4" style="display: none">
	                        	<p>잉크젯 프린터</p>
	                            <p>레이저 프린터</p>
	                            <p>복합기</p>
	                            <p>스캐너</p>
	                        </div>
	                        <div id="category_middle_5" style="display: none">
	                        	<p>공유기</p>
	                            <p>랜카드</p>
	                            <p>랜 케이블</p>
	                            <p>스위칭 허브</p>
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
	                    <input type="radio" name="product_status"> 새상품(미개봉)
	                    <b class="status_explane">사용하지 않은 새 상품</b>
	                    <br><br>
	                    <input type="radio" name="product_status"> 사용감 없음
	                    <b class="status_explane">사용은 했지만 눈에 띄는 흔적이나 얼룩이 없음</b>
	                    <br><br>
	                    <input type="radio" name="product_status"> 사용감 적음
	                    <b class="status_explane">눈에 띄는 흔적이나 얼룩이 약간 있음</b>
	                    <br><br>
	                    <input type="radio" name="product_status"> 사용감 많음
	                    <b class="status_explane">눈에 띄는 흔적이나 얼룩이 많이 있음</b>
	                    <br><br>
	                    <input type="radio" name="product_status"> 고장/파손상품
	                    <b class="status_explane">기능 이상이나 외관 손상 등으로 수리/수선 필요</b>
	                </td>
	            </tr>
	            <tr class="lines">
	                <td colspan="2"><br><hr><br></td>
	            </tr>
	        </table>
	    </form>
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

            if (inputFile.files.length == 1){//파일을 하나 선택 => 미리보기
                const reader = new FileReader();

                reader.readAsDataURL(inputFile.files[0]);

                reader.onload = function(ev){
                    if(num == 1) {
                       document.getElementById("product-img").src = ev.target.result;
                    }
                }
            } else { // 선택된 파일을 취소한 경우 => 미리보기 지우기
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
                alert("최대 2000자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 2000));
                $('#counter').text("(2000 / 2000)");
            }
        });
        
       	const noselected = document.getElementById("category_middle_noselected");
       	const middle1 = document.getElementById("category_middle_1");
       	const middle2 = document.getElementById("category_middle_2");
       	const middle3 = document.getElementById("category_middle_3");
       	const middle4 = document.getElementById("category_middle_4");
       	const middle5 = document.getElementById("category_middle_5");
       	const middleOpt1 = document.getElementById("category_middle_opt1");
       	const middleOpt2 = document.getElementById("category_middle_opt2");
       	const middleOpt3 = document.getElementById("category_middle_opt3");
       	const middleOpt4 = document.getElementById("category_middle_opt4");
       	const middleOpt5 = document.getElementById("category_middle_opt5");
        	
        function category_middle(num){
            var categoryId = "category_middle_" + num;
            const ele = document.getElementById(categoryId);

        	noselected.style.display = "none";
        	middle1.style.display = "none";
        	middle2.style.display = "none";
        	middle3.style.display = "none";
        	middle4.style.display = "none";
        	middle5.style.display = "none";
        	ele.style.display = "block";
        	
        	var categoryOpt = "category_middle_opt" + num;
        	const opt = document.getElementById(categoryOpt);
        	
        	middleOpt1.style.background = "none";
        	middleOpt2.style.background = "none";
        	middleOpt3.style.background = "none";
        	middleOpt4.style.background = "none";
        	middleOpt5.style.background = "none";
        	opt.style.background = "darkgray";
        }
    </script>
</body>
</html>