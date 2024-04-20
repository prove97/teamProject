package com.two.myPage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.board.model.vo.Board;
import com.two.comments.model.vo.Comments;
import com.two.common.Template;
import com.two.member.model.vo.Member;
import com.two.myPage.model.dao.MyPageDao;

public class MyPageServiceImpl implements MyPageService{
	MyPageDao mpDao = new MyPageDao();
	
	@Override
	public Member selectMember(String userId) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member m = mpDao.selectMember(sqlSession, userId);
		
		sqlSession.close();
		
		return m;
	}

	@Override
	public int checkNickname(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mpDao.checkNickname(sqlSession, nickname);
		
		sqlSession.close();

		return result;
	}
	
	@Override
	public ArrayList<Board> selectTradeList(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Board> list = mpDao.selectTradeList(sqlSession, userNo);

		sqlSession.close();

		return list;
	}

	@Override
	public ArrayList<Comments> myCommentList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Board> likeBoardList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board indexToBoard(int bno) {
		// TODO Auto-generated method stub
		return null;
	}






	
}
