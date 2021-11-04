package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Member_s;
import co.sp.service.MemService;

@Controller
public class MemControl {

	@Autowired
	private MemService ms;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;

	@GetMapping("/main")
	public String main(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
	
		return "main";
	}
	
	@PostMapping("/member_proc")
	public String join(@ModelAttribute("memberBean") Member_s memberBean) {
		ms.addMember(memberBean);
		return "page";
	}
	
	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginMemberBean") Member_s tempLoginMemberBean, @RequestParam(value = "fail", defaultValue = "false") boolean fail, Model m) {
		
		m.addAttribute("fail", fail);
		
		return "/login";
	}
	
	@PostMapping("/login_proc")
	public String login_proc(@ModelAttribute("tempLoginMemberBean") Member_s tempLoginMemberBean) {
		
		ms.getLoginMemberInfo(tempLoginMemberBean);
		
		if(loginBean.isMemLogin() == true) {
			return "/login_success";
		} else {
			return "/login_fail";
		}
		
	}
	
	@GetMapping("/home")
	public String home() {
		
		return "home";
	}
	
}