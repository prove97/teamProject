package com.two.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.two.member.model.vo.Member;

public class MemberDao {
	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
}
