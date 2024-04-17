package com.two.product.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.dao.ProductDao;
import com.two.product.model.vo.Product;

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
		
		return result;
	}


	
}
