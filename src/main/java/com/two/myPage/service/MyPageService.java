package com.two.myPage.service;

import java.util.ArrayList;

import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.product.model.vo.Nreply;
import com.two.product.model.vo.Product;
import com.two.product.model.vo.Reply;
import com.two.wishList.model.vo.WishList;

public interface MyPageService {
	public Member selectMember(String userId); //회원정보 불러오기			
	
	public int checkNickname(String nickname); //닉네임 중복체크	
	public int updateNickname(String userId, String nickname); //로그인한 유저의 닉네임 변경 
	
	public int checkPassword(Member m); //비밀번호 일치 확인
	public int updatePassword(String userId, String userPwd); //로그인한 유저의 비밀번호 변경	

	public int selectMyTradeListCount(int userNo); //로그인한 유저의 판매글 개수 불러오기 
	public ArrayList<Product> selectMyTradeList(int userNo, PageInfo pi); //로그인한 유저의 판매글 리스트 불러오기 

	public int selectOnSaleListCount(int userNo); //로그인한 유저의 판매중인글 개수 불러오기 
	public ArrayList<Product> selectOnSaleList(int userNo, PageInfo pi); //로그인한 유저의 판매중인글 리스트 불러오기 
	
	public int selectSoldOutListCount(int userNo); //로그인한 유저의 판매완료된글 개수 불러오기 
	public ArrayList<Product> selectSoldOutList(int userNo, PageInfo pi); //로그인한 유저의 판매완료된글 리스트 불러오기 
	
	public int selectMyReplyListCount(int userNo); //로그인한 유저의 댓글 개수 불러오기 
	public ArrayList<Reply> selectMyReplyList(int userNo, PageInfo pi); //로그인한 유저의 전체 댓글 리스트 불러오기
	
	public int selectLikeProductCount(int userNo); //로그인한 유저의 찜목록 리스트 수
	public ArrayList<WishList> selectLikeProduct(int userNo, PageInfo pi); //로그인한 유저의 찜목록 리스트 불러오기
	
	public Member updateInfo(Member m); //멤버 정보 업데이트
	
	public int deleteMember(Member m); //회원 탈퇴
	
	
	
	
}
