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
	
	@GetMapping("/hello_Admin")
	public String hello_admin() {
		return "admin/hello_Admin";
	}
	@GetMapping("/admin_mem")
	public String mem_modify(BoardPage bp, @ModelAttribute("memberBean") Member_s memberBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
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
	
	@GetMapping("/admin_partner")
	public String mem_partner(BoardPage bp, @ModelAttribute("partnerBean") Partners_s partnerBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
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
	
	@GetMapping("/admin_res")
	public String admin_res(BoardPage bp, @ModelAttribute("resBean") Reservation_s resBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
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
	
	@GetMapping("/admin_qna")
	public String admin_qna(BoardPage bp, @ModelAttribute("qnaBean") Qna_s qnaBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
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
	
	@GetMapping("/admin_partner_delete")
	public String admin_partner_delete(@ModelAttribute("partnerBean") Partners_s partnerBean, Model m) {
		m.addAttribute("partnerBean", ps.getPartner(partnerBean.getPartners_code()));
		
		return "admin/admin_partner_delete";
	}
	
	@PostMapping("/admin_partner_delete_proc")
	public String admin_partner_delete_proc(@ModelAttribute("partnerBean") Partners_s partnerBean, Model m) {
		ps.deletePartner(partnerBean);
		m.addAttribute("partnerBean", partnerBean);
		
		return "admin/admin_partner_delete_proc";
	}
	
	@GetMapping("/admin_reservation_delete")
	public String admin_reservation_delete(@ModelAttribute("reservationBean") Reservation_s reservationBean, Model m) {
		m.addAttribute("partnerBean", rs.getOneReservation(reservationBean.getRes_num()));
		
		return "admin/admin_reservation_delete";
	}
	
	@PostMapping("/admin_reservation_delete_proc")
	public String admin_reservation_delete_proc(@ModelAttribute("reservationBean") Reservation_s reservationBean, Model m) {
		rs.deleteReservation(reservationBean);
		m.addAttribute("reservationBean", reservationBean);
		
		return "admin/admin_reservation_delete_proc";
	}
	
	@GetMapping("/admin_partnerRequest")
	public String admin_partnerRequest(BoardPage bp, @ModelAttribute("partnerBean") Partners_s partnerBean, Model m
			, @RequestParam(value="nowPage", required=false, defaultValue = "1")String nowPage
			, @RequestParam(value="cntPerPage", required=false, defaultValue = "5")String cntPerPage
			, @RequestParam(value="keyword", required=false)String keyword) {
		bp.setKeyword(keyword);
		int partnerCount = ps.partnerCount(bp);
		
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
		
		bp = new BoardPage(partnerCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), keyword);

		m.addAttribute("partnerList", ps.allPartner(bp));
		m.addAttribute("partnerPaging", bp);
		m.addAttribute("partnerCount", partnerCount);
		
		return "admin/admin_partnerRequest";
	}
	
	@GetMapping("/admin_partnerRequest_accept")
	public String admin_partnerRequest_accept(@ModelAttribute("partnerBean") Partners_s partnerBean, Model m) {
		m.addAttribute("partnerBean", ps.getPartner(partnerBean.getPartners_code()));
		
		return "admin/admin_partnerRequest_accept";
	}
	
	@PostMapping("/admin_partnerRequest_accept_proc")
	public String admin_partnerRequest_accept_proc(@ModelAttribute("partnerBean") Partners_s partnerBean, Model m) {
		ps.acceptPartner(partnerBean);
		partnerBean = ps.getPartner(partnerBean.getPartners_code());
		
		int p_mnum = partnerBean.getPartners_mnum();
		
		ps.partnersSetGrade(p_mnum);
		
		return "admin/admin_partnerRequest_accept_proc";
	}
	
	@GetMapping("admin_qna_answer")
	public String admin_qna_answer(@ModelAttribute("qnaBean") Qna_s qnaBean, Model m) {
		m.addAttribute("qnaBean", qs.getQna(qnaBean));
		
		return "admin/admin_qna_answer";
	}
	
	@PostMapping("admin_qna_answer_proc")
	public String admin_qna_answer_proc(@ModelAttribute("qnaBean") Qna_s qnaBean, Model m) {
		qs.deleteQna(qnaBean);
		m.addAttribute("qnaBean", qnaBean);
		
		return "admin/admin_qna_answer_proc";
	}
}
