package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;

import co.sp.beans.Qna_s;
import co.sp.mapper.QnaMapper;

public class QnaDao {
	@Autowired
	private QnaMapper qnamapper;
	
	public void addNotice(Qna_s qnaBean) {
		qnamapper.addQna(qnaBean);
	}
	
	public void deleteNotice(Qna_s qnaBean) {
		qnamapper.deleteQna(qnaBean);
	}
	
	public void getNotice(Qna_s qnaBean) {
		qnamapper.getQna(qnaBean);
	}
	
	public void updateNotice(Qna_s qnaBean) {
		qnamapper.updateQna(qnaBean);
	}
}
