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
	public String main(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		ns.increaseNoticeCnt(noticeBean);
		m.addAttribute(noticeBean);
		return "board/NoticeRead";
	}

	@PostMapping("/NoticePorc")
	public String join(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		noticeBean.setN_mnum(loginBean.getMem_num());
		ns.addNotice(noticeBean);
		
		return "board/NoticePorc";
	}
	
	@GetMapping("/NoticeList")
	public String list(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		List<Notice_s> nl = ns.getNotice(noticeBean);
		int noticeTotal = ns.getNoticeTotal();
		
		m.addAttribute("noticeList", nl);
		m.addAttribute("noticeTotal", noticeTotal);
		
		return "board/NoticeList";
	}
	
	@GetMapping("/NoticeWrite")
	public String write(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		m.addAttribute("noticeBean", noticeBean);
		
		return "board/NoticeWrite";
	}
	
	@PostMapping("/NoticeDelete")
	public String delete(@ModelAttribute("noticeBean") Notice_s noticeBean) {
		ns.deleteNotice(noticeBean);
		
		return "board/NoticeDelete";
	}
	
	@GetMapping("/NOticeModify")
	public String modify(@ModelAttribute("noticeBean") Notice_s noticeBean) {
		return "board/NoticeModify";
	}
}

