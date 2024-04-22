package com.two.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	
		public static SqlSession getSqlSession() {
			//mybatis-config.xml => �씫�뼱�뱶由ш린
			//�빐�떦 db�� �젒�냽�맂 SqlSession媛앹껜 �깮�꽦�빐�꽌 諛섑솚�븯湲�
			
			SqlSession sqlSession = null;
			
			//SqlSession�깮�꽦�븯湲� �쐞�빐�꽌�뒗  => SqlSessionFactory媛앹껜 �븘�슂
			//SqlSessionFactory�깮�꽦�븯湲� �쐞�빐�꽌�뒗 => SqlSessionFactoryBuilder�븘�슂
			
			String resource = "/mybatis-config.xml";
			
			try {
				InputStream inputStream = Resources.getResourceAsStream(resource);
//				SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//				sqlSession = sqlSessionFactory.openSession(false); // boolean autoCommit => �옄�룞而ㅻ컠�뿬遺�(true硫� �옄�룞而ㅻ컠 false硫� �닔�룞而ㅻ컠)
//				
				sqlSession = new SqlSessionFactoryBuilder().build(inputStream).openSession(false);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return sqlSession;
		}
	
}