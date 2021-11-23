package co.sp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.sp.beans.Member_s;

@Controller
@RequestMapping("/course")
public class CourseControl {

	@Resource(name = "loginBean")
	private Member_s loginBean;
	
	@GetMapping("/CourseTab")
	public String CourseMain() {
		
		return "course/CourseTab";
	}
}
