package co.sp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import co.sp.beans.EmailSet;
import co.sp.beans.Member_s;
import co.sp.beans.Partners_s;
import co.sp.beans.Qna_s;
import co.sp.beans.Reservation_s;
import co.sp.service.EmailSender;
import co.sp.service.MemService;
import co.sp.service.PartnerService;
import co.sp.service.QnaService;
import co.sp.service.ResService;

@RestController
public class RestControl {

	@Autowired
	private MemService ms;
	
	@Autowired
	private ResService rs;
	
	@Autowired
	private QnaService qs;
	
	@Autowired
	private PartnerService ps;
	
	@Autowired
	private EmailSender emailSender;
	
	
	@GetMapping("/member/idcheck/{mem_id}")
	public String checkId(@PathVariable String mem_id) {
		
		boolean check = ms.idCheck(mem_id);
		
		return check + "";
	}
	
	@PostMapping("/member/idsearch.do")
	public String memberIdSearch(@RequestParam Map<String, String> map, Member_s memberBean) throws Exception {
		
		String name = map.get("mem_name");
		String mail = map.get("mem_mail");
		
		memberBean.setMem_mail(mail);
		memberBean.setMem_name(name);
		
		if(ms.getFindId(memberBean) == null) {
			return "error";
		}else {
			return ms.getFindId(memberBean);
		}
		
	}
	
	@PostMapping("/member/pwsearch.do")
	public String memberPwSearch(@RequestParam Map<String, String> map, Member_s memberBean) throws Exception {
		
		String name = map.get("mem_name");
		String id = map.get("mem_id");
		String mail = map.get("mem_mail");
		
		memberBean.setMem_name(name);
		memberBean.setMem_id(id);
		memberBean.setMem_mail(mail);
		
		if(ms.getFindPw(memberBean) == null) {
			return "error";
		}
		else {
//			System.out.println("PW Email Send");
//		    
//		    EmailSet email = new EmailSet();
//		    email.setReceiver(mail);
//		    email.setSubject("Sul Sure ???????????? ?????? ??????");
//		    email.setContent("<div style='text-align:center; width:80%;'>"
//		    		+ "<h1>???????????? ?????? ??????</h1>"
//		    		+ "<hr>"
//		    		+ "???????????????. <b style=font-size:15px;'>Sul Sure</b> ?????????.\r\n"
//		    		+ "??????????????? ???????????? ???????????? ?????????.\r\n"
//		    		+ "\r\n"
//		    		+ name + "???????????? ???????????? : <span style='font-weight:bold; font-size:15px'>" + ms.getFindPw(memberBean) + "</span>\r\n"
//		    		+ "\r\n"
//		    		+ "<b style='color:red; font-size:15px;'>??????????????? ?????? ????????? ???????????? ?????????.\r\n"
//		    		+ "???????????? ???????????? ?????? ????????? ?????????????????? ????????????.</b>"
//		    		+ "</div>");
//		    
//		    emailSender.SendEmail(email);
			
		    return "success";
		}
	}
	
	@PostMapping("/member/pwsend.do")
	public String memberPwSend(@RequestParam Map<String, String> map, Member_s memberBean) throws Exception {
		
		String name = map.get("mem_name");
		String id = map.get("mem_id");
		String mail = map.get("mem_mail");
		
		memberBean.setMem_name(name);
		memberBean.setMem_id(id);
		memberBean.setMem_mail(mail);
		
		    
	    EmailSet email = new EmailSet();
	    email.setReceiver(mail);
	    email.setSubject("Sul Sure ???????????? ?????? ??????");
	    email.setContent("<div style='text-align:center; width:80%;'>"
	    		+ "<h1>???????????? ?????? ??????</h1>"
	    		+ "<hr>"
	    		+ "???????????????. <b style=font-size:15px;'>Sul Sure</b> ?????????.\r\n"
	    		+ "??????????????? ???????????? ???????????? ?????????.\r\n"
	    		+ "\r\n"
	    		+ name + "???????????? ???????????? : <span style='font-weight:bold; font-size:15px'>" + ms.getFindPw(memberBean) + "</span>\r\n"
	    		+ "\r\n"
	    		+ "<b style='color:red; font-size:15px;'>??????????????? ?????? ????????? ???????????? ?????????.\r\n"
	    		+ "???????????? ???????????? ?????? ????????? ?????????????????? ????????????.</b>"
	    		+ "</div>");
	    
	    emailSender.SendEmail(email);
		
	    return "success";
	}
	
