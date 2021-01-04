package com.example.spring03.controller.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring03.model.board.dto.BoardDTO;
import com.example.spring03.service.board.BoardService;

@Controller
@RequestMapping("board/*")
public class BoardController {
	@Inject
	BoardService boardService;
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav) {
		List<BoardDTO> list = boardService.list();
		mav.setViewName("page/board");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("write.do")
	public String write(@ModelAttribute BoardDTO dto, HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		if(userid == null) {
			return "redirect:/member/checkid.do";
		}
		boardService.write(dto);
		return "page/write1";
	}
	
	@RequestMapping("adwrite.do")
	public String adwrite(@ModelAttribute BoardDTO dto) {
		boardService.adwrite(dto);
		return "page/write1";
	}
	
	@RequestMapping("view.do")
	public ModelAndView view(int bno) throws Exception{
		boardService.view(bno);
		boardService.viewcnt(bno);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("page/list");
		mav.addObject("dto", boardService.view(bno));
		return mav;
	}
	
	@RequestMapping("update.do")
	public String update(BoardDTO dto) throws Exception{
		boardService.update(dto);
		return "page/update";
	}
	
	@RequestMapping("delete.do")
	public String delete(BoardDTO dto) throws Exception{
		boardService.delete(dto);
		return "page/delete";
	}

}
