package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Member_s;
import co.sp.service.MemService;

@Controller
@RequestMapping("/member")
public class MemControl {

	@Autowired
	private MemService ms;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;

//	@GetMapping("/main")
//	public String main(@ModelAttribute("memberBean") Member_s tempLoginMemberBean,  @RequestParam(value = "fail", defaultValue = "false") boolean fail, Model m) {
//		m.addAttribute("fail", fail);
//		return "member/main";
//	}
	
	@PostMapping("/member_proc")
	public String join(@ModelAttribute("memberBean") Member_s memberBean) {
		ms.addMember(memberBean);
		return "member/join_success";
	}
	
//	@GetMapping("/login")
//	public String login(@ModelAttribute("tempLoginMemberBean") Member_s tempLoginMemberBean, @RequestParam(value = "fail", defaultValue = "false") boolean fail, Model m) {
//		
//		m.addAttribute("fail", fail);
//		
//		return "/login";
//	}
	
	@PostMapping("/login_proc")
	public String login_proc(@ModelAttribute("memberBean") Member_s memberBean) {
		
		ms.getLoginMemberInfo(memberBean);
		
		if(loginBean.isMemLogin() == true) {
			return "member/login_success";
		} else {
			return "member/login_fail";
		}
		
	}
	
	@GetMapping("/logout_proc")
	public String logout_proc() {
		loginBean.setMemLogin(false);
		return "member/logout_success";
	}
	
	@GetMapping("/mypage")
	public String mypg(Model m) {
		m.addAttribute("loginBean", loginBean);
		return "member/mypage";
	}
	
	@GetMapping("/home")
	public String home(Model m) {
		m.addAttribute("loginBean", loginBean);
		return "home";
	}
	
}
