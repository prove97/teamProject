package com.two.myPage.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.member.model.vo.Member;
import com.two.myPage.model.dao.MyPageDao;
import com.two.product.model.vo.Nreply;
import com.two.product.model.vo.Product;
import com.two.product.model.vo.Reply;
import com.two.wishList.model.vo.WishList;

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
	public int updatePassword(String userId, String userPwd) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mpDao.updatePassword(sqlSession, userId, userPwd);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
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
	public int updateNickname(String userId, String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mpDao.updateNickname(sqlSession, userId, nickname);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
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
	public int selectOnSaleListCount(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int count = mpDao.selectOnSaleListCount(sqlSession, userNo);
		
		sqlSession.close();

		return count;	
	}

	@Override
	public ArrayList<Product> selectOnSaleList(int userNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Product> list = mpDao.selectOnSaleList(sqlSession, userNo, pi);
		
		sqlSession.close();

		return list;	
	}

	@Override
	public int selectSoldOutListCount(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int count = mpDao.selectSoldOutListCount(sqlSession, userNo);
		
		sqlSession.close();

		return count;	
	}

	@Override
	public ArrayList<Product> selectSoldOutList(int userNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Product> list = mpDao.selectSoldOutList(sqlSession, userNo, pi);
		
		sqlSession.close();

		return list;	
	}
	

	@Override
	public int selectMyReplyListCount(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int count = mpDao.selectMyReplyListCount(sqlSession, userNo);
		
		sqlSession.close();

		return count;	
	}

	@Override
	public ArrayList<Reply> selectMyReplyList(int userNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Reply> list = mpDao.selectMyReplyList(sqlSession, userNo, pi);
		
		sqlSession.close();

		return list;	
	}

	@Override
	public int selectLikeProductCount(int userNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int count = mpDao.selectLikeProductCount(sqlSession, userNo);
		
		sqlSession.close();

		return count;
	}

	@Override
	public ArrayList<WishList> selectLikeProduct(int userNo, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<WishList> list = mpDao.selectLikeProduct(sqlSession, userNo, pi);
		
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
	public int deleteMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mpDao.deleteMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
			
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();

		return result;
	}
	




	
	










	
}
