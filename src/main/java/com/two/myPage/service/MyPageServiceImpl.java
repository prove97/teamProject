package com.two.myPage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.comments.model.vo.Comments;
import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.myPage.model.dao.MyPageDao;
import com.two.product.model.vo.Product;

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
	public int checkPassword(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MyPageDao().checkPassword(sqlSession, m);

		sqlSession.close();

		return result;
	}

	@Override
	public int checkNickname(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mpDao.checkNickname(sqlSession, nickname);
		
		sqlSession.close();

		return result;
	}
	
	@Override
	public int selectMyTradeListCount(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int count = mpDao.selectMyTradeListCount(sqlSession, userNo);
		
		sqlSession.close();

		return count;	
	}
	
	@Override
	public ArrayList<Product> selectMyTradeList(int userNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Product> list = mpDao.selectMyTradeList(sqlSession, userNo, pi);
		
		sqlSession.close();

		return list;			
	}

	@Override
	public int selectMyCommentListCount(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int count = mpDao.selectMyCommentListCount(sqlSession, userNo);
		
		sqlSession.close();

		return count;	
	}

	@Override
	public ArrayList<Comments> selectMyCommentList(int userNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Comments> list = mpDao.selectMyCommentList(sqlSession, userNo, pi);
		
		sqlSession.close();

		return list;	
	}
	
	@Override
	public Member updateInfo(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mpDao.updateInfo(sqlSession, m);
		Member updateUser = null;
		
		if(result > 0) {
			sqlSession.commit();
			updateUser = mpDao.selectMember(sqlSession, m.getUserId());
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();

		return updateUser;
	}

	@Override
	public ArrayList<Product> likeBoardList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product indexToBoard(int bno) {
		// TODO Auto-generated method stub
		return null;
	}


	
	










	
}
