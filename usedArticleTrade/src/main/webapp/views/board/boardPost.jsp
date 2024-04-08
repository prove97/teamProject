<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardPost</title>
<style>
	body{
        display: flex;
		flex-direction: column;
		align-items: center;

		height: auto;

        position: relative;
    }
	.header{
		z-index: 1;
	}

	/*게시글 전체 영역*/
	.mainSection{
		width: 1080px;		
		height: 100%;

		margin-top: 72px;
	}

	.mainSection>*{
		margin: auto;

		box-sizing: border-box;
	}

	/*게시글 전체 영역*/
	.communityTitle{
		height: 110px;
		width: 100%;

		font-size: 30px;
		text-align: left;
		line-height: 110px;

		border-top: 1px solid #D9D9D9;
		border-bottom: 1px solid #D9D9D9;
	}

	/*대표 공지글*/
	.noticeMain{
		height: 50px;
		width: 100%;

		text-align: left;
		line-height: 50px;

	}

	.noticeMain>span:nth-child(1){
		display: inline-block;
		background: orange;
		
		height: 25px;
		width: 45px;

		font-weight: 700;
		text-align: center; 
		line-height: 25px; 
		
		margin-right: 5px;

	}

	/*게시글 메인 영역*/
	.main{
		height: auto;
		width: 100%;

		display: flex;
		flex-direction: column;
		align-items: center;

	}

	/*게시글 제목*/
	.boardTitle{
		height: 80px;
		width: 1080px;

		font-size: 28px;
		font-weight: 700;
		text-align: left;
		line-height: 80px;

		border-top: 1px solid #D9D9D9;
		border-bottom: 1px solid #D9D9D9;

	}

	/*게시글 정보*/
	.boardInfo{
		height: 45px;
		width: 100%;

		display: flex;
		justify-content: space-between;

		line-height: 45px;

	}
	
	.boardInfo>span:nth-child(1)>span{
		margin-left: 10px;
		margin-right: 10px;
	}

	/*게시글 내용*/
	.contents{
		width: 1080px;		
		overflow: auto;
		text-overflow: ellipsis;

		border-top: 1px solid #D9D9D9;


	}
	.contents>p{
		padding-left: 15px;
		padding-right: 15px;
		padding-top: 30px;
		padding-bottom: 30px;

		margin-bottom: 200px;



	}

	/*추천 버튼*/
	.likesBtn{
		width: 120px;
		height: 60px;

		margin-bottom: 30px;

		border: 1px solid black;
		border-radius: 5px;
	}

	.likesBtn>button{
		width: 100%;
		height: 100%;

		border: none;
		background: none;

		text-align: center;
		line-height: 60px;
		
	}

	/*글작성한 유저 정보*/
	.userInfo{
		width: 1060px;	
		height: 200px;	

		display: flex;
		justify-content: center;
		align-items: center;

		border: 1px solid #D9D9D9;
	}

	.userInfo .space{
		width: 140px;
		height: 100px;
	}

	/*유저 프로필*/
	#userProfile{
		width: 45%;
		height: 80%;

		display: flex;
		justify-content: space-around;
		align-items: center;

		border-right: 1px solid #D9D9D9;
		
	}
	#userProfile #userNickname{
		font-size: 24px;
		margin-bottom: 10px;
	}

	#userProfile>#userImg{
		width: 100px;
		height: 100px;

		border-radius: 100%;

		background: gray;
	}

	#userNicknameAndStatus *{
		text-align: left;
	}

	/*유저 작성글, 댓글 모음*/
	#userBoardList{
		width: 50%;
		height: 80%;

		padding-left: 15px;
	}

	#userBoardList *{
		text-align: center;
	}

	#userBoardList>#myBoardsAndComments{
		display: flex;
		margin-bottom: 5px;
		
	}

	#userBoardList>#myBoardsAndComments div{		
		border-bottom: 3px solid #70C9A0;
		font-size: 17px;
		font-weight: 600;
		padding-left: 5px;
		padding-right: 5px;

		margin-left: 5px;
		margin-right: 5px;
	}

	#userBoardList>#list ul{
		padding-left: 14px;
	}


	#userBoardList>#list li{
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}

	#userBoardList>#list li>a{
		display: flex;
		flex-direction: row;
		justify-content: space-between;

		margin-bottom: 3px;

		color: black;
		text-decoration: none;
		list-style: none;
	}

	/*게시글 제목,작성일 폰트크기 수정*/
	#userBoardList>#list a>.title{
		font-size: 15px;
	}

	#userBoardList>#list a>.date{
		font-size: 13px;
	}

	/*게시글, 댓글 사이 배너*/
	.banner{
		width: 1151px;
		height: 150px;

		background-image: url(${pageContext.request.contextPath}/img/banner.png);
		background-repeat: no-repeat;
		background-size: contain;

		border: 1px solid black;
		margin-top: 90px;
		margin-bottom: 50px;
	}


	/*게시글 댓글 영역*/
	.commentSection{
		width: 1080px;
		height: auto;
		
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		
		margin-bottom: 150px;
	}

	.commentSection>span{
		height: 35px;

		font-size: 26px;
		margin-bottom: 20px;

		align-self: flex-start;

	}

	.commentSection>.commentSpace{
		width: 100%;
		height: auto;

		display: flex;
		justify-content: left;

		margin: 10px;

		position: relative;
	}

	.commentSection>.commentSpace>.img{
		width: 50px;
		height: 50px;

		background: gray;

		border-radius: 100%;
	}

	.commentSection>.commentSpace>.comment{
		width: 60%;
		height: auto;

		display: flex;
		flex-direction: column;
		align-items: flex-start ;

		margin-left: 20px;
	}

	.commentSection>.commentSpace>.comment>#commentNickname{
		font-weight: bold;
		margin-bottom: 5px;
	}

	.commentSection>.commentSpace>.comment>#commentContents{
		height: auto;

		word-break: normal;

	}


	.commentSection>.commentSpace>.commentEnrollDate{
		font-size: 13px;

		position: absolute;
		right: 10px;

	}

	
	.commentSection>.replyBtn{
		width: 100%;
		height: 20px;

		background: #c7c7c77a;
		font-size: 15px;
		text-align: center;
		
		margin-bottom: 20px;
	}

	.commentSection>.replyBtn:hover{
		cursor: pointer;
	}


	.commentSection>.enrollComment{
		width: 100%;
		height: 100px;

		display: none;


	}

	.commentSection>.enrollComment textarea{
		height: 120px;
		width: 100%;

		resize: none;
	}
	.commentSection>.enrollComment button{
		height: 40px;
		width: 105px;

		border: none;		
		border-radius: 5px;

		float: right;
		
	}

	/*footer 공간 설정*/
	#footerSpace{
		height: 160px;
	}



	
