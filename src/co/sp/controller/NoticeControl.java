package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.Notice_s;
import co.sp.service.NoticeService;

@Controller
@RequestMapping("/board")
public class NoticeControl {
	@Autowired
	private NoticeService ns;

	@GetMapping("/NoticeRead")
	public String main(@ModelAttribute("noticeBean") Notice_s notice) {
		return "board/NoticeRead";
	}

	@PostMapping("/notice_proc")
	public String join(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		m.addAttribute("noticeBean", noticeBean);
		ns.addNotice(noticeBean);
		return "board/NoticeInResult";
	}
	
	@GetMapping("/NoticeList")
	public String read(@RequestParam("mem_name") String mem_name,
					   @RequestParam("n_noticetitle") String n_noticetitle, 
					   Model m) {
		
		m.addAttribute("mem_name", mem_name);
		m.addAttribute("n_noticetitle", n_noticetitle);
		
		return "board/NoticeList";
	}
}

