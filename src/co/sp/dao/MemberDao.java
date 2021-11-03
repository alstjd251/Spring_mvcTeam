package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.Member_s;
import co.sp.mapper.MemMapper;

@Repository
public class MemberDao {

	@Autowired
	private MemMapper memMapper;
	
	public void addMember(Member_s memberBean) {
		memMapper.addMember(memberBean);
	}
	
	public Member_s getLoginMemberInfo(Member_s tempLoginMemberBean) {
		return memMapper.getLoginMemberInfo(tempLoginMemberBean);
	}
}
