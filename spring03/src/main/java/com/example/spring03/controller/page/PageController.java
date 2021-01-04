package com.example.spring03.controller.page;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("page/*")

public class PageController {
	@RequestMapping("location.do")
	public String location() {
		return "page/location";
	}
	
	@RequestMapping("g70.do")
	public String g70() {
		return "page/g70";
	}
	
	@RequestMapping("board.do")
	public String board() {
		return "page/board";
	}
	
	@RequestMapping("home.do")
	public String home() {
		return "home";
	}
	
	@RequestMapping("re.do")
	public String re() {
		return "reservation/re";
	}
	
	@RequestMapping("write.do")
	public String write(HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		if(userid == null) {
			return "redirect:/member/checkid.do";
		}
		return "page/write";
	}
	
	@RequestMapping("adwrite.do")
	public String adwrite() {
		return "page/adwrite";
	}

}
