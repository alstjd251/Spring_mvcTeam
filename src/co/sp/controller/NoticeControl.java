package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import co.sp.beans.Notice_s;
import co.sp.service.NoticeService;

public class NoticeControl {
	@Autowired
	private NoticeService ns;

	@GetMapping("/NoticeRead")
	public String main(@ModelAttribute Notice_s notice, Model m) {
		m.addAttribute("notice", notice);
		
		return "NoticeRead";
	}
}