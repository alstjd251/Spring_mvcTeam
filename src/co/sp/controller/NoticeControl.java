package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import co.sp.beans.Member_s;
import co.sp.service.NoticeService;

public class NoticeControl {
	@Autowired
	private NoticeService ms;

	@GetMapping("/main")
	public String main(@ModelAttribute Member_s member, Model m) {
		m.addAttribute("member", member);
		
		return "main";
	}
	
}
