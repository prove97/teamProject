package com.two.myPage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.board.model.vo.Board;
import com.two.comments.model.vo.Comments;
import com.two.common.Template;
import com.two.member.model.vo.Member;
import com.two.myPage.model.dao.MyPageDao;

public class MyPageServiceImpl implements MyPageService{
	

	@Override
	public int checkNickname(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MyPageDao().checkNickname(sqlSession, nickname);
		
		sqlSession.close();

		return result;
	}
	
	@Override
	public int checkPassword(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MyPageDao().checkPassword(sqlSession, m);

		sqlSession.close();

		return result;
	}

	
	@Override
	public Member memberInfo(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Board> myBoardList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Board> loadOnSale(String userId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public ArrayList<Board> loadSoldOut(String userId) {
		// TODO Auto-generated method stub
		return null;
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
