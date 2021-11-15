package co.sp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import co.sp.beans.Member_s;

@Controller
public class MainControl {

	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("/main")
	public String main(@ModelAttribute("memberBean") Member_s tempLoginMemberBean, HttpSession session) {
		session.setAttribute("loginBean", loginBean);
		return "main";
	}
}
