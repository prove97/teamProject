package com.two.faq.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.faq.model.vo.Faq;

public interface FaqService {
	
	//문의내역리스트 조회
	public ArrayList<Faq> selectFaqList();

//	//1:1게시판 사진등록
	int insertAttachment(Faq f, Attachment at);
	//1:1게시판 등록
	int insertFaq(Faq f, Attachment at);
}
