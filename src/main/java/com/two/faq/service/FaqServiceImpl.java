package com.two.faq.service;

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
	public int insertFaq(Faq f, Attachment at) {
	    SqlSession sqlSession = MyBatisUtil.getSqlSession();
	    int result1 = fDao.insertFaq(sqlSession, f);
	    
	    // 첨부 파일 정보도 저장
	    if(at != null) {
	        int result2 = fDao.insertAttachment(sqlSession, at);
	        if(result2 > 0) {
	            sqlSession.commit();
	        } else {
	            sqlSession.rollback();
	        }
	    }
	    
	    sqlSession.close();
	    return result1;
	}
	
	
	
	
	
	
}
