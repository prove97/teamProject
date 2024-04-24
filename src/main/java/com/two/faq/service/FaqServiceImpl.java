package com.two.faq.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.Template;
import com.two.faq.model.dao.FaqDao;
import com.two.faq.model.vo.Faq;

public class FaqServiceImpl implements FaqService{

	private FaqDao fDao = new FaqDao();
	
	//문의내역리스트 조회
	@Override
	public ArrayList<Faq> selectFaqList() {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Faq> flist = fDao.selectFaqList(sqlSession);
		
		sqlSession.close();
		
		return flist;
	}

	//1:1 문의 등록
	@Override
	public int insertAttachment(Faq f, Attachment at) {
		SqlSession sqlSession = Template.getSqlSession();
		FaqDao bDao = new FaqDao();
		int result1 = bDao.insertAttachment(sqlSession, at);
		int result2 = 1;
		
		if (at != null) {
			result2 = bDao.insertFaq(sqlSession, f);
		}
		
		sqlSession.close();
		
		return result1 * result2;
	}

	@Override
	public int insertFaq(Faq f, Attachment at) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result1 = new FaqDao().insertFaq(sqlSession, f);
		int result2 = new FaqDao().insertAttachment(sqlSession, at);
		
		if(result1 > 0 && result2 > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result1 * result2;
	}
	
	
	
	
	
	
}
