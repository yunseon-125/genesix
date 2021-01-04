package com.example.spring03.model.reservation.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring03.model.reservation.dto.ReservationDTO;

@Repository
public class ReservationDAOImpl implements ReservationDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ReservationDTO> list(String userid){
		return sqlSession.selectList("reservation.list", userid);
	}
	
	@Override
	public void insert(ReservationDTO dto) {
		sqlSession.insert("reservation.insert", dto);
	}
	
	@Override
	public List<ReservationDTO> adlist(){
		return sqlSession.selectList("reservation.adlist");
	}
	
	@Override
	public ReservationDTO view(int idx) throws Exception{
		return sqlSession.selectOne("reservation.view", idx);
	}
	
	@Override
	public void check(ReservationDTO dto) {
		sqlSession.update("reservation.check", dto);
	}
	
	@Override
	public void delete(ReservationDTO dto) {
		sqlSession.delete("reservation.delete", dto);
	}
}
