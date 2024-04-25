package com.two.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.two.attachment.model.vo.Attachment;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.vo.Nreply;
import com.two.product.model.vo.Product;
import com.two.product.model.vo.Reply;
import com.two.product.model.vo.Request;

public class ProductDao {
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("productMapper.selectListCount");
	}
	
	public ArrayList<Product> selectList(SqlSession sqlSession, PageInfo pi){
		//마이바티스에서는 페이징처리를 위해 rowBounds라는 클래스를 제공한다.
		/* offset :몇개의 게스글을 건너뛰고 조회할건지에 대한 값
		 * 
		 * currentPage : 1        1~5      0      5
		 * currentPage : 2        6~10     5      5
		 * currentPage : 3        11~15    10     5
		 * 
		 */
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("productMapper.selectProductList", null, rowBounds);
	}

	public int insertProduct(SqlSession sqlSession, Product p) {
		return sqlSession.insert("productMapper.insertProduct", p);
  	}

	public int increaseCount(SqlSession sqlSession, int goodsId) {
		return sqlSession.update("productMapper.increaseCount", goodsId);
	}

	public Product selectProduct(SqlSession sqlSession, int goodsId) {
		return sqlSession.selectOne("productMapper.selectProduct", goodsId);
	}
	
	public int selectSearchCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("productMapper.selectSearchCount", map);
	}
	
	public ArrayList<Product> selectSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productMapper.selectSearchList", map, rowBounds);
	}

	public ArrayList<Request> selectRequestList(SqlSession sqlSession, int goodsId) {
		return (ArrayList)sqlSession.selectList("productMapper.selectRequestList", goodsId);
	}

	public ArrayList<Reply> selectReplyList(SqlSession sqlSession, int goodsId) {
		return (ArrayList)sqlSession.selectList("productMapper.selectReplyList", goodsId);
	}

	public ArrayList<Nreply> selectNreplyList(SqlSession sqlSession, int goodsId) {
		return (ArrayList)sqlSession.selectList("productMapper.selectNreplyList", goodsId);
	}
	
	public int selectcateCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("productMapper.selectcateCount", map);
	}
	
	public ArrayList<Product> selectcateList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productMapper.selectcateList", map, rowBounds);
	}
	
	public int insertAttachment(SqlSession sqlSession, Attachment at) {
		return sqlSession.insert("productMapper.insertAttachment", at);
	}

	public Attachment selectAttachment(SqlSession sqlSession, int goodsId) {
		return sqlSession.selectOne("productMapper.selectAttachment", goodsId);
	}

	public int deleteProduct(SqlSession sqlSession, int goodsId) {
		return sqlSession.update("productMapper.deleteProduct", goodsId);
	}

	public int insertRequest(SqlSession sqlSession, Request q) {
		return sqlSession.insert("productMapper.insertRequest", q);
	}

	public int insertReply(SqlSession sqlSession, Reply r) {
		return sqlSession.insert("productMapper.insertReply", r);
	}

	public int insertNreply(SqlSession sqlSession, Nreply n) {
		return sqlSession.insert("productMapper.insertNreply", n);
	}
}
