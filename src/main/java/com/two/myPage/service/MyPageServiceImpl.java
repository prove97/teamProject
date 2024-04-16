package com.two.myPage.service;

import org.apache.ibatis.session.SqlSession;

import com.two.common.Template;
import com.two.member.model.vo.Member;
import com.two.myPage.model.dao.MyPageDao;

public class MyPageServiceImpl implements MyPageService{

	@Override
	public int nicknameCheck(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member m = new MyPageDao().nicknameCheck(sqlSession, nickname);
		int count = 0;  
		
		if(m != null) { //일치하는 닉네임이 있는경우
			count = 1; 
		}
		
		sqlSession.close();

		return count;
	}
	
}
