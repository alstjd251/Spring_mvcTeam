package co.sp.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.Qna_s;

public interface QnaMapper {
	@Insert("insert into qna_s values(q_qnanum_seq.NEXTVAL, #{q_qnatitle}, #{q_qnacontent}, sysdate, #{q_qnacnt}, #{q_mnum})")
	void addNotice(Qna_s qnaBean);
	
	@Delete("delete from qna_s where n_mnum LIKE #{n_mnum}")
	void deleteNotice(Qna_s qnaBean);
	
	@Select("select q.*, m.mem_name, m.mem_grade from qna_s q, member_s m where m.mem_num LIKE #{q.q_mnum}")
	void getNotice(Qna_s qnaBean);
	
	@Update("update qna_s set q_qnatitle = #{q_qnatitle}, q_qnacontent = #{q_qnacontent} where q_mnum LIKE #{q_mnum}")
	void updateNotice(Qna_s qnaBean);
}