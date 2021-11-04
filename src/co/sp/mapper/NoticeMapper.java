package co.sp.mapper;

import org.apache.ibatis.annotations.Insert;

import co.sp.beans.Notice_s;

public interface NoticeMapper {
	@Insert("insert into notice_s values(n_noticenum_seq.NEXTVAL, #{n_noticetitle}, #{n_noticecontent}, sysdate, #{n_noticecnt}, #{n_mnum})")
	void addNotice(Notice_s noticeBean);

}