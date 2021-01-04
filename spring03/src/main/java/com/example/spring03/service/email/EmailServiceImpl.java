package com.example.spring03.service.email;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.spring03.model.email.EmailDTO;
import com.example.spring03.model.member.dao.MemberDAO;
import com.example.spring03.model.member.dto.MemberDTO;

@Service
public class EmailServiceImpl implements EmailService{
	@Inject
	JavaMailSender mailSender;
	@Inject
	MemberDAO memberDao;
	
	@Override
	public void sendMail(EmailDTO dto, MemberDTO dto1) {
		String pass = memberDao.findpasswd(dto1);
		try {
			//MimeMessage : 이메일 객체
			MimeMessage msg=mailSender.createMimeMessage();
			//받는 사람 이메일 주소 getReceiveMail()
			msg.addRecipient(RecipientType.TO, 
					new InternetAddress(dto.getEmail()));
			//보내는 사람(이메일주소+이름)
			msg.addFrom(new InternetAddress[] {
					new InternetAddress("94bongsb@gmail.com"
							,"제네시스")
			});
			//이메일 제목
			msg.setSubject("비밀번호찾기 메일입니다.","utf-8");
			//이메일 본문
			msg.setText(dto1.getUserid()+"님의 비밀번호는 "+"'"+pass+"'"+"입니다.", "utf-8");
			//이메일 보내기
			mailSender.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
