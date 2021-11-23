package co.sp.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Member_s;
import co.sp.beans.Reservation_s;
import co.sp.service.ResService;

@Controller
@RequestMapping("/reservation")
public class ResControl {

	@Autowired
	private ResService resService;

	@Resource(name = "loginBean")
	private Member_s loginBean;

	@GetMapping("/main")
	public String resmain(@ModelAttribute("reservationBean") Reservation_s reservationBean,@RequestParam(value = "course_number", required = false)String course_number, Model m) {
		List<Reservation_s> getCourseIdx = resService.getCourseIdx(); 
		m.addAttribute("getCourseIdx", getCourseIdx);
		m.addAttribute("course_number", course_number);
		return "reservation/main";
	}

	@RequestMapping(value="/reserve", method= {RequestMethod.GET, RequestMethod.POST})
	public String reserved(@ModelAttribute("reservationBean") Reservation_s reservationBean, Model m) {

		String res_num = resService.getRes_seqval();
		
		switch (res_num.length()) {
		case 1:
			res_num = "00000" + res_num;
			break;
		case 2:
			res_num = "0000" + res_num;
			break;
		case 3:
			res_num = "000" + res_num;
			break;
		case 4:
			res_num = "00" + res_num;
			break;
		case 5:
			res_num = "0" + res_num;
			break;
		}
		String now = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddss"));

		res_num = res_num + now;

		reservationBean.setRes_num(res_num);
		reservationBean.setLoginNum(loginBean.getMem_num());
		reservationBean.setLoginName(loginBean.getMem_name());

		resService.addReservation(reservationBean);

		m.addAttribute("reservationBean", resService.getOneReservation(res_num));
		
		return "reservation/reserve";
	}
	
	@GetMapping("/checkRes")
	public String checkRes() {
		return "reservation/checkRes";
	}
	
	@PostMapping("/cancelRes")
	public String cancelRes(@ModelAttribute("resBean") Reservation_s resBean) {
		
		resService.deleteReservation(resBean);
		
		return "reservation/resCancel_success";
	}
	
	@GetMapping("/resCancelCheck")
	public String my_reservation(@ModelAttribute("resBean") Reservation_s resBean, Model m) {
		String resnum = resBean.getRes_num();
		
		m.addAttribute("resBean", resService.getOneReservation(resnum));
		
		return "reservation/resCancelCheck";
	}
	
}
