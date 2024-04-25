package com.two.faq.service;

import java.sql.Connection;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.Template;
import com.two.common.model.vo.PageInfo;
import com.two.faq.model.dao.FaqDao;
import com.two.faq.model.vo.Faq;
import com.two.member.model.vo.Member;

public class FaqServiceImpl implements FaqService{

	private FaqDao fDao = new FaqDao();

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
		
		int result1 = new FaqDao().insertFaq(sqlSession, f); //게시글
		int result2 = new FaqDao().insertAttachment(sqlSession, at); // 사진
		
		if(result1 > 0 && result2 > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result1 * result2;
	}

	// 내 문의내역 리스트
	@Override
	public ArrayList<Faq> selectList(int uNo) {
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Faq> list = new FaqDao().selectFaqList(sqlSession,uNo);
		
		sqlSession.close();
		return list;
	}

}
