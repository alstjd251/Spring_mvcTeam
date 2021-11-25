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
	public void sendPassword() throws Exception{
    
	    System.out.println("Email Controller");
	    
	    String pass = "1234";
	    EmailSet email = new EmailSet();
	    email.setReceiver("sulsurecom@gmail.com");
	    email.setSubject("Sul Sure 비밀번호 찾기 결과");
	    email.setContent("고객님의 비밀번호는" + pass +"입니다.");
	    
	    emailSender.SendEmail(email);
	}
    
}
