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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/login.css">
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="/views/common/header.jsp" %>

    <section>
    <div class="log">
        <div><img src="${pageContext.request.contextPath}/resources/image/loginlogo.png" alt="" id="img1"></div>
        <div>
				<fieldset id="login-area">
					<p id="login-font">login</p>
					<form action="${pageContext.request.contextPath}/loginPage.me" method="post" id="loginForm">
					<div id="login-form">
						<input type="text" placeholder="아이디를 입력하세요" required id="id-input" name="userId"
							style="background-image: url(${pageContext.request.contextPath}/resources/image/idInput.png);">
					</div>
					<div id="login-form">
						<input type="password" placeholder="비밀번호를 입력하세요" required id="pwd-input" name="userPwd"
							style="background-image: url(${pageContext.request.contextPath}/resources/image/pwdInput.png);">
					</div>
					<div id="save-id">
						<input type="checkbox" name="save" id="save-checkbox"
							style="cursor: pointer;"> ID 기억하기
					</div>
					<br>
					<br>
					<div id="submit">
						<button type="submit" id="submit-button" onclick="">로그인</button>
					</div>
					<div class="bottom">
						<div id="bottom-left">
							<a href="${pageContext.request.contextPath}/views/login/idFind.jsp">아이디찾기</a>
						</div>
						<div id="bottom-right">
							<a href="${pageContext.request.contextPath}/views/login/pwdFind.jsp">비밀번호찾기</a>
						</div>
						<div id="bottom-right">
							<a href="${pageContext.request.contextPath}/views/login/signIn.jsp">회원가입</a>
						</div>
					</div>
					</form>
				</fieldset>
			</div>
    </div>
    </section>

	<script>
        document.getElementById('save-id').addEventListener('click', function() {
            let checkbox = document.getElementById('save-checkbox');
            checkbox.checked = !checkbox.checked;
        });
        document.getElementById('save-checkbox').addEventListener('click', function() {
            let checkbox = document.getElementById('save-checkbox');
            checkbox.checked = !checkbox.checked;
        });


		$(document).ready(
				function() {
					// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
					let userId = getCookie("userId");
					$("#id-input").val(userId);

					// 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
					if ($("#id-input").val() != "") {
						$("#save-checkbox").prop("checked", true); // ID 저장하기를 체크 상태로 두기.
					}

					$("#save-checkbox").change(function() { // 체크박스에 변화가 있다면,
						if ($("#save-checkbox").is(":checked")) { // ID 저장하기 체크했을 때,
							setCookie("userId", $("#id-input").val(), 7); // 7일 동안 쿠키 보관
						} else { // ID 저장하기 체크 해제 시,
							deleteCookie("userId");
						}
					});

					// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
					$("#id-input").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
						if ($("#save-checkbox").is(":checked")) { // ID 저장하기를 체크한 상태라면,
							setCookie("userId", $("#id-input").val(), 7); // 7일 동안 쿠키 보관
						}
					});

					function setCookie(cookieName, value, exdays) {
						let exdate = new Date();
						exdate.setDate(exdate.getDate() + exdays);
						// 아이디에 세미콜론이 포함되어 있을 경우 이스케이프 처리
						let cookieValue = escape(value.replace(';', ''))
								+ ((exdays == null) ? "" : "; expires="
										+ exdate.toGMTString());
						document.cookie = cookieName + "=" + cookieValue;
					}

					function deleteCookie(cookieName) {
						let expireDate = new Date();
						expireDate.setDate(expireDate.getDate() - 1);
						document.cookie = cookieName + "=; expires="
								+ expireDate.toGMTString();
					}

					function getCookie(cookieName) {
						cookieName = cookieName + '=';
						let cookieData = document.cookie;
						let start = cookieData.indexOf(cookieName);
						let cookieValue = '';
						if (start != -1) {
							start += cookieName.length;
							let end = cookieData.indexOf(';', start);
							if (end == -1)
								end = cookieData.length;
							//console.log("end 위치: " + end);
							cookieValue = unescape(
									cookieData.substring(start, end + 1))
									.replace(';', ''); // 세미콜론 제거
						}
						return cookieValue;
					}
				});
	</script>

    <!-- 푸터 -->
    <%@ include file="/views/common/footer.jsp" %>
</body>
</html>