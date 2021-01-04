package com.example.spring03.service.reservation;

import java.util.List;

import com.example.spring03.model.reservation.dto.ReservationDTO;

public interface ReservationService {
	public void insert(ReservationDTO dto);
	public List<ReservationDTO> list(String userid);
	public List<ReservationDTO> adlist();
	public ReservationDTO view(int idx) throws Exception;
	public void check(ReservationDTO dto);
	public void delete(ReservationDTO dto);
}
