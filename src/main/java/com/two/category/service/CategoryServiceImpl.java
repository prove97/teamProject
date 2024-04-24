package com.two.category.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.category.model.dao.CategoryDao;
import com.two.category.model.vo.Category;
import com.two.common.Template;

public class CategoryServiceImpl implements CategoryService{
	
	private CategoryDao cDao = new CategoryDao();
	
	public ArrayList<Category> selectList(){
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Category> clist = cDao.selectList(sqlSession);
	
	}
	
	public ArrayList<Category> selectListMiddle(){
		SqlSession sqlSession = Template.getSqlSession();
		ArrayList<Category> clist = cDao.selectList(sqlSession);
	
	}
}
