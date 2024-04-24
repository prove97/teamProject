package com.two.product.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.two.attachment.model.vo.Attachment;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.vo.Nreply;
import com.two.product.model.vo.Product;
import com.two.product.model.vo.Reply;
import com.two.product.model.vo.Request;

public interface ProductService {
	public ArrayList<Product> selectList(PageInfo pi);
	public int selectListCount();
	public int insertProduct(Product p, Attachment at);
	public Product increaseCount(int goodsId);
	public int selectSearchCount(HashMap<String, String> map);
	public ArrayList<Product> selectSearchList(HashMap<String, String> map, PageInfo pi);
	public ArrayList<Request> selectRequestList(int goodsId);
	public ArrayList<Reply> selectReplyList(int goodsId);
	public ArrayList<Nreply> selectNreplyList(int goodsId);
	public int selectcateCount(HashMap<String, String> map);
	public ArrayList<Product> selectcateList(HashMap<String, String> map, PageInfo pi);
	public Attachment selectAttachment(int goodsId);
}
