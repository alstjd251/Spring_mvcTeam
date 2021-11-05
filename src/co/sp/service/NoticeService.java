package co.sp.service;

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
	
	public void getNotice(Notice_s noticeBean) {
		noticedao.getNotice(noticeBean);
	}
	
	public void updateNotice(Notice_s noticeBean) {
		noticedao.updateNotice(noticeBean);
	}
}