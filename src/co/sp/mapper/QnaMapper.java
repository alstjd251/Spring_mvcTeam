package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.BoardPage;
import co.sp.beans.Qna_s;

public interface QnaMapper {
	@Insert("insert into qna_s values(q_qnanum_seq.NEXTVAL, #{q_qnatitle}, #{q_qnacontent}, sysdate, 0, #{q_mnum})")
	void addQna(Qna_s qnaBean);
	
	@Delete("delete from qna_s where n_mnum LIKE #{n_mnum}")
	void deleteQna(Qna_s qnaBean);
	
	@Select("select q.*, m.mem_name, m.mem_grade from qna_s q, member_s m where m.mem_num LIKE #{q.q_mnum}")
	void getQna(Qna_s qnaBean);
	
	@Update("update qna_s set q_qnatitle = #{q_qnatitle}, q_qnacontent = #{q_qnacontent} where q_mnum LIKE #{q_mnum}")
	void updateQna(Qna_s qnaBean);
	
	@Select("select * from (select ROWNUM RN, A.* from (select * from qna_s where q_qnatitle like '%'||#{keyword, jdbcType=VARCHAR}||'%' order by q_qnanum) A) where RN between #{start} and #{end}")
	List<Qna_s> allQna(BoardPage bp);
	
	@Select("select count(*) from qna_s where q_qnatitle like '%'||#{keyword, jdbcType=VARCHAR}||'%'")
	int qnaCount(BoardPage bp);
}