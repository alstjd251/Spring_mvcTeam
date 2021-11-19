package co.sp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.BoardPage;
import co.sp.beans.Member_s;
import co.sp.dao.MemberDao;

@Service
public class MemService {

	@Autowired
	private MemberDao memDao;
	
	@Resource(name = "loginBean")
	private Member_s loginBean;

	public void addMember(Member_s memberBean) {
		memDao.addMember(memberBean);
	}


	public void getLoginMemberInfo(Member_s tempLoginMemberBean) {

		Member_s tempLoginMemberBean2 = memDao.getLoginMemberInfo(tempLoginMemberBean);

		if (tempLoginMemberBean2 != null) {
			loginBean.setMem_num(tempLoginMemberBean2.getMem_num());
			loginBean.setMem_name(tempLoginMemberBean2.getMem_name());
			loginBean.setMem_phone(tempLoginMemberBean2.getMem_phone());
			loginBean.setMem_mail(tempLoginMemberBean2.getMem_mail());
			loginBean.setMem_grade(tempLoginMemberBean2.getMem_grade());
			loginBean.setMemLogin(true);
		}
	}
	
	public String getFindId(Member_s memberBean) {
		return memDao.getFindId(memberBean);
	}
	
	public String getFindPw(Member_s memberBean) {
		return memDao.getFindPw(memberBean);
	}
	
	public boolean idCheck(String mem_id) {
		
		String checkId = memDao.idCheck(mem_id);
		
		if(checkId == null) {
			return true;
		} else {
			return false;
		}
	}
	
	public Member_s getMemberInfo(int mem_num) {
		return memDao.getMemberInfo(mem_num);
	}
	
	public void memberUpdate(Member_s memberBean) {
		memDao.memberUpdate(memberBean);
	}
	
	public List<Member_s> allMember(BoardPage bp){
		return memDao.allMember(bp);
	}
	
	public int memCount(BoardPage bp) {
		return memDao.memCount(bp);
	}
}
