package com.two.myPage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.two.member.model.vo.Member;

public class MyPageDao {
	
	public Member nicknameCheck(SqlSession sqlSession, String nickname) {			
		Member m = sqlSession.selectOne("memberMapper.selectMember", nickname); //닉네임이 일치하는 Member객체 리턴 (mapper수정해야함)
		return m;
	}

}
