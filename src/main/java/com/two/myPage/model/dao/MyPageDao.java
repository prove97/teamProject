package com.two.myPage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.two.comments.model.vo.Comments;
import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.product.model.vo.Product;
import com.two.wishList.model.vo.WishList;

public class MyPageDao {
	public Member selectMember(SqlSession sqlSession, String userId){
		return (Member)sqlSession.selectOne("memberMapper.selectMember", userId);
	}
	
	public int checkPassword(SqlSession sqlSession, Member m) {		
		int result = sqlSession.selectOne("memberMapper.checkPassword", m);
		return result; //鍮꾨�踰덊샇媛� �씪移섑븯�뒗 Member�닔(count) 由ы꽩 (mapper�닔�젙�빐�빞�븿)
	}
	
	public int updatePassword(SqlSession sqlSession, String userId, String userPwd) {
		System.out.println(userId +" " + userPwd);
		Member m = new Member();
		m.setUserId(userId);
		m.setUserPwd(userPwd);
		return sqlSession.update("memberMapper.updatePassword", m);
	}
	
	public int checkNickname(SqlSession sqlSession, String nickname) {			
		return sqlSession.selectOne("memberMapper.checkNickname", nickname);//�땳�꽕�엫�씠 �씪移섑븯�뒗 Member�닔(count) 由ы꽩 (mapper�닔�젙�빐�빞�븿)
	}
	
	public int updateNickname(SqlSession sqlSession, String userId, String nickname) {
		System.out.println(userId +" " + nickname);
		Member m = new Member();
		m.setUserId(userId);
		m.setNickname(nickname);
		return sqlSession.update("memberMapper.updateNickname", m);
	}
	
	public int updateInfo(SqlSession sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateInfo", m);
	}
	
	public int selectMyTradeListCount(SqlSession sqlSession, int userNo) {
		return sqlSession.selectOne("myPageMapper.selectMyTradeListCount", userNo);
	}
	
	public ArrayList<Product> selectMyTradeList(SqlSession sqlSession, int userNo, PageInfo pi){
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectMyTradeList", userNo, rowBounds);
	}

	public int selectOnSaleListCount(SqlSession sqlSession, int userNo) {
		return sqlSession.update("myPageMapper.selectOnSaleListCount", userNo);
	}

	public ArrayList<Product> selectOnSaleList(SqlSession sqlSession, int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectOnSaleList", userNo, rowBounds);
	}

	public int selectSoldOutListCount(SqlSession sqlSession, int userNo) {
		return sqlSession.update("myPageMapper.selectSoldOutListCount", userNo);
	
	}

	public ArrayList<Product> selectSoldOutList(SqlSession sqlSession, int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectSoldOutList", userNo, rowBounds);	
	}
	
	
	
	public int selectMyCommentListCount(SqlSession sqlSession, int userNo) {
		return sqlSession.selectOne("myPageMapper.selectMyCommentListCount", userNo);
	}
	
	public ArrayList<Comments> selectMyCommentList(SqlSession sqlSession, int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectMyCommentList", userNo, rowBounds);
	}

	public int selectLikeProductCount(SqlSession sqlSession, int userNo) {
		return sqlSession.selectOne("myPageMapper.selectLikeProductCount", userNo);
	}

	public ArrayList<WishList> selectLikeProduct(SqlSession sqlSession, int userNo, PageInfo pi) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectLikeProduct", userNo);
	}
	
	
}
