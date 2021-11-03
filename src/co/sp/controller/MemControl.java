package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import co.sp.beans.Member_s;
import co.sp.service.MemService;

@Controller
public class MemControl {

	@Autowired
	private MemService ms;

	@GetMapping("/main")
	public String main(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
	
		return "main";
	}
	
	@PostMapping("/member_proc")
	public String join(@ModelAttribute("memberBean") Member_s memberBean) {
		ms.addMember(memberBean);
		return "page";
	}
}
