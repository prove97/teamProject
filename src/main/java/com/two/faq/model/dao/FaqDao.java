package com.two.faq.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.two.common.model.vo.PageInfo;
import com.two.faq.model.vo.Faq;

public class FaqDao {
	//문의내역리스트 조회
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("faqMapper.selectListCount");
	}
	// 문의내역 페이지 리스트
	public ArrayList<Faq> selectList(SqlSession sqlSession, PageInfo pi){
		//마이바티스에서는 페이징처리를 위해 rowBounds라는 클래스를 제공한다.
		/* offset :몇개의 게스글을 건너뛰고 조회할건지에 대한 값
		 * 
		 * currentPage : 1        1~5      0      5
		 * currentPage : 2        6~10     5      5
		 * currentPage : 3        11~15    10     5
		 * 
		 */
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit(); // 한페이지에 몇개 보여줄거냐
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("faqMapper.selectList", null, rowBounds);
	}
}
