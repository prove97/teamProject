<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/myFAQ.css">
</head>
<body>

    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>
    <!-- 메인 -->
    <div>
        <div class="FAQ-title">
            <h1 id="title-text">나의 문의내역</h1>
        </div>
			<c:forEach var="f" items="${list}" varStatus = "status">
	            <div class="FAQ-area" onclick="toggleFAQ(${f.faqId})">
	                <div id="FAQ${f.faqId}" class="FAQ">  
                        <div class="FAQ-in">
                            <p align="left" style="font-size: 25px; margin-top: 13px; padding-left: 12px;">제목 : ${f.faqTitle }</p> 
                            <div align="right"><span style="padding: 6px; border: 2px solid #FFB800; color: #FFB800; border-radius: 10px;">답변대기</span><span id="icon${f.faqId}">▽</span></div>
                        </div>
                        <div>
                            <p style="padding-left: 36px; font-size: 15px; margin-bottom: 13px;">내용 : ${f.faqContents}</p>
                        <div id="bottom">
                            <div id="b-right"><p align="left" style="padding-left: 36px;">${f.faqDate}</p></div>
                        </div>
	                    </div>
	                    <div id="hidden${f.faqId}" class="hide">
	                        <p style="padding-left: 36px; padding-bottom: 20px; font-size: 20px; margin-top: 15px;">운영자 답변</p>
	                        <p style="padding-left: 36px; font-size: 15px; margin-bottom: 13px;">내용 : ${f.answer}</p>
	                        <p style="padding-left: 36px;">${f.faqDate}</p>
	                    </div>
	                </div>
	            </div>
            </c:forEach>
    </div>
    <script>
    function toggleFAQ(num) {
    	console.log(num)
        let hiddenDiv = document.getElementById('hidden' + num);
        let icon = document.getElementById('icon' + num);
        let FAQDiv = document.getElementById('FAQ' + num);
        if (hiddenDiv.style.display === 'none' || hiddenDiv.style.display === '') {
            hiddenDiv.style.display = 'block';
            icon.innerHTML = '△'; // 올림차순 아이콘으로 변경
            let FAQHeight = FAQDiv.offsetHeight; // FAQ1 div의 높이를 가져옴
            hiddenDiv.style.top = FAQHeight + 'px'; // FAQ1 div의 높이에 따라 hidden div의 위치 조정
        } else {
            hiddenDiv.style.display = 'none';
            icon.innerHTML = '▽'; // 내림차순 아이콘으로 변경
        }
    }
    </script>
	
	<!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>