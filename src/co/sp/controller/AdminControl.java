package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String admin_mem(@ModelAttribute("memberBean") Member_s memberBean, Model m) {
		int mem_num = loginBean.getMem_num();
		String mem_grade = loginBean.getMem_grade();
		
		if(!mem_grade.equals("0")) {
			m.addAttribute("memberBean",ms.getMemberInfo(mem_num));
			return "admin/admin_limit";
		}
		else {
			m.addAttribute("memberBean", ms.getMemberInfo(mem_num));
			return "admin/admin_mem";
		}
	}
	
	@GetMapping("/admin_limit")
	public String admin_limit() {
		return"admin/admin_limit";
	}
}
