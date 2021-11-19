package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.sp.beans.BoardPage;
import co.sp.beans.Member_s;
import co.sp.service.MemService;
import co.sp.service.NoticeService;
import co.sp.service.ResService;

@Controller
@RequestMapping("/admin")
public class AdminControl {
	@Autowired
	private MemService ms;
	
	@Autowired
	private ResService rs;
	
	@Autowired
	private NoticeService ns;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("hello_admin")
	public String hello_admin() {
		return "admin/hello_admin";
	}
	@GetMapping("admin_mem")
	public String mem_modify(BoardPage bp, @ModelAttribute("memberBean") Member_s memberBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
		bp.setKeyword(keyword);
		int memberTotal = ms.memCount(bp);
		
		System.out.println(memberTotal);
		System.out.println(ms.allMember(bp));
		
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
		
		bp = new BoardPage(memberTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), keyword);

		m.addAttribute("memberList", ms.allMember(bp));
		m.addAttribute("memberPaging", bp);
		m.addAttribute("memberTotal", memberTotal);
		
		return "admin/admin_mem";
	}
	
	@GetMapping("admin_partner")
	public String mem_partner() {
		return "admin/admin_partner";
	}
	
	@GetMapping("admin_res")
	public String admin_res() {
		return "admin/admin_res";
	}
	
	@GetMapping("admin_qna")
	public String admin_qna() {
		return "admin/admin_qna";
	}
}