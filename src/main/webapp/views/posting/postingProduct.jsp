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
    <%@ include file="../common/header.jsp" %>
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
                       <img id="product-img" name="at" src="${pageContext.request.contextPath}/img/fileImg.png" style="width: 144px; height: 150px;" onclick="chooseFile(1);">
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
                               <p id="category_top_opt1" onclick="category_top(1);">컴퓨터 주요 부품</p>
                               <p id="category_top_opt2" onclick="category_top(2);">키보드, 마우스, 주변기기</p>
                               <p id="category_top_opt3" onclick="category_top(3);">모니터, 악세서리</p>
                               <p id="category_top_opt4" onclick="category_top(4);">프린터, 복합기, 스캐너</p>
                               <p id="category_top_opt5" onclick="category_top(5);">네트워크, 공유기</p>
                           </div>
                           <div id="category_middle_noselected">
                               <b style="color: darkgray;">중분류 선택</b>
                           </div>
                           <div id="category_middle_1" style="display: none">
                        	   <li><button type="button" id="category_middle_opt11" value="CPU" onclick="category_middle(this);">CPU</button></li>
                               <li><button type="button" id="category_middle_opt12" value="메인보드" onclick="category_middle(this);">메인보드</button></li>
                               <li><button type="button" id="category_middle_opt13" value="메모리" onclick="category_middle(this);">메모리</button></li>
                               <li><button type="button" id="category_middle_opt14" value="그래픽카드" onclick="category_middle(this);">그래픽카드</button></li>
                               <li><button type="button" id="category_middle_opt15" value="SSD" onclick="category_middle(this);">SSD</button></li>
                               <li><button type="button" id="category_middle_opt16" value="하드디스크" onclick="category_middle(this);">하드디스크</button></li>
                               <li><button type="button" id="category_middle_opt17" value="ODD(외장/내장)" onclick="category_middle(this);">ODD(외장/내장)</button></li>
                               <li><button type="button" id="category_middle_opt18" value="케이스" onclick="category_middle(this);">케이스</button></li>
                               <li><button type="button" id="category_middle_opt19" value="파워서플라이" onclick="category_middle(this);">파워서플라이</button></li>
                               <li><button type="button" id="category_middle_opt110" value="공/수냉쿨러" onclick="category_middle(this);">공/수냉쿨러</button></li>
                           </div>
                           <div id="category_middle_2" style="display: none">
                              <li><button type="button" id="category_middle_opt21" value="키보드" onclick="category_middle(this);">키보드</button></li>
                               <li><button type="button" id="category_middle_opt22" value="마우스" onclick="category_middle(this);">마우스</button></li>
                               <li><button type="button" id="category_middle_opt23" value="스피커" onclick="category_middle(this);">스피커</button></li>
                           </div>
                           <div id="category_middle_3" style="display: none">
                              <li><button type="button" id="category_middle_opt31" value="19~22인치 모니터" onclick="category_middle(this);">19~22인치 모니터</button></li>
                               <li><button type="button" id="category_middle_opt32" value="24~26인치 모니터" onclick="category_middle(this);">24~26인치 모니터</button></li>
                               <li><button type="button" id="category_middle_opt33" value="27~29인치 모니터" onclick="category_middle(this);">27~29인치 모니터</button></li>
                               <li><button type="button" id="category_middle_opt34" value="30~39인치 모니터" onclick="category_middle(this);">30~39인치 모니터</button></li>
                           </div>
                           <div id="category_middle_4" style="display: none">
                              <li><button type="button" id="category_middle_opt41" value="잉크젯 프린터" onclick="category_middle(this);">잉크젯 프린터</button></li>
                               <li><button type="button" id="category_middle_opt42" value="레이저 프린터" onclick="category_middle(this);">레이저 프린터</button></li>
                               <li><button type="button" id="category_middle_opt43" value="복합기" onclick="category_middle(this);">복합기</button></li>
                               <li><button type="button" id="category_middle_opt44" value="스캐너" onclick="category_middle(this);">스캐너</button></li>
                           </div>
                           <div id="category_middle_5" style="display: none">
                              <li><button type="button" id="category_middle_opt51" value="공유기" onclick="category_middle(this);">공유기</button></li>
                               <li><button type="button" id="category_middle_opt52" value="랜카드" onclick="category_middle(this);">랜카드</button></li>
                               <li><button type="button" id="category_middle_opt53" value="랜 케이블" onclick="category_middle(this);">랜 케이블</button></li>
                               <li><button type="button" id="category_middle_opt54" value="스위칭 허브" onclick="category_middle(this);">스위칭 허브</button></li>
                           </div>
                           <input type="hidden" id="categoryM" name="categoryM" value="">
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
                       <!-- <button type="button">내 위치</button>
                       <button type="button">최근 지역</button>
                       <button type="button">주소 검색</button>
                       <button type="button">지역설정안함</button>
                       <br> -->
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
                       <input type="radio" name="productStatus" value="새상품(미개봉)" id="grade1">새상품(미개봉)
                       <label class="status_explane" for="grade1">사용하지 않은 새 상품</label>
                       <br><br>
                       <input type="radio" name="productStatus" value="사용감 없음" id="grade2">사용감 없음
                       <label class="status_explane" for="grade2">사용은 했지만 눈에 띄는 흔적이나 얼룩이 없음</label>
                       <br><br>
                       <input type="radio" name="productStatus" value="사용감 적음" id="grade3">사용감 적음
                       <label class="status_explane" for="grade3">눈에 띄는 흔적이나 얼룩이 약간 있음</label>
                       <br><br>
                       <input type="radio" name="productStatus" value="사용감 많음" id="grade4">사용감 많음
                       <label class="status_explane" for="grade4">눈에 띄는 흔적이나 얼룩이 많이 있음</label>
                       <br><br>
                       <input type="radio" name="productStatus" value="고장/파손상품" id="grade5">고장/파손상품
                       <label class="status_explane" for="grade5">기능 이상이나 외관 손상 등으로 수리/수선 필요</label>
                   </td>
               </tr>
               <tr class="lines">
                   <td colspan="2"><br>
                   <hr><br></td>
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