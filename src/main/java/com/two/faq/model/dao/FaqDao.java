package com.two.faq.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.two.common.model.vo.PageInfo;
import com.two.faq.model.vo.Faq;

public class FaqDao {
	//臾몄쓽�궡�뿭由ъ뒪�듃 議고쉶
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("faqMapper.selectListCount");
	}
	// 臾몄쓽�궡�뿭 �럹�씠吏� 由ъ뒪�듃
	public ArrayList<Faq> selectList(SqlSession sqlSession, PageInfo pi){
		//留덉씠諛뷀떚�뒪�뿉�꽌�뒗 �럹�씠吏뺤쿂由щ�� �쐞�빐 rowBounds�씪�뒗 �겢�옒�뒪瑜� �젣怨듯븳�떎.
		/* offset :紐뉕컻�쓽 寃뚯뒪湲��쓣 嫄대꼫�쎇怨� 議고쉶�븷嫄댁��뿉 ���븳 媛�
		 * 
		 * currentPage : 1        1~5      0      5
		 * currentPage : 2        6~10     5      5
		 * currentPage : 3        11~15    10     5
		 * 
		 */
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit(); // �븳�럹�씠吏��뿉 紐뉕컻 蹂댁뿬以꾧굅�깘
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("faqMapper.selectList", null, rowBounds);
	}
}
