package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.BoardPage;
import co.sp.beans.Notice_s;
import co.sp.beans.Partners_s;

public interface PartnerMapper {
	@Insert("insert into partners_s values(#{partners_code}, #{partners_name}, #{partners_tel}, #{partners_mail})")
	void addPartner(Notice_s noticeBean);
	
	@Delete("delete from partners_s where partners_code = #{partners_code}")
	void deletePartner(Notice_s noticeBean);
	
	@Update("update partners_s set partners_tel = #{partners_tel}, partners_mail = #{partners_mail} where partners_code = #{partners_code}")
	void updatePartner(Notice_s noticeBean);
	
	@Select("select count(*) from partners_s where partners_name like '%'||#{keyword, jdbcType=VARCHAR}||'%'")
	int partnerCount(BoardPage bp);
	
	@Select("select * from (select ROWNUM RN, A.* from (select * from partners_s where partners_name like '%'||#{keyword, jdbcType=VARCHAR}||'%' order by partners_code) A) where RN between #{start} and #{end}")
	List<Partners_s> allPartner(BoardPage bp);
}
