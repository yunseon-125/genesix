package com.example.spring03.model.board.dao;

import java.util.List;

import com.example.spring03.model.board.dto.BoardDTO;

public interface BoardDAO{
	public List<BoardDTO> list();
	public void write(BoardDTO dto);
	public void adwrite(BoardDTO dto);
	public BoardDTO view(int bno) throws Exception;
	public void update(BoardDTO dto) throws Exception;
	public void delete(BoardDTO dto) throws Exception;
	public void viewcnt(int bno) throws Exception;
	
}