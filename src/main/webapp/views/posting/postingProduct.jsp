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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/postingProduct.css">
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
	                    <img id="product-img" name="attachment" src="${pageContext.request.contextPath}/img/fileImg.png" style="width: 144px; height: 150px;" onclick="chooseFile(1);">
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
	                    <input type="text" id="title" name="title"> <sub class="letter_count" id="title_letter_count" maxlength="40">0/40</sub>
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
	                    <textarea name="pExplain" id="product_info" cols="70" rows="10" maxlength="2000"></textarea>
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
	                    <input type="text" id="detail_address" name="locationT">
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
	                        <input type="number" id="price" name="sellPrice"><b style="font-size: 17px; margin: 0px 4px;">원</b>
	                    </div>
	                    <div class="price_check_opt">
	                        <input type="checkbox" name="returnPd">교환 가능
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
	                    <input type="radio" name="productStatus">새상품(미개봉)
	                    <b class="status_explane">사용하지 않은 새 상품</b>
	                    <br><br>
	                    <input type="radio" name="productStatus">사용감 없음
	                    <b class="status_explane">사용은 했지만 눈에 띄는 흔적이나 얼룩이 없음</b>
	                    <br><br>
	                    <input type="radio" name="productStatus">사용감 적음
	                    <b class="status_explane">눈에 띄는 흔적이나 얼룩이 약간 있음</b>
	                    <br><br>
	                    <input type="radio" name="productStatus">사용감 많음
	                    <b class="status_explane">눈에 띄는 흔적이나 얼룩이 많이 있음</b>
	                    <br><br>
	                    <input type="radio" name="productStatus">고장/파손상품
	                    <b class="status_explane">기능 이상이나 외관 손상 등으로 수리/수선 필요</b>
	                </td>
	            </tr>
	            <tr class="lines">
	                <td colspan="2"><br><hr><br></td>
	            </tr>
	        </table>
	        <div style="display:none">
	                <input type="file" name="attachment" id="file1" required onchange="loadImg(this, 1)">
	            </div>
	        <div class="btn">
	            <button type="reset" id="delete_btn">삭제하기</button>
	            <button type="submit" id="submit_btn">등록하기</button>
	        </div>
	    </form>
    </div>
    
    <script src="${pageContext.request.contextPath}/script/postingProduct.js"></script>
</body>
</html>