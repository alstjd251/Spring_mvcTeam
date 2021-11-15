package co.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import co.sp.service.MemService;

@RestController
public class idCheckControl {

	@Autowired
	private MemService ms;
	
	@GetMapping("/member/idcheck/{mem_id}")
	public String checkId(@PathVariable String mem_id) {
		
		boolean check = ms.idCheck(mem_id);
		
		return check + "";
	}
}
