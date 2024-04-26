<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.util.Calendar, java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_mainPage</title>
	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/postPage.css">
</head>
<body bgcolor="D9D9D9">
    <div class="contentBox">
    <%@ include file="../common/header.jsp" %>
        <br>
        <div class="category_header">
            <div class="category_navi" style="display:none">
                <div>🏠 홈</div>
                <div style="width: 30px; justify-content: center;">></div>
                <div class="category_bar1" style="padding: 3px;">
                    <select name="categoryT">
                    	<option selected disabled style="display:none">카테고리1</option>
                    	<option>컴퓨터 주요 부품</option>
                    	<option>키보드,마우스,주변 기기</option>
                    	<option>모니터, 악세서리</option>
                    	<option>프린터,복합기,스캐너</option>
                    	<option>네트워크,공유기</option>
                    </select>
                </div>
                <div style="width: 30px; justify-content: center;">></div>
                <div class="category_bar2" style="padding: 3px;">
                    <select name="categoryM">
                    	<option selected disabled style="display:none">${p.categoryM}</option>
                    	<option>CPU</option>
                    	<option>메인보드</option>
                    	<option>메모리</option>
                    	<option>그래픽카드</option>
                    	<option>SSD</option>
                    	<option>하드디스크</option>
                    	<option>ODD(외장/내장)</option>
                    	<option>케이스</option>
                    	<option>파워서플라이</option>
                    	<option>공/수냉쿨러</option>
                    </select>
                    <select name="categoryM" style="display:none">
                    	<option selected disabled style="display:none">카테고리2</option>
                    	<option>키보드</option>
                    	<option>마우스</option>
                    	<option>스피커</option>
                    </select>
                    <select name="categoryM" style="display:none">
                    	<option selected disabled style="display:none">카테고리2</option>
                    	<option>19~22인치 모니터</option>
                    	<option>24~26인치 모니터</option>
                    	<option>27~29인치 모니터</option>
                    	<option>30~39인치 모니터</option>
                    </select>
                    <select name="categoryM" style="display:none">
                    	<option selected disabled style="display:none">카테고리2</option>
                    	<option>잉크젯 프린터</option>
                    	<option>레이저 프린터</option>
                    	<option>복합기</option>
                    	<option>스캐너</option>
                    </select>
                    <select name="categoryM" style="display:none">
                    	<option selected disabled style="display:none">카테고리2</option>
                    	<option>공유기</option>
                    	<option>랜카드</option>
                    	<option>랜 케이블</option>
                    	<option>스위칭 허브</option>
                    </select>
                </div>
            </div>
            <div class="report">
                <a href="indexToFaq.fa">☏ 신고하기</a>
                <form action="delete.pr" method="post">
                	<input type="hidden" name="goodsId" value="${p.goodsId}"/>
                	<button type="submit" id="modifyBtn" style="margin-left: 30px; color: black; width: 90px; height: 30px; font-size: 13px; border-radius: 5px; font-weight: 600;">✂️삭제하기</button>
                </form>
            </div>
        </div>
        
        <div class="main_part">
            <div>
                <!-- <img src="${pageContext.request.contextPath}/img/airpod.jpeg" alt="" id="airpod"> -->
                <img src="${pageContext.request.contextPath}/${attachment.filePath}/${attachment.changeName}" alt="" id="airpod">
            </div>
            <div>
                <div><h2>${p.title}</h2></div>
                <div><h1>${p.sellPrice}원</h1></div>
                <br><br>
                <div class="post_info">
                    <div style="color: mediumaquamarine;">♥ ${p.loveIt}</div>
                    <div>👀 ${p.viewCount}</div>
                    <div id="enrollDate">
                    	${p.enrollDate}
                    </div>
                </div>
                <br>
                <div class="buttons">
                    <div><button type="button" id="button1">♥ 찜</button></div>
                    <div><button type="button" id="button2">댓글 달기</button></div>
                    <div><button type="button" id="button3">구매 신청</button></div>
                </div>
            </div>
        </div>
        
        <div class="seller_part">
            <div class="seller_info">
                <div>
                    <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" id="seller">
                </div>
                <div>
                    <p id="sellerName">${p.nickname}</p>
                </div>
            </div>
            <div id="SellerBrightnessRate" style="height: 35px; position: absolute; left: 180px; top: 15px;">
                <p style="font-size: 14px; margin: 0; width: 100%">밝음 수치: ${p.score} lux</p>
                <div class="progress" style="width: 120px; height: 14px;  border-radius: 10px; border: 0.1px solid darkgray;" >
                    <div id="progress-bar" style="width:${p.score}%; background: #70C9A0;"></div>
                </div>
            </div>
        </div>
        
        <div class="product_part">
            <div>
                <h3 style="font-size: 25px;">상품 설명</h3>
                <div class="product_status">
                    <table>
                        <tr>
                            <th>· 제품 상태 : </th>
                            <td>${p.productStatus}</td>
                        </tr>
                        <tr>
                            <th>· 교환 여부 : </th>
                            <td>
                            	<c:choose>
                            		<c:when test="${p.returnPd eq 'Y'}">
                            			가능
                            		</c:when>
                            		<c:otherwise>
                            			불가능
                            		</c:otherwise>
                            	</c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th>· 거래 지역 : </th>
                            <td>${p.locationT}</td>
                        </tr>
                    </table>
                </div>
                <div class="product_info">
                    <pre>
                        ${p.pExplain}
                    </pre>
                </div>
            </div>
        </div>
        <hr>
        <div>
            <ul class="comment_banner">
                <li id="opt1" onclick="show_comment_part()"><b id="banner_opt1">구매 신청</b></li>
                <li id="opt2" onclick="show_comment()"><b id="banner_opt2">댓글</b></li>
            </ul>
        </div>
        <div class="comment_part" id="comment_banner_menu1" style="display: none">
        	<c:forEach var="q" items="${requestList}">
	        	<div class="purchase_request">
	                <p class="purchase_method">[구매 신청]</p>
	                <p class="time_of_writing1">${q.requestDate}</p>
	                <div class="buyer">
	                    <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" class="buyer_pic">
	                    <p class="buyer_name">${q.nickname}</p>
	                    <div id="SellerBrightnessRate" style="height: 35px;">
			                <p style="font-size: 14px; margin: 0; width: 100%">${q.score} lux</p>
			                <div class="progress" style="width: 50px; height: 10px;  border-radius: 10px; border: 0.1px solid darkgray;" >
			                    <div id="progress-bar" style="width:${q.score}%; background: #70C9A0;"></div>
			                </div>
			            </div>
	                </div>
	                <div class="suggested_price">
	                    <p>구매 희망 가격 : ${q.requestPrice}원</p>
	                </div>
	            </div>
        	</c:forEach>
        	<div class="purchase_request" id="purchase_requesting" style="display: none">
                <p class="purchase_method">[구매 신청 작성중]</p>
                <p class="time_of_writing1"><%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()) %></p>
                <div class="buyer">
                    <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" class="buyer_pic">
                    <p class="buyer_name">${loginUser.nickname}</p>
                    <div id="SellerBrightnessRate" style="height: 35px;">
		                <p style="font-size: 14px; margin: 0; width: 100%">${loginUser.score} lux</p>
		                <div class="progress" style="width: 50px; height: 10px;  border-radius: 10px; border: 0.1px solid darkgray;" >
		                    <div id="progress-bar" style="width:${loginUser.score}%; background: #70C9A0;"></div>
		                </div>
		            </div>
                </div>
                <div class="suggested_price">
                	<form action="insert.req">
               			<input type="hidden" name="goodsId" value="${p.goodsId}"/>
               			<input type="hidden" name="requestWriter" value="${loginUser.userNo}"/>
               			<input type="hidden" name="nickname" value="${loginUser.nickname}"/>
               			<input type="hidden" name="score" value="${loginUser.score}"/>
                    	<p>구매 희망 가격 : <input type="number" id="requestingPrice" name="requestPrice" placeholder="숫자만 입력">원 <button type="submit" id="requestingBtn">신청하기</button></p>
                    </form>
                </div>
            </div>
        </div>
        <div id="comment_banner_menu2" style="display: none;">
        	<c:forEach var="r" items="${replyList}">
		        <div class="comment">
	        		<button type="button" class="nreplyingBtn" data-rno="${r.replyNo}">대댓글</button>
	        		<div class="buyer" style="margin-bottom: 20px;">
		                <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" class="buyer_pic">
		                <p class="buyer_name">${r.nickname}</p>
		                <div id="SellerBrightnessRate" style="height: 35px;">
			                <p style="font-size: 14px; margin: 0; width: 100%">${r.score} lux</p>
			                <div class="progress" style="width: 50px; height: 10px;  border-radius: 10px; border: 0.1px solid darkgray;" >
			                    <div id="progress-bar" style="width:${r.score}%; background: #70C9A0;"></div>
			                </div>
			            </div>
		            </div>
		            <div class="first_comment">
		                <p style="font-size: 20px;">${r.replyContent}</p>
		            </div>
		            <div>
		                <p class="time_of_writing2">${r.replyDate}</p>
		                <p class="extension_button">▽</p>
		            </div>
		            
		            <c:set var="replyNo" value="${r.replyNo}"/>
		            <c:forEach var="n" items="${nreplyList}">
		            	<c:set var="refReplyNo" value="${n.replyNo}"/>
		            	<c:if test="${replyNo eq refReplyNo}">
			            	<div class="reply">
				                <p>↳</p>
				                <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin: 0px 5px;">
				                <p class="comment_reply">${n.nreplyContent}</p>
				                <p class="time_of_writing3">${n.nreplyDate}</p>
				            </div>
				        </c:if>
		            </c:forEach>
		            
		            <div class="reply" id="nreplying${r.replyNo}" style="display: none;">
		                <p>↳</p>
		                <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" style="width: 30px; height: 30px; border-radius: 50%; margin: 0px 5px;">
		                <form action="insert.nr">
		                	<input type="hidden" name="goodsId" value="${p.goodsId}"/>
		                	<input type="hidden" name="replyNo" value="${r.replyNo}"/>
	               			<input type="hidden" name="nreplyWriter" value="${loginUser.userNo}"/>
		                	<p class="comment_reply"><input type="text" id="replyingComment" name="nreplyContent" placeholder="대댓글 입력"> <button type="submit" id="nreplyingSubBtn">작성</button></p>
		                </form>
		                <p class="time_of_writing3"><%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date())%></p>
		            </div>
		        </div>
        	</c:forEach>
	        <div class="comment" id="replying" style="display: none;">
	        	<div class="buyer" style="margin-bottom: 20px;">
	                <img src="${pageContext.request.contextPath}/img/프사.jpg" alt="" class="buyer_pic">
	                <p class="buyer_name">${loginUser.nickname}</p>
	                <div id="SellerBrightnessRate" style="height: 35px;">
		                <p style="font-size: 14px; margin: 0; width: 100%">${loginUser.score} lux</p>
		                <div class="progress" style="width: 50px; height: 10px;  border-radius: 10px; border: 0.1px solid darkgray;" >
		                    <div id="progress-bar" style="width:${loginUser.score}%; background: #70C9A0;"></div>
		                </div>
		            </div>
	            </div>
	            <div class="first_comment">
	            	<form action="insert.rep">
	            		<input type="hidden" name="goodsId" value="${p.goodsId}"/>
               			<input type="hidden" name="replyWriter" value="${loginUser.userNo}"/>
               			<input type="hidden" name="nickname" value="${loginUser.nickname}"/>
               			<input type="hidden" name="score" value="${loginUser.score}"/>
	                	<p style="font-size: 20px;"><input type="text" id="replyingComment" name="replyContent" placeholder="댓글 입력"> <button type="submit" id="replyingBtn">작성</button></p>
	            	</form>
	            </div>
	            <div>
	                <p class="time_of_writing2"><%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()) %></p>
	            </div>
	        </div>
        </div>
    <%@ include file="../common/footer.jsp" %>
    </div>

	<script src="${pageContext.request.contextPath}/script/postPage.js"></script>
</body>
</html>