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
import co.sp.beans.Partners_s;
import co.sp.beans.Qna_s;
import co.sp.beans.Reservation_s;
import co.sp.service.MemService;
import co.sp.service.PartnerService;
import co.sp.service.QnaService;
import co.sp.service.ResService;

@Controller
@RequestMapping("/admin")
public class AdminControl {
	@Autowired
	private MemService ms;
	
	@Autowired
	private ResService rs;
	
	@Autowired
	private QnaService qs;
	
	@Autowired
	private PartnerService ps;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("hello_Admin")
	public String hello_admin() {
		return "admin/hello_Admin";
	}
	@GetMapping("admin_mem")
	public String mem_modify(BoardPage bp, @ModelAttribute("memberBean") Member_s memberBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false, defaultValue = "%")String keyword) {
		bp.setKeyword(keyword);
		int memberTotal = ms.memCount(bp);
		
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
	public String mem_partner(BoardPage bp, @ModelAttribute("partnerBean") Partners_s partnerBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false, defaultValue = "%")String keyword) {
		bp.setKeyword(keyword);
		int partnerTotal = ps.partnerCount(bp);
		
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
		
		bp = new BoardPage(partnerTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), keyword);

		m.addAttribute("partnerList", ps.allPartner(bp));
		m.addAttribute("partnerPaging", bp);
		m.addAttribute("partnerTotal", partnerTotal);
		
		return "admin/admin_partner";
	}
	
	@GetMapping("admin_res")
	public String admin_res(BoardPage bp, @ModelAttribute("resBean") Reservation_s resBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false, defaultValue = "%")String keyword) {
		bp.setKeyword(keyword);
		int resTotal = rs.resCount(bp);
		
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
		
		bp = new BoardPage(resTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), keyword);

		m.addAttribute("resList", rs.allReservation(bp));
		m.addAttribute("resPaging", bp);
		m.addAttribute("resTotal", resTotal);
		
		return "admin/admin_res";
	}
	
	@GetMapping("admin_qna")
	public String admin_qna(BoardPage bp, @ModelAttribute("qnaBean") Qna_s qnaBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false, defaultValue = "%")String keyword) {
		bp.setKeyword(keyword);
		int qnaTotal = qs.qnaCount(bp);
		
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
		
		bp = new BoardPage(qnaTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), keyword);

		m.addAttribute("qnaList", qs.allQna(bp));
		m.addAttribute("qnaPaging", bp);
		m.addAttribute("qnaTotal", qnaTotal);
		
		return "admin/admin_qna";
	}
}
