package com.example.spring03.controller.member;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring03.model.member.dto.MemberDTO;
import com.example.spring03.model.email.EmailDTO;
import com.example.spring03.service.email.EmailService;
import com.example.spring03.service.member.MemberService;

@Controller
@RequestMapping("member/*") //공통 url mapping
public class MemberController {
	//로깅처리
	private static final Logger logger=
			LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService memberService;
	@Inject
	EmailService emailService;
	
	@RequestMapping("login.do") //세부 url
	public String login() {
		return "member/login"; //login.jsp로 이동
	}
	
	@RequestMapping("checkid.do")
	public String checkid() {
		return "member/logincheck";
	}
	
	@RequestMapping("find.do")
	public String find() {
		return "member/findinfo";
	}


	
	@RequestMapping("insert.do")
	public String insert(MemberDTO dto) throws Exception{
		memberService.insert(dto);
		return "/member/joincheck";		
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(MemberDTO dto, HttpSession session) {
		//로그인 성공 true, 실패 false
		boolean result=memberService.loginCheck(dto, session);
		ModelAndView mav=new ModelAndView();
		if(result) {//로그인 성공
			mav.setViewName("home");
		}else {//로그인 실패
			mav.setViewName("member/loginfail");
		}
		return mav;
	}//login_check()
	
	@RequestMapping("findid.do")
	public ModelAndView findid(MemberDTO dto) {
		String result=memberService.findid(dto);
		ModelAndView mav = new ModelAndView();
		if(result != null) {
			mav.setViewName("member/findid_result");
			mav.addObject("result", result);
		}else {
			mav.setViewName("member/findfail");
		}
		return mav;
	}
	
	@RequestMapping("findpasswd.do")
	public ModelAndView findpasswd(MemberDTO dto, EmailDTO dto1) {
		String result=memberService.findpasswd(dto);
		ModelAndView mav = new ModelAndView();
		if(result != null) {
			mav.setViewName("member/findpasswd_result");
			mav.addObject("result", result);
			emailService.sendMail(dto1, dto);
		}else {
			mav.setViewName("member/findfail");
		}
		return mav;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		//세션 초기화
		memberService.logout(session);
		//login.jsp로 이동
		mav.setViewName("member/logout");
		return mav;
	}
	
	@RequestMapping("idcheck.do")
	public ModelAndView idcheck(String userid, HttpServletResponse response_equals) throws Exception{
		memberService.idcheck(userid);
		
		if(memberService.idcheck(userid)) {
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('사용가능한 아이디 입니다.');</script>");
			out_equals.flush();
			
			ModelAndView mav = new ModelAndView();
			
			mav.setViewName("member/login");
			mav.addObject("userid", userid);
			return mav;
		}else {
			response_equals.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response_equals.getWriter();
			out_equals.println("<script>alert('이미 사용중인 아이디 입니다.');</script>");
			out_equals.flush();
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/login");
		return mav;
	}
	
	@RequestMapping("checklogout.do")
	public ModelAndView checklogout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		mav.setViewName("member/login");
		return mav;
	}
	
	@RequestMapping("update.do")
	public String update(MemberDTO dto, HttpSession session) throws Exception{
		memberService.update(dto, session);
		return "member/infoupdate";
	}

}
