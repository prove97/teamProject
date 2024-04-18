package com.two.myPage.service;

import java.util.ArrayList;

import com.two.board.model.vo.Board;
import com.two.comments.model.vo.Comments;
import com.two.member.model.vo.Member;

public interface MyPageService {
	public Member memberInfo(String userId); //회원정보 불러오기			
	public int checkNickname(String nickname); //닉네임 중복체크		
	public int checkPassword(String UserId); //비밀번호 일치 확인		


	public ArrayList<Board> myBoardList(String userId); //나의 판매글 리스트 불러오기 
	public ArrayList<Board> loadOnSale(String userId);
	public ArrayList<Board> loadSoldOut(String userId);	
	
	public ArrayList<Comments> myCommentList(String userId); //나의 댓글 리스트 불러오기
	
	public ArrayList<Board> likeBoardList(String userId); // 찜목록 리스트 불러오기
	
	public Board indexToBoard(int bno); //클릭한 게시글로 이동
	
	
	
	
}
