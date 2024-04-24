package com.two.faq.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.faq.model.dao.FaqDao;
import com.two.faq.model.vo.Faq;

public class FaqServiceImpl implements FaqService{

	private FaqDao fDao = new FaqDao();
	//문의내역리스트 조회
	@Override
	public int selectListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = fDao.selectListCount(sqlSession);
		
		sqlSession.close();
		
		return listCount;
	}
	// 문의내역 페이지 리스트
	@Override
	public ArrayList<Faq> selectList(PageInfo pi) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Faq> list = fDao.selectList(sqlSession,pi);
		
		sqlSession.close();
		
		return list;
	}
	
}
