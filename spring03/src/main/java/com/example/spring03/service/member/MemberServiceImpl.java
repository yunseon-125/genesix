package com.example.spring03.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.spring03.model.member.dao.MemberDAO;
import com.example.spring03.model.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDAO memberDao;

	@Override
	public boolean loginCheck(MemberDTO dto, HttpSession session) {
		boolean result=memberDao.loginCheck(dto);
		if(result) {//로그인 성공
			//세션변수에 값 저장
			MemberDTO dto2=viewMember(dto.getUserid());
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", dto2.getName());
			session.setAttribute("email", dto2.getEmail());
			session.setAttribute("passwd", dto2.getPasswd());
			session.setAttribute("address", dto2.getAddress());
			session.setAttribute("join_date", dto2.getJoin_date());
			System.out.println(session.getAttribute("userid"));
			System.out.println(session.getAttribute("name"));
			System.out.println(session.getAttribute("email"));
		}
		return result;
	}

	@Override
	public boolean idcheck(String userid) throws Exception{
		boolean result = memberDao.idcheck(userid);
		return result;
	}
	
	@Override
	public void logout(HttpSession session) {
		//세션 초기화
		session.invalidate();
	}

	@Override
	public MemberDTO viewMember(String userid) {
		return memberDao.viewMember(userid);
	}
	
	@Override
	public void insert(MemberDTO dto) throws Exception{
		memberDao.insert(dto);
		
	}
	
	@Override
	public String findid(MemberDTO dto) {
		String result=memberDao.findid(dto);
		return result;
	}
	
	@Override
	public String findpasswd(MemberDTO dto) {
		String result=memberDao.findpasswd(dto);
		return result;
	}
	
	@Override
	public void update(MemberDTO dto, HttpSession session) throws Exception{
		memberDao.update(dto);
		MemberDTO dto2=viewMember(dto.getUserid());
		session.setAttribute("userid", dto2.getUserid());
		session.setAttribute("address", dto2.getAddress());
		session.setAttribute("email", dto2.getEmail());
		session.setAttribute("name", dto2.getName());
		session.setAttribute("passwd", dto2.getPasswd());
		session.setAttribute("join_date", dto2.getJoin_date());
		
	}
	
}
