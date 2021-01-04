package com.example.spring03.controller.reservation;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring03.model.reservation.dto.ReservationDTO;
import com.example.spring03.service.reservation.ReservationService;

@Controller
@RequestMapping("reservation/*")
public class ReservationController {
	@Inject
	ReservationService reservationService;
	
	@RequestMapping("reservation.do")
	public String reservation(HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		if(userid == null) {
			return "redirect:/member/checkid.do";
		}
		return "reservation/reservation";
	}
	
	@RequestMapping("adlist.do")
	public ModelAndView list(ModelAndView mav) {
		List<ReservationDTO> list=reservationService.adlist();
		mav.setViewName("reservation/admin_list");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		String userid=(String)session.getAttribute("userid");
		if(userid != null) {
			List<ReservationDTO> list=reservationService.list(userid);
			mav.setViewName("member/info");
			mav.addObject("list", list);
			return mav;
		}else {
			mav.setViewName("member/logincheck");
			return mav;
		}
		
	}
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute ReservationDTO dto) {
		reservationService.insert(dto);
		return "reservation/resercheck";
	}
	
	@RequestMapping("view.do")
	public ModelAndView view(int idx) throws Exception{
		reservationService.view(idx);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("reservation/list");
		mav.addObject("dto", reservationService.view(idx));
		return mav;
	}
	
	@RequestMapping("check.do")
	public String check(ReservationDTO dto) throws Exception{
		reservationService.check(dto);
		return "redirect:/reservation/adlist.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(ReservationDTO dto) throws Exception{
		reservationService.delete(dto);
		return "reservation/cancel";
	}
}
