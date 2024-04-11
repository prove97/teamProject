<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        *{
            box-sizing: border-box;
            /* border: 1px solid red; */
        }
        body{
            display: flex;
            align-items: center;
            justify-content: center;
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
        .input_table tr{
            border-bottom: 1px solid gray;;
        }
        #photo_count{
            padding: 0px;
            margin: 0px;
            font-size: 15px;
            color: darkgray;
        }
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

        }
        #price > input{
            border: 1px solid gray;
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
                    <p id="photo_count">(0/10)</p>
                </td>
                <td class="column2">
                    <img src="" style="width: 144px; height: 150px;">
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
                    <input type="text" id="title"> <sub class="letter_count">0/40</sub>
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
                            <b style="color: darkgray;">소분류 선택</b>
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
                    <textarea name="" id="product_info" cols="79" rows="10"></textarea>
                    <sub class="letter_count">0/2000</sub>
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
        <div class="btn">
            <button id="delete_btn">삭제하기</button>
            <button id="submit_btn">등록하기</button>
        </div>
    </div>
</body>
</html>