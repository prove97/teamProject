package com.two.member.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.two.member.model.vo.Member;

public class MemberDao {
	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int insertMember(SqlSession sqlSession, Member m) {
		int result = sqlSession.insert("memberMapper.insertMember", m);
		return result;
	}
	
	public String idFind(SqlSession sqlSession, String nickname, String phone) {
	    Map<String, String> paramMap = new HashMap<>();
	    paramMap.put("nickname", nickname);
	    paramMap.put("phone", phone);
	    return sqlSession.selectOne("memberMapper.idFind", paramMap);
	}
}