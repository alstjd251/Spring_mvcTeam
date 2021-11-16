package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import co.sp.beans.EmailSet;
import co.sp.service.EmailSender;

@Controller
public class EmailContol {

	@Autowired
	private EmailSender emailSender;
	
	@RequestMapping("/mail")
	public void sendEmailAction() throws Exception{
    
	    System.out.println("Email Controller");
	    
	    EmailSet email = new EmailSet();
	    email.setReceiver("byungeun96@naver.com");
	    email.setContent("내용이 들어갑니다");
	    email.setSubject("제목이 들어갑니다");
	    
	    emailSender.SendEmail(email);
	}
    
}
