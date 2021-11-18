package co.sp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import co.sp.beans.Member_s;
import co.sp.service.MemService;
import co.sp.service.ResService;

@RestController
public class RestControl {

	@Autowired
	private MemService ms;
	
	
	@GetMapping("/member/idcheck/{mem_id}")
	public String checkId(@PathVariable String mem_id) {
		
		boolean check = ms.idCheck(mem_id);
		
		return check + "";
	}
	
	@PostMapping("/member/idsearch.do")
	public String memberModifyPOST(@RequestParam Map<String, String> map, Member_s memberBean) throws Exception {
		
		String name = map.get("mem_name");
		String mail = map.get("mem_mail");
		
		System.out.println(name);
		System.out.println(mail);
		System.out.println(ms.getFindId(memberBean));
		
		memberBean.setMem_mail(mail);
		memberBean.setMem_name(name);
		
		if(ms.getFindId(memberBean) == null) {
			return "error";
		}else {
			return ms.getFindId(memberBean);
		}
		
	}
	
}
