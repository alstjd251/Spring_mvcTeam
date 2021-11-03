package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.s_member;
import co.sp.mapper.MapInter;

@Repository
public class MemberDao {

	@Autowired
	private MapInter map;
	
	public void addMember(s_member member) {
		map.addMember(member);
	}
}
