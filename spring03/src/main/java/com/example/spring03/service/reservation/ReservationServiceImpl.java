package com.example.spring03.service.reservation;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring03.model.reservation.dao.ReservationDAO;
import com.example.spring03.model.reservation.dto.ReservationDTO;

@Service
public class ReservationServiceImpl implements ReservationService {
	@Inject
	ReservationDAO reservationDao;
	
	@Override
	public List<ReservationDTO> list(String userid){
		return reservationDao.list(userid);
	}
	
	@Override
	public void insert(ReservationDTO dto) {
		reservationDao.insert(dto);
	}
	
	@Override
	public List<ReservationDTO> adlist(){
		return reservationDao.adlist();
	}
	
	@Override
	public ReservationDTO view(int idx) throws Exception{
		return reservationDao.view(idx);
	}
	
	@Override
	public void check(ReservationDTO dto) {
		reservationDao.check(dto);
	}
	
	@Override
	public void delete(ReservationDTO dto) {
		reservationDao.delete(dto);
	}
}
