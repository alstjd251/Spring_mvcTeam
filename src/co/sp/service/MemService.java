package co.sp.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

//	public Member_s getLoginMemberInfo(Member_s tempLoginMemberBean) {
//		return memDao.getLoginMemberInfo(tempLoginMemberBean);
//	}

	public void getLoginMemberInfo(Member_s tempLoginMemberBean) {

		Member_s tempLoginMemberBean2 = memDao.getLoginMemberInfo(tempLoginMemberBean);

		if (tempLoginMemberBean2 != null) {
			loginBean.setMem_num(tempLoginMemberBean2.getMem_num());
			loginBean.setMem_name(tempLoginMemberBean2.getMem_name());
			loginBean.setMemLogin(true);
		}
	}
	
	public Member_s getFindId(Member_s memberBean) {
		return memDao.getFindId(memberBean);
	}
	
	public boolean idCheck(String mem_id) {
		
		String checkId = memDao.idCheck(mem_id);
		
		if(checkId == null) {
			return true;
		} else {
			return false;
		}
	}
}
