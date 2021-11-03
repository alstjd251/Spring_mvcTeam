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
}