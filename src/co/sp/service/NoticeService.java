package co.sp.service;

import org.springframework.beans.factory.annotation.Autowired;

import co.sp.dao.NoticeDao;

public class NoticeService {
	@Autowired
	private NoticeDao noticedao;
}