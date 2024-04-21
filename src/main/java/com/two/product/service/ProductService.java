package com.two.product.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.two.attachment.model.vo.Attachment;
import com.two.common.model.vo.PageInfo;
import com.two.product.model.vo.Product;

public interface ProductService {
	public ArrayList<Product> selectList(PageInfo pi);
	public int selectListCount();
	public int insertProduct(Product p, Attachment at);
	public int selectSearchCount(HashMap<String, String> map);
	public ArrayList<Product> selectSearchList(HashMap<String, String> map, PageInfo pi);
}
