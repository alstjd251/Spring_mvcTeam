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

import co.sp.beans.BoardPage;
import co.sp.beans.Member_s;
import co.sp.beans.Notice_s;
import co.sp.beans.Qna_s;
import co.sp.service.NoticeService;
import co.sp.service.QnaService;

@Controller
@RequestMapping("/board")
public class NoticeControl {
	@Autowired
	private NoticeService ns;
	
	@Autowired
	private QnaService qs;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;

	@GetMapping("/NoticeRead")
	public String read(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		ns.increaseNoticeCnt(noticeBean);
		noticeBean = ns.getNotice(noticeBean);
		m.addAttribute("noticeBean", noticeBean);
		
		return "board/NoticeRead";
	}
	
	@GetMapping("/NoticeModify")
	public String modify(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		noticeBean = ns.getNotice(noticeBean);
		m.addAttribute("noticeBean", noticeBean);
		
		return "board/NoticeModify";
	}
	
	@PostMapping("/NoticeModifyProc")
	public String modifyProc(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		ns.updateNotice(noticeBean);
		m.addAttribute("noticeBean", noticeBean);
		
		return "board/NoticeModifyProc";
	}
	
	@GetMapping("/NoticeWrite")
	public String write(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		m.addAttribute("noticeBean", noticeBean);
		
		return "board/NoticeWrite";
	}

	@PostMapping("/NoticeProc")
	public String writeProc(@ModelAttribute("noticeBean") Notice_s noticeBean, Model m) {
		noticeBean.setN_mnum(loginBean.getMem_num());
		ns.addNotice(noticeBean);
		
		return "board/NoticeProc";
	}
	
	@GetMapping("/NoticeList")
	public String list(BoardPage bp, @ModelAttribute("noticeBean") Notice_s noticeBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
		bp.setKeyword(keyword);
		int noticeTotal = ns.getNoticeTotal(bp);
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		}
		else if (nowPage == null) {
			nowPage = "1";
		}
		else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		bp = new BoardPage(noticeTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), keyword);

		m.addAttribute("noticeList", ns.getNotice_desc(bp));
		m.addAttribute("noticePaging", bp);
		m.addAttribute("noticeTotal", noticeTotal);
		
		return "board/NoticeList";
	}
	
	@PostMapping("/NoticeDelete")
	public String delete(@ModelAttribute("noticeBean") Notice_s noticeBean) {
		ns.deleteNotice(noticeBean);
		
		return "board/NoticeDelete";
	}
	
	@GetMapping("/limit")
	public String limit() {
		return "board/limit";
	}
	@GetMapping("/Qna")
	public String qna() {
		return "board/Qna";
	}
	@GetMapping("/ContactUs")
	public String contactus() {
		return "board/ContactUs";
	}
	@GetMapping("/QnaAnother")
	public String qnaanother(@ModelAttribute("qnaBean") Qna_s qnaBean) {
		
		return "board/QnaAnother";
	}
	
	@PostMapping("/QnaAnother_proc")
	public String qnaProc(@ModelAttribute("qnaBean") Qna_s qnaBean, Model m) {
		qs.addQna(qnaBean);
		return "board/QnaAnotherSucess";
	}
	
	@GetMapping("/QnaAnotherSucess")
	public String qnaanothersucess() {
		
		return "board/QnaAnotherSucess";
	}
	
	
	
}

