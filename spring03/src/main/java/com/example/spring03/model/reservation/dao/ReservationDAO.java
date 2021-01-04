package com.example.spring03.model.reservation.dao;

import java.util.List;

import com.example.spring03.model.reservation.dto.ReservationDTO;

public interface ReservationDAO {
	public List<ReservationDTO> list(String userid);
	public void insert(ReservationDTO dto);
	public List<ReservationDTO> adlist();
	public ReservationDTO view(int idx) throws Exception;
	public void check(ReservationDTO dto);
	public void delete(ReservationDTO dto);
}
