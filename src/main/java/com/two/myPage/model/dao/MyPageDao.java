package com.two.myPage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.two.member.model.vo.Member;

public class MyPageDao {
	
	public int checkNickname(SqlSession sqlSession, String nickname) {			
		return sqlSession.selectOne("memberMapper.checkNickname", nickname);//닉네임이 일치하는 Member수(count) 리턴 (mapper수정해야함)
	}
	
	public int checkPassword(SqlSession sqlSession, Member m) {		
		int result = sqlSession.selectOne("memberMapper.checkPassword", m);
		System.out.println("dao : "+result);
		return result;//비밀번호가 일치하는 Member수(count) 리턴 (mapper수정해야함)
	}

}
