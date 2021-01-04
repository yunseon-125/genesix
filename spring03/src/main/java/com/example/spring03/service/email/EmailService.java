package com.example.spring03.service.email;

import com.example.spring03.model.email.EmailDTO;
import com.example.spring03.model.member.dto.MemberDTO;

public interface EmailService {
	public void sendMail(EmailDTO dto, MemberDTO dto1);
}
