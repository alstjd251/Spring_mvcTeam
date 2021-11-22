package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.BoardPage;
import co.sp.beans.Qna_s;

public interface QnaMapper {
	@Insert("insert into qna_s values(q_qnanum_seq.NEXTVAL, #{q_qnatitle}, #{q_qnacontent}, sysdate, #{q_mnum})")
	void addQna(Qna_s qnaBean);
	
	@Delete("delete from qna_s where q_qnanum LIKE #{q_qnanum}")
	void deleteQna(Qna_s qnaBean);
	
	@Select("select q.*, m.mem_name, m.mem_mail from qna_s q, member_s m where q.q_qnanum = #{q_qnanum} and m.mem_num = #{q_mnum}")
	Qna_s getQna(Qna_s qnaBean);
	
	@Update("update qna_s set q_qnatitle = #{q_qnatitle}, q_qnacontent = #{q_qnacontent} where q_mnum LIKE #{q_mnum}")
	void updateQna(Qna_s qnaBean);
	
	@Select("select * from (select ROWNUM RN, A.* from (select Q.*, M.mem_name, M.mem_mail from qna_s Q, member_s M where q_qnatitle like '%'||#{keyword, jdbcType=VARCHAR}||'%' and Q.q_mnum = M.mem_num order by q_qnanum) A) where RN between #{start} and #{end}")
	List<Qna_s> allQna(BoardPage bp);
	
	@Select("select count(*) from qna_s where q_qnatitle like '%'||#{keyword, jdbcType=VARCHAR}||'%'")
	int qnaCount(BoardPage bp);
	
}