</style>

</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<div class="mainSection">
		<div class="communityTitle">
			<span>키보드 마우스 게시판 - </span>
			<span>내 키보드와 마우스는 왜 끊임없이 바뀌는가</span>
		</div>
		<div class="noticeMain">
			<span>공지</span>
			<span>전체 게시판 공통 규정 (23.10.31)</span>
		</div>
		<div class="main">
			<div class="boardTitle">
				monsgeek m3 키보드 스테빌 질문!!
			</div>
			<div class="boardInfo">				
				<span>
					<span>닉네임</span>
					<span>댓글: 4</span>
					<span>조회수: 1585</span>
				</span>
				<span>2024.04.01 20:31</span>					
			</div>
			<div class="contents">
				<p>
					안녕하세요 이번에 입문용으로 monsgeek m3를 구매하였는데 스테빌에 대해 여쭤보려고 합니다. 
					제가 본건 sw투명 무보강 스테빌 V2입니다(네이버에 치면 나오는 거) 판매자에게 여쭤보니 호환이 안된다고 하는데 리뷰에는 m3가 보이는 것 같아서요... 호환되는거면 사려하지만 만약 안된다면 스테빌 추천 부탁드립니다!!
					또 스테빌만 윤활하려는데 초심자에게 크라이록스 205g은 과하겠죠? 퍼마텍스가 낫겠죠....?
					안녕하세요 이번에 입문용으로 monsgeek m3를 구매하였는데 스테빌에 대해 여쭤보려고 합니다. 
					제가 본건 sw투명 무보강 스테빌 V2입니다(네이버에 치면 나오는 거) 판매자에게 여쭤보니 호환이 안된다고 하는데 리뷰에는 m3가 보이는 것 같아서요... 호환되는거면 사려하지만 만약 안된다면 스테빌 추천 부탁드립니다!!
					또 스테빌만 윤활하려는데 초심자에게 크라이록스 205g은 과하겠죠? 퍼마텍스가 낫겠죠....?
					안녕하세요 이번에 입문용으로 monsgeek m3를 구매하였는데 스테빌에 대해 여쭤보려고 합니다. 
					제가 본건 sw투명 무보강 스테빌 V2입니다(네이버에 치면 나오는 거) 판매자에게 여쭤보니 호환이 안된다고 하는데 리뷰에는 m3가 보이는 것 같아서요... 호환되는거면 사려하지만 만약 안된다면 스테빌 추천 부탁드립니다!!
					또 스테빌만 윤활하려는데 초심자에게 크라이록스 205g은 과하겠죠? 퍼마텍스가 낫겠죠....?
					안녕하세요 이번에 입문용으로 monsgeek m3를 구매하였는데 스테빌에 대해 여쭤보려고 합니다. 
					제가 본건 sw투명 무보강 스테빌 V2입니다(네이버에 치면 나오는 거) 판매자에게 여쭤보니 호환이 안된다고 하는데 리뷰에는 m3가 보이는 것 같아서요... 호환되는거면 사려하지만 만약 안된다면 스테빌 추천 부탁드립니다!!
					또 스테빌만 윤활하려는데 초심자에게 크라이록스 205g은 과하겠죠? 퍼마텍스가 낫겠죠....?
					안녕하세요 이번에 입문용으로 monsgeek m3를 구매하였는데 스테빌에 대해 여쭤보려고 합니다. 
					제가 본건 sw투명 무보강 스테빌 V2입니다(네이버에 치면 나오는 거) 판매자에게 여쭤보니 호환이 안된다고 하는데 리뷰에는 m3가 보이는 것 같아서요... 호환되는거면 사려하지만 만약 안된다면 스테빌 추천 부탁드립니다!!
					또 스테빌만 윤활하려는데 초심자에게 크라이록스 205g은 과하겠죠? 퍼마텍스가 낫겠죠....?
					dskdfjasdkfjs;ladfjdsl;kfj
					aksdjfkasj;ladfjdslasdkfskdfjl
					
				</p>
			</div>

			<div class="likesBtn" align="center">
				<button>41</button>
			</div>

			<div class="userInfo" align="center">
				<div id="userProfile">
					<div id="userImg"></div>											
					<div id="userNicknameAndStatus">
						<div id="userNickname">닉네임</div>
						<div id="brightnessRate">
							<h6>밝음 수치: 70 lux</h6>
							<div class="progress" style="width: 150px; border-radius: 10px;">
								<div class="progress-bar" style="width:70%; background: #70C9A0;"></div>
							</div>
						</div>
					</div>
					<div class="space"></div>

				</div>
				<div id="userBoardList">
					<div id="myBoardsAndComments">
						<div id="myBoards">작성글</div>
						<div id="myComments">댓글</div>
					</div>
					<div id="list">
						<ul>
						<%for(int i = 0; i < 5; i++){ %>
							<li>
								<a href="#">
									<div class="title">monsgeek m3 키보드 스테빌 질문!!</div>
									<div class="date">2023.04.16</div>
								</a>
							</li>
						<%} %>
						</ul>
				

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="banner" align="center"></div>

	<div class="commentSection">
		<span>댓글: 4개</span>
		<div class="commentSpace">
			<div class="img">
				<img src="" alt="">
			</div>
			<div class="comment">
				<div id="commentNickname">뚱냥이</div>
				<div id="commentContents">걸어서 3시간 거리인데 중간에 인도가 없어서요! 혹시 목숨값으로 좀 깎아주실수 있나요?!</div>
			</div>
			<div class="commentEnrollDate">2023.03.27 AM 11:20</div>
		</div>
		<div class="commentSpace">
			<div class="img">
				<img src="" alt="">
			</div>
			<div class="comment">
				<div id="commentNickname">캡숑</div>
				<div id="commentContents">목숨을 깍아드릴순 있는데</div>
			</div>
			<div class="commentEnrollDate">2023.03.27 AM 11:33</div>
		</div>
		<div class="commentSpace">
			<div class="img">
				<img src="" alt="">
			</div>
			<div class="comment">
				<div id="commentNickname">ㅋㅋ</div>
				<div id="commentContents">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</div>
			</div>
			<div class="commentEnrollDate">2023.03.27 AM 11:36</div>
		</div>
		<div class="replyBtn" onclick="enrollComment();">답글작성</div>
		<div class="enrollComment">
			<form action="">
				<textarea required></textarea>
				<button type="submit" align="right">댓글달기</button>
			</form>
		</div>
	</div>
	
	<div id="footerSpace"></div>
	<%@ include file="/views/common/footer.jsp" %>


	<script>
		function enrollComment(){
			const commentInput = document.querySelector(".commentSection>.enrollComment");
			const inputBtn = document.querySelector(".commentSection>.replyBtn");
			
			if(inputBtn.innerHTML === "답글작성"){
				commentInput.style.display = "block";
				inputBtn.innerHTML = "닫기";
			} else {
				commentInput.style.display = "none";
				inputBtn.innerHTML = "답글작성";

			}

		}
	</script>
</body>
</html>