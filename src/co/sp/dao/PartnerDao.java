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
	
	public void addPartner(Notice_s noticeBean) {
		partnermapper.addPartner(noticeBean);
	}
	
	public void deletePartner(Notice_s noticeBean) {
		partnermapper.deletePartner(noticeBean);
	}
	
	public void updatePartner(Notice_s noticeBean) {
		partnermapper.updatePartner(noticeBean);
	}
	
	public int partnerCount(BoardPage bp) {
		return partnermapper.partnerCount(bp);
	}
	
	public List<Partners_s> allPartner(BoardPage bp){
		return partnermapper.allPartner(bp);
	}
}