	@PostMapping("/member/pwcheck.do")
	public String pwCheck(@RequestParam Map<String, String> map, Member_s memberBean) {
		int mem_num = Integer.parseInt(map.get("mem_num"));
		String mem_pw = map.get("mem_pw");
		
		memberBean = ms.getMemberInfo(mem_num);
		
		String pw = memberBean.getMem_pw();
		
		if(mem_pw.equals(pw)) {
			return "true";
		}
		else {
			return "false";
		}
		
	}
	
	@PostMapping("/reservation/reserveMail.do")
	public String reserveMail(@RequestParam Map<String, String> map, Reservation_s resBean) throws Exception {
		
		String name = map.get("mem_name");
		String mail = map.get("mem_mail");
		String resNum = map.get("res_num");
		
		resBean = rs.getOneReservation(resNum);
	
		System.out.println("Reservation Email Send");
	    
	    EmailSet email = new EmailSet();
	    email.setReceiver(mail);
	    email.setSubject(name + "?????? Sul Sure ?????? ?????? ???????????????.");
	    email.setContent("<div style='align-items: center;width: 100%;display: flex;flex-direction: column;'><div>"
	             + "<h1>" + name + "?????? " + "Sul Sure ?????? ??????</h1>"
	             + "<hr>"
	             + "<table border='1' style='width:700px; height:500px; border-spacing:0px;'>"
	             + "<tr>"
	             + "<th>????????????</th>"
	             + "<td style='padding:20px;'>" + resBean.getRes_num() + "</td>"
	             + "</tr>"
	             + "<tr>"
	             + "<th>????????????</th>"
	             + "<td style='padding:20px;'>" + resBean.getRes_startdate() + "</td>"
	              + "<tr>"
	              + "<th>????????????</th>"
	              + "<td style='padding:20px;'>" + resBean.getCourse_names() + "</td>"
	              + "</tr>"
	              + "<tr>"
	              + "<th>????????????</th>"
	              + "<td style='padding:20px;'>" + resBean.getRes_paydate() + "</td>"
	              + "</tr>"
	              + "<tr>"
	              + "<th>????????????</th>"
	              + "<td style='padding:20px;'>" + name + "</td>"
	              + "</tr>"
	              + "<tr>"
	              + "<th>??????</th>"
	              + "<td style='padding:20px;'>" + resBean.getRes_personnel() + "</td>"
	              + "</tr>"
	              + "<tr>"
	              + "<th>??????</th>"
	              + "<td style='padding:20px;'>" + resBean.getCourse_price() + " ???" + "</td>"
	              + "</tr>"
	             + "</table>"
	             + "</div></div>");
	    
	    emailSender.SendEmail(email);
		
	    return "success";
		
	}
	
	@PostMapping("/admin/sendmail.do")
	public String sendmail(@RequestParam Map<String, String> map,@ModelAttribute("qnaBean") Qna_s qnaBean) throws Exception{
		String answer = map.get("answer");
		String mail = map.get("mem_mail");
		int q_num = Integer.parseInt(map.get("q_num"));
		int q_mnum = Integer.parseInt(map.get("q_mnum"));
		
		qnaBean.setQ_qnanum(q_num);
		qnaBean.setQ_mnum(q_mnum);
		
		qnaBean = qs.getQna(qnaBean);
		String qna = qnaBean.getQ_qnacontent();
		
		qna = qna.replaceAll("\n", "<br>");
		answer = answer.replaceAll("\n", "<br>");
		
		EmailSet email = new EmailSet();
	    email.setReceiver(mail);
	    email.setSubject("Sul Sure ????????? ?????? ???????????????.");
	    email.setContent("<div style='align-items: center;width: 100%;display: flex;flex-direction: column;'><div>"
	    		+ "<h1>Sul Sure ?????? ??????</h1>"
	    		+ "<hr>"
	    		+ "<table border='1' style='width:700px; height:500px'>"
	    		+ "<tr>"
	    		+ "<th>??????</th>"
	    		+ "<td style='padding:20px;'>" + qna + "</td>"
	    		+ "</tr>"
	    		+ "<tr>"
	    		+ "<th>?????? ??????</th>"
	    		+ "<td style='padding:20px;'>" + answer + "</td>"
	    		+ "</table>"
	    		+ "</div></div>");
	    
	    
	    emailSender.SendEmail(email);
		
	    return "success";
	}
	
	@PostMapping("/member/pcodeCheck.do")
	public String pcodeCheck(@RequestParam Map<String, String> map, Partners_s partnersBean) throws Exception {
		String p_code = map.get("p_code");
		String code = ps.getPcodeCheck(p_code);		

		if(p_code.equals(code)) {
			return "fail";
			
		}else {
			return "success";
		}
	}
}
