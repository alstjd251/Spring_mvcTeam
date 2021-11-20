package co.sp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.BoardPage;
import co.sp.beans.Qna_s;
import co.sp.mapper.QnaMapper;

@Repository
public class QnaDao {
	@Autowired
	private QnaMapper qnamapper;
	
	public void addQna(Qna_s qnaBean) {
		qnamapper.addQna(qnaBean);
	}
	
	public void deleteQna(Qna_s qnaBean) {
		qnamapper.deleteQna(qnaBean);
	}
	
	public void getQna(Qna_s qnaBean) {
		qnamapper.getQna(qnaBean);
	}
	
	public void updateQna(Qna_s qnaBean) {
		qnamapper.updateQna(qnaBean);
	}
	
	public List<Qna_s> allQna(BoardPage bp){
		return qnamapper.allQna(bp);
	}
	
	public int qnaCount(BoardPage bp) {
		return qnamapper.qnaCount(bp);
	}
}
