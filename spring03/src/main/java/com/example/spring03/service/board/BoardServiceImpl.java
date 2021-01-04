package com.example.spring03.service.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring03.model.board.dao.BoardDAO;
import com.example.spring03.model.board.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	BoardDAO boardDao;
	
	@Override
	public List<BoardDTO> list(){
		return boardDao.list();
	}
	
	@Override
	public void write(BoardDTO dto) {
		boardDao.write(dto);
	}
	
	@Override
	public void adwrite(BoardDTO dto) {
		boardDao.adwrite(dto);
	}
	
	@Override
	public BoardDTO view(int bno) throws Exception{
		return boardDao.view(bno);
	}
	
	@Override
	public void update(BoardDTO dto) throws Exception{
		boardDao.update(dto);
	}
	
	@Override
	public void delete(BoardDTO dto) throws Exception{
		boardDao.delete(dto);
	}
	
	@Override
	public void viewcnt(int bno) throws Exception{
		boardDao.viewcnt(bno);
	}

}