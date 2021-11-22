package co.sp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.BoardPage;
import co.sp.beans.Notice_s;
import co.sp.beans.Partners_s;
import co.sp.mapper.PartnerMapper;

@Repository
public class PartnerDao {
	@Autowired
	private PartnerMapper partnermapper;
	
	public void addPartner(Partners_s partnerBean) {
		partnermapper.addPartner(partnerBean);
	}
	
	public void deletePartner(Partners_s partnerBean) {
		partnermapper.deletePartner(partnerBean);
	}
	
	public void updatePartner(Partners_s partnerBean) {
		partnermapper.updatePartner(partnerBean);
	}
	
	public int partnerCount(BoardPage bp) {
		return partnermapper.partnerCount(bp);
	}
	
	public List<Partners_s> allPartner(BoardPage bp){
		return partnermapper.allPartner(bp);
	}
	
	public Partners_s getPartner(String code) {
		return partnermapper.getPartner(code);
	}
	
	public void acceptPartner(Partners_s partnerBean) {
		partnermapper.acceptPartner(partnerBean);
	}
	
	public String getPcodeCheck(String partners_code) {
		return partnermapper.getPcodeCheck(partners_code);
	}
	
	public void partnersSetGrade(int partners_mnum) {
		partnermapper.partnersSetGrade(partners_mnum);
	}
	
	public void deletePartnerMember(Partners_s partnerBean) {
		partnermapper.deletePartnerMember(partnerBean);
	}
}
