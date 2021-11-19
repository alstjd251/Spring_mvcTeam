package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.sp.beans.Member_s;
import co.sp.service.MemService;

@Controller
@RequestMapping("/admin")
public class AdminControl {
	@Autowired
	private MemService ms;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("/admin_mem")
	public String admin_mem() {
		
		return "admin/admin_mem";
	}
	
}
