package com.example.spring03.service.member;

import javax.servlet.http.HttpSession;

import com.example.spring03.model.member.dto.MemberDTO;

public interface MemberService {
	public boolean loginCheck(MemberDTO dto, HttpSession session);
	public void logout(HttpSession session);
	public MemberDTO viewMember(String userid);
	public void insert(MemberDTO dto) throws Exception;
	public boolean idcheck(String userid)throws Exception; 
	public String findid(MemberDTO dto);
	public String findpasswd(MemberDTO dto);
	public void update(MemberDTO dto, HttpSession session) throws Exception;
}
