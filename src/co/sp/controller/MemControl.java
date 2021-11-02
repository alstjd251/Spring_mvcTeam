package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import co.sp.beans.s_member;
import co.sp.service.MemService;

@Controller
public class MemControl {

	@Autowired
	private MemService ms;
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	@PostMapping("/member_proc")
	public String join(@ModelAttribute("s_member") s_member member) {
		return "page";
	}
}
