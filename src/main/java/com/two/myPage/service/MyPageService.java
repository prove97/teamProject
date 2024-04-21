package com.two.myPage.service;

import java.util.ArrayList;

import com.two.comments.model.vo.Comments;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.product.model.vo.Product;

public interface MyPageService {
	public Member selectMember(String userId); //회원정보 불러오기			
	
	public int checkNickname(String nickname); //닉네임 중복체크	
	public int checkPassword(Member m); //비밀번호 일치 확인	

	public int selectMyTradeListCount(int userNo); //나의 판매글 개수 불러오기 
	public ArrayList<Product> selectMyTradeList(int userNo, PageInfo pi); //나의 판매글 리스트 불러오기 
	
	public ArrayList<Comments> myCommentList(String userId); //나의 댓글 리스트 불러오기
	
	public ArrayList<Product> likeBoardList(String userId); // 찜목록 리스트 불러오기
	
	public Product indexToBoard(int bno); //클릭한 게시글로 이동
	
	
	
	
}
