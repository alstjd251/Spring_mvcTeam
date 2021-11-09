package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.Notice_s;

public interface NoticeMapper {
	@Insert("insert into notice_s values(n_noticenum_seq.NEXTVAL, #{n_noticetitle}, #{n_noticecontent}, sysdate, #{n_noticecnt}, #{n_mnum})")
	void addNotice(Notice_s noticeBean);
	
	@Delete("delete from notice_s where n_mnum LIKE #{n_mnum}")
	void deleteNotice(Notice_s noticeBean);
	
	@Select("select n.*, m.mem_name, m.mem_grade from notice_s n, member_s m where m.mem_num = n_mnum")
	List<Notice_s> getNotice(Notice_s noticeBean);
	
	@Update("update notice_s set n_noticetitle = #{n_noticetitle}, n_noticecontent = #{n_noticecontent} where n_mnum LIKE #{n_mnum}")
	void updateNotice(Notice_s noticeBean);
	
	@Select("select count(*) from notice_s")
	int getNoticeCnt();
}