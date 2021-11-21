package co.sp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Member_s;
import co.sp.beans.Partners_s;
import co.sp.beans.Reservation_s;
import co.sp.service.MemService;
import co.sp.service.PartnerService;
import co.sp.service.ResService;

@Controller
@RequestMapping("/member")
public class MemControl {

	@Autowired
	private MemService ms;
	
	@Autowired
	private ResService rs;
	
	@Autowired
	private PartnerService ps;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@PostMapping("/join_proc")
	public String join(@ModelAttribute("memberBean") @Valid Member_s memberBean, BindingResult result) {
		if(result.hasErrors()) {
			return "member/join";
		}
		ms.addMember(memberBean);
		return "member/join_success";
	}
	
	@GetMapping("/login")
	public String login(@ModelAttribute("memberBean") Member_s memberBean,@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model m) {
		m.addAttribute("memberBean", memberBean);
		m.addAttribute("fail", fail);
		return "member/login";
	}
	
	@PostMapping("/login_proc")
	public String login_proc(@ModelAttribute("memberBean") Member_s memberBean, HttpSession session, Model m) {
		
		ms.getLoginMemberInfo(memberBean);
		
		if(loginBean.isMemLogin() == true) {	
			return "member/login_success";
		} else {
			return "member/login_fail";
		}
		
	}
	
	@GetMapping("/logout_proc")
	public String logout_proc(HttpSession session) {
		loginBean.setMemLogin(false);
		loginBean.setMem_num(-1);
		loginBean.setMem_name("");
		loginBean.setMem_phone("");
		loginBean.setMem_mail("");
		
		session.setAttribute("loginBean", loginBean);
		
		return "member/logout_success";
	}
	
	@GetMapping("/mypage")
	public String mypg(@ModelAttribute("memberBean") Member_s memberBean, @ModelAttribute("reservationBean") Reservation_s reservationBean, @ModelAttribute("partnerBean") Partners_s partnerBean, Model m) {
		int mem_num = loginBean.getMem_num();
		String mem_grade = loginBean.getMem_grade();
		List<Reservation_s>resBean = rs.getMemReservation(mem_num);
		
		
		if(mem_grade.equals("1")) {
			m.addAttribute("loginBean", loginBean);
			m.addAttribute("memberBean",ms.getMemberInfo(mem_num));
			m.addAttribute("reservationBean", resBean);
			m.addAttribute("partnerBean", partnerBean);
			return "member/mypage";
		}else if(mem_grade.equals("2")) {
			
			return "member/mypage";
		}
		else {
			m.addAttribute("memberBean", ms.getMemberInfo(mem_num));
			return "admin/hello_Admin";
		}
		
	}
	
	@GetMapping("/join")
	public String join(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
		
		return "member/join";
	}
	
	@GetMapping("/accountfinder")
	public String accountfinder(@ModelAttribute Member_s memberBean, Model m) {
		
		return "member/accountfinder";
	}
	
	@GetMapping("/not_login")
	public String not_login(@ModelAttribute Member_s memberBean, Model m) {
		
		return "member/not_login";
	}
	
	@GetMapping("/mypage_reservation")
	public String my_reservation(@ModelAttribute("resBean") Reservation_s resBean, Model m) {
		String resnum = resBean.getRes_num();
		
		m.addAttribute("resBean", rs.getOneReservation(resnum));
		
		return "member/mypage_reservation";
	}
	
	@PostMapping("/memberModify")
	public String memberModify(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
		
		ms.memberUpdate(memberBean);
		
		return "member/mypage";
		
	}
	
	@PostMapping("/partnerRequest_proc")
	public String partnerRequest_proc(@ModelAttribute("partnerBean") Partners_s partnerBean, Model m) {
		ps.addPartner(partnerBean);
		//partnerBean.setPartners_state(0);
		
		m.addAttribute(partnerBean);
		
		return "member/partnerRequest_proc";
	}
	
	@GetMapping("/pwChange")
	public String pwChange(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
		
		return "member/pwChange";
	}
	
	@PostMapping("/pwModify")
	public String pwModify(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
		
		ms.memPwChange(memberBean);
		System.out.println("pw Changed !!");
		return "member/pwModify";
	}
}
