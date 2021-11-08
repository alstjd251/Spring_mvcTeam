package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Member_s;

@Controller
public class MainControl {

	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("/main")
	public String main(@ModelAttribute("memberBean") Member_s tempLoginMemberBean,@RequestParam(defaultValue = "false") boolean memLogin, Model m) {
		m.addAttribute("memLogin", loginBean.isMemLogin());
		return "main";
	}
}
