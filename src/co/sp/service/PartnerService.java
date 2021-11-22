package co.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.BoardPage;
import co.sp.beans.Partners_s;
import co.sp.dao.PartnerDao;

@Service
public class PartnerService {
	@Autowired
	private PartnerDao partnerDao;
	
	public void addPartner(Partners_s partnerBean) {
		partnerDao.addPartner(partnerBean);
	}
	
	public void deletePartner(Partners_s partnerBean) {
		partnerDao.deletePartner(partnerBean);
	}
	
	public void updatePartner(Partners_s partnerBean) {
		partnerDao.updatePartner(partnerBean);
	}
	
	public int partnerCount(BoardPage bp) {
		return partnerDao.partnerCount(bp);
	}
	
	public List<Partners_s> allPartner(BoardPage bp){
		return partnerDao.allPartner(bp);
	}
	
	public Partners_s getPartner(String code) {
		return partnerDao.getPartner(code);
	}
	
	public void acceptPartner(Partners_s partnerBean) {
		partnerDao.acceptPartner(partnerBean);
	}
	
	public String getPcodeCheck(String partners_code) {
		return partnerDao.getPcodeCheck(partners_code);
	}
	
	public void partnersSetGrade(int partners_mnum) {
		partnerDao.partnersSetGrade(partners_mnum);
	}
}
