package co.sp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import co.sp.beans.EmailSet;
import co.sp.beans.Member_s;
import co.sp.beans.Qna_s;
import co.sp.beans.Reservation_s;
import co.sp.service.EmailSender;
import co.sp.service.MemService;
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
		}else {
			System.out.println("PW Email Send");
		    
		    EmailSet email = new EmailSet();
		    email.setReceiver("byungeun96@naver.com");
		    email.setSubject("Sul Sure 비밀번호 찾기 결과");
		    email.setContent("고객님의 비밀번호는 " + ms.getFindPw(memberBean) +" 입니다.");
		    
		    emailSender.SendEmail(email);
			
		    return "success";
		}
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
	    email.setReceiver("byungeun96@naver.com");
	    email.setSubject(name + "님의 Sul Sure 예약 확인 메일입니다.");
	    email.setContent("고객님의 예약 정보 : " + resBean.getCourse_names());
	    
	    emailSender.SendEmail(email);
		
	    return "success";
		
	}
	
	@PostMapping("/admin/sendmail.do")
	public String sendmail(@RequestParam Map<String, String> map, Qna_s qnaBean) throws Exception{
		String answer = map.get("answer");
		String mail = map.get("mem_mail");
		int q_num = Integer.parseInt(map.get("q_num"));
		
		qnaBean = qs.getQna(q_num);
		
		EmailSet email = new EmailSet();
	    email.setReceiver("byungeun96@naver.com");
	    email.setSubject("문의에 대한 답변 메일입니다.");
	    email.setContent(qnaBean.getQ_qnacontent() + "에 대한 답변 : " + answer);
	    
	    emailSender.SendEmail(email);
		
	    return "success";
	}
}
