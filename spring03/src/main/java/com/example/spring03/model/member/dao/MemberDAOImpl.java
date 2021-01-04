package com.example.spring03.model.member.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring03.model.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;

	@Override
	public boolean loginCheck(MemberDTO dto) {
		String name=sqlSession.selectOne("member.login_check", dto);
		// 조건식 ? true일때 값 : false일때 값
		return (name==null) ? false : true;
	}

	@Override
	public MemberDTO viewMember(String userid) {
		return sqlSession.selectOne("member.viewMember", userid);
	}

	@Override
	public void insert(MemberDTO dto) throws Exception{
		sqlSession.insert("member.insert", dto);	
	}
	
	@Override
	public boolean idcheck(String userid) throws Exception{
		String userid1 = sqlSession.selectOne("member.idcheck", userid);
		return (userid1 == null) ? true : false;
	}
	
	@Override
	public String findid(MemberDTO dto) {
		String userid=sqlSession.selectOne("member.findid", dto);
		return userid;
	}
	
	@Override
	public String findpasswd(MemberDTO dto) {
		String passwd=sqlSession.selectOne("member.findpasswd", dto);
		return passwd;
	}
	
	@Override
	public void update(MemberDTO dto) throws Exception{
		sqlSession.update("member.update", dto);
	}
}
