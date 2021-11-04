package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.Notice_s;
import co.sp.mapper.NoticeMapper;

@Repository
public class NoticeDao {
	@Autowired
	private NoticeMapper noticemapper;
	
	public void addNotice(Notice_s noticeBean) {
		noticemapper.addNotice(noticeBean);
	}
}