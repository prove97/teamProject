package com.two.myPage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.two.board.model.vo.Board;
import com.two.member.model.vo.Member;

public class MyPageDao {
	public Member selectMember(SqlSession sqlSession, String userId){
		return (Member)sqlSession.selectOne("memberMapper.selectMember", userId);
	}
	
	public int checkNickname(SqlSession sqlSession, String nickname) {			
		return sqlSession.selectOne("memberMapper.checkNickname", nickname);//닉네임이 일치하는 Member수(count) 리턴 (mapper수정해야함)
	}
	
	public ArrayList<Board> selectTradeList(SqlSession sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("boardMapper.selectBoardList", userNo);
	}
}
