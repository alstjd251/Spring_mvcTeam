package co.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.BoardPage;
import co.sp.beans.Notice_s;
import co.sp.beans.Partners_s;
import co.sp.dao.PartnerDao;

@Service
public class PartnerService {
	@Autowired
	private PartnerDao partnerDao;
	
	public void addPartner(Notice_s noticeBean) {
		partnerDao.addPartner(noticeBean);
	}
	
	public void deletePartner(Notice_s noticeBean) {
		partnerDao.deletePartner(noticeBean);
	}
	
	public void updatePartner(Notice_s noticeBean) {
		partnerDao.updatePartner(noticeBean);
	}
	
	public int partnerCount(BoardPage bp) {
		return partnerDao.partnerCount(bp);
	}
	
	public List<Partners_s> allPartner(BoardPage bp){
		return partnerDao.allPartner(bp);
	}
}
