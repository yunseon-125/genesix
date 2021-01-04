package com.example.spring03.controller.email;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring03.model.email.EmailDTO;
import com.example.spring03.model.member.dto.MemberDTO;
import com.example.spring03.service.email.EmailService;

@Controller
@RequestMapping("email/*")
public class EmailController {
	@Inject
	EmailService emailService;

	@RequestMapping("send.do")
	public String send(EmailDTO dto, MemberDTO dto1) {
		try {
			emailService.sendMail(dto, dto1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/member/login.do";
	}

}
