package com.two.faq.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.model.vo.PageInfo;
import com.two.faq.model.vo.Faq;

public class FaqDao {
	
	public ArrayList<Faq> selectFaqList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("faqMapper.selectFaqList");
	}

	public int insertFaq(SqlSession sqlSession, Faq f) {
		return sqlSession.insert("faqMapper.insertFaq", f);
	}

	public int insertAttachment(SqlSession sqlSession, Attachment at) {
		return sqlSession.insert("faqMapper.insertAttachment", at);
	}
	
	
}
