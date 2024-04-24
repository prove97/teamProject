package com.two.product.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.dao.ProductDao;
import com.two.product.model.vo.Nreply;
import com.two.product.model.vo.Product;
import com.two.product.model.vo.Reply;
import com.two.product.model.vo.Request;

public class ProductServiceImpl implements ProductService{
	private ProductDao pDao = new ProductDao();
	@Override
	public int selectListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = pDao.selectListCount(sqlSession);
		
		sqlSession.close();
		return listCount;
	}
	
	@Override
	public ArrayList<Product> selectList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Product> list = pDao.selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;
	}

	@Override
	public int insertProduct(Product p, Attachment at) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = pDao.insertProduct(sqlSession, p, at);
		
		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Product increaseCount(int goodsId) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = pDao.increaseCount(sqlSession, goodsId);
		Product p = null;
		if (result > 0) {
			sqlSession.commit();
			p = pDao.selectProduct(sqlSession, goodsId);
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		return p;
	}

	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int searchCount = pDao.selectSearchCount(sqlSession, map);
		
		sqlSession.close();
		
		return searchCount;
	}

	@Override
	public ArrayList<Product> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Product> list = pDao.selectSearchList(sqlSession, map, pi);
		
		sqlSession.close();
		
		return list;
	}

	@Override
	public ArrayList<Request> selectRequestList(int goodsId) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Request> requestList = pDao.selectRequestList(sqlSession, goodsId);
		
		sqlSession.close();
		return requestList;
	}

	@Override
	public int selectcateCount(HashMap<String, String> map) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int cateCount = pDao.selectcateCount(sqlSession, map);
		
		sqlSession.close();
		
		return cateCount;
	}

	@Override
	public ArrayList<Product> selectcateList(HashMap<String, String> map, PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Product> list = pDao.selectcateList(sqlSession, map, pi);
		
		sqlSession.close();
		
		return list;
	}


	@Override
	public ArrayList<Reply> selectReplyList(int goodsId) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Reply> replyList = pDao.selectReplyList(sqlSession, goodsId);
		
		sqlSession.close();
		return replyList;
	}

	@Override
	public ArrayList<Nreply> selectNreplyList(int goodsId) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Nreply> nreplyList = pDao.selectNreplyList(sqlSession, goodsId);
		
		sqlSession.close();
		return nreplyList;
	}
}
