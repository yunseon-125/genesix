package com.example.spring03.controller.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring03.model.board.dto.ReplyDTO;
import com.example.spring03.service.board.BoardService;
import com.example.spring03.service.board.ReplyService;

@RestController
@RequestMapping("reply/*")
public class ReplyController {
	@Inject
	ReplyService replyService;
	@Inject
	BoardService boardService;
	
	@RequestMapping("insert.do") //세부 url
	public void insert(ReplyDTO dto, HttpSession session) {
		String userid=(String)session.getAttribute("userid");
		dto.setReplyer(userid);
		replyService.create(dto);
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(int bno, ModelAndView mav) {
		List<ReplyDTO> list=replyService.list(bno);
		mav.setViewName("page/reply_list");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("delete.do")
	public ModelAndView delete(ReplyDTO dto, ModelAndView mav, int bno) throws Exception{
		boardService.view(bno);
		replyService.delete(dto);
		mav.setViewName("page/list");
		mav.addObject("dto", boardService.view(bno));
		return mav;
	}

}
