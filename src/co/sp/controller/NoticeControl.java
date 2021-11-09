package co.sp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.sp.beans.Member_s;
import co.sp.beans.Notice_s;
import co.sp.service.NoticeService;

@Controller
@RequestMapping("/board")
public class NoticeControl {
	@Autowired
	private NoticeService ns;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;

	@GetMapping("/NoticeRead")
	public String main(@ModelAttribute("noticeBean") Notice_s notice) {
		return "board/NoticeRead";
	}

	@PostMapping("/notice_proc")
	public String join(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		m.addAttribute("noticeBean", noticeBean);
		ns.addNotice(noticeBean);
		return "board/NoticeList";
	}
	
	@GetMapping("/NoticeList")
	public String list(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		List<Notice_s> nl = ns.getNotice(noticeBean);
		m.addAttribute("noticeList", nl);
		return "board/NoticeList";
	}
	
	@GetMapping("/NoticeWrite")
	public String write(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		m.addAttribute("noticeBean", noticeBean);
		return "board/NoticeWrite";
	}
	/*
	@GetMapping("/NoticeList")
	public String read(@RequestParam("n_noticecontent") String n_noticecontent, @RequestParam("n_noticetitle") String n_noticetitle, 
					   Model m) {
		m.addAttribute("loginBean", loginBean);
		m.addAttribute("n_noticetitle", n_noticetitle);
		m.addAttribute("n_noticecontent", n_noticecontent);
		
		return "board/NoticeList";
	}
	*/
}

