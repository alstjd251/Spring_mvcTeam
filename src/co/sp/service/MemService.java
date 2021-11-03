package co.sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.s_member;
import co.sp.dao.MemberDao;

@Service
public class MemService {
	
	@Autowired
	private MemberDao memdao;
	
	public void addMember(s_member member) {
		memdao.addMember(member);
	}
}
