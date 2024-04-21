package com.two.myPage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.product.model.vo.Product;

public class MyPageDao {
	public Member selectMember(SqlSession sqlSession, String userId){
		return (Member)sqlSession.selectOne("memberMapper.selectMember", userId);
	}
	
	public int checkPassword(SqlSession sqlSession, Member m) {		
		int result = sqlSession.selectOne("memberMapper.checkPassword", m);
		return result; //비밀번호가 일치하는 Member수(count) 리턴 (mapper수정해야함)
	}
	
	public int checkNickname(SqlSession sqlSession, String nickname) {			
		return sqlSession.selectOne("memberMapper.checkNickname", nickname);//닉네임이 일치하는 Member수(count) 리턴 (mapper수정해야함)
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
}
