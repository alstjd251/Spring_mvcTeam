package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.Member_s;
import co.sp.mapper.MemMapper;

@Repository
public class MemberDao {

	@Autowired
	private MemMapper memmapper;
	
	public void addMember(Member_s member) {
		memmapper.addMember(member);
	}
}
