package co.sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.Member_s;
import co.sp.dao.MemberDao;

@Service
public class MemService {
	
	@Autowired
	private MemberDao memdao;
	
	public void addMember(Member_s member) {
		memdao.addMember(member);
	}
}
