package com.two.faq.service;

import java.util.ArrayList;

import com.two.common.model.vo.PageInfo;
import com.two.faq.model.vo.Faq;

public interface FaqService {
	
	//문의내역리스트 조회
	public int selectListCount();
	// 문의내역 페이지 리스트
	public ArrayList<Faq> selectList(PageInfo pi);
}
