package com.example.spring03.model.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring03.model.board.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> list(){
		return sqlSession.selectList("board.list");
	}
	
	@Override
	public void write(BoardDTO dto) {
		sqlSession.insert("board.write", dto);
	}
	
	@Override
	public void adwrite(BoardDTO dto) {
		sqlSession.insert("board.adwrite", dto);
	}
	
	@Override
	public BoardDTO view(int bno) throws Exception{
		return sqlSession.selectOne("board.view", bno);
	}
	
	@Override
	public void update(BoardDTO dto) throws Exception{
		sqlSession.update("board.update", dto);
	}
	
	@Override
	public void delete(BoardDTO dto) throws Exception{
		sqlSession.delete("board.delete", dto);
	}
	
	@Override
	public void viewcnt(int bno) throws Exception{
		sqlSession.update("board.viewcnt", bno);
	}


}