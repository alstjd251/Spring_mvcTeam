package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.sp.beans.Member_s;

@Controller
@RequestMapping("/admin")
public class AdminControl {
	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("/admin_mem")
	public String admin_mem() {
		return "admin/admin_mem";
	}
	
}
