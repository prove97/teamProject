package com.two.faq.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.model.vo.PageInfo;
import com.two.faq.model.vo.Faq;
import com.two.member.model.vo.Member;

public interface FaqService {

//	//1:1게시판 사진등록
	int insertAttachment(Faq f, Attachment at);
	//1:1게시판 등록
	int insertFaq(Faq f, Attachment at);
	
	//1:1게시판 리스트
	ArrayList<Faq> selectList(int uNo);
}
