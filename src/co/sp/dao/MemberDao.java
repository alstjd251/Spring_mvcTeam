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
	
	public String getFindId(Member_s memberBean) {
		return memMapper.getFindId(memberBean);
	}
	
	public String idCheck(String mem_id) {
		return memMapper.idCheck(mem_id);
	}
	
	public String getFindPw(Member_s memberBean) {
		return memMapper.getFindPw(memberBean);
	}
	
	public Member_s getMemberInfo(int mem_num) {
		return memMapper.getMemberInfo(mem_num);
	}
	
	public void memberUpdate(Member_s memberBean) {
		memMapper.memberUpdate(memberBean);
	}
}
