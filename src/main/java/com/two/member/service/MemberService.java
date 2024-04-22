package com.two.member.service;

import org.apache.ibatis.session.SqlSession;

import com.two.common.Template;
import com.two.member.model.dao.MemberDao;
import com.two.member.model.vo.Member;

public class MemberService {
	
	private MemberDao mDao = new MemberDao();
	
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member loginUser = mDao.loginMember(sqlSession, m);
		
//		System.out.println(m);
//		System.out.println(loginUser);
		sqlSession.close();
		return loginUser;
	}
	
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return result;
	}
}