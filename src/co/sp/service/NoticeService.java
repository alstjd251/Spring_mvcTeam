package co.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.Notice_s;
import co.sp.dao.NoticeDao;

@Service
public class NoticeService {
	@Autowired
	private NoticeDao noticedao;
	
	public void addNotice(Notice_s noticeBean) {
		noticedao.addNotice(noticeBean);
	}
	
	public void deleteNotice(Notice_s noticeBean) {
		noticedao.deleteNotice(noticeBean);
	}
	
	public List<Notice_s> getNotice(Notice_s noticeBean) {
		return noticedao.getNotice(noticeBean);
	}
	
	public void updateNotice(Notice_s noticeBean) {
		noticedao.updateNotice(noticeBean);
	}
	
	public int getNoticeTotal() {
		return noticedao.getNoticeTotal();
	}
	
	public void increaseNoticeCnt(Notice_s noticeBean) {
		noticedao.increaseNoticeCnt(noticeBean);
	}
	public List<Notice_s> getNotice_desc(Notice_s noticeBean){
		return noticedao.getNotice_desc(noticeBean);
	}
}