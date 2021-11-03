package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.s_member;
import co.sp.mapper.MemMapper;

@Repository
public class MemberDao {

	@Autowired
	private MemMapper memmapper;
	
	public void addMember(s_member member) {
		memmapper.addMember(member);
	}
}
