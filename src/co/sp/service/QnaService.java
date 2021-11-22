package co.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.BoardPage;
import co.sp.beans.Qna_s;
import co.sp.dao.QnaDao;

@Service
public class QnaService {
	@Autowired
	private QnaDao qnaDao;
	
	public void addQna(Qna_s qnaBean) {
		qnaDao.addQna(qnaBean);
	}
	
	public void deleteQna(Qna_s qnaBean) {
		qnaDao.deleteQna(qnaBean);
	}
	
	public Qna_s getQna(Qna_s qnaBean) {
		return qnaDao.getQna(qnaBean);
	}
	
	public void updateQna(Qna_s qnaBean) {
		qnaDao.updateQna(qnaBean);
	}
	
	public List<Qna_s> allQna(BoardPage bp){
		return qnaDao.allQna(bp);
	}
	
	public int qnaCount(BoardPage bp) {
		return qnaDao.qnaCount(bp);
	}
}
