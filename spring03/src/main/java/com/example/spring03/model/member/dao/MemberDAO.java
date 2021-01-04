package com.example.spring03.model.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import com.example.spring03.model.member.dto.MemberDTO;

public interface MemberDAO {
	public boolean loginCheck(MemberDTO dto);
	public MemberDTO viewMember(String userid);
	public void insert(MemberDTO dto) throws Exception;
	public boolean idcheck(String userid) throws Exception;
	public String findid(MemberDTO dto);
	public String findpasswd(MemberDTO dto);
	public void update(MemberDTO dto) throws Exception;
			
}
