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
	@Insert("insert into partners_s values(#{partners_code}, #{partners_name}, #{partners_tel}, #{partners_mail}, #{partners_brewery_name}, #{partners_brewery_post}, #{partners_brewery_addr1}, #{partners_brewery_addr2}, #{partners_mnum}, 0)")
	void addPartner(Partners_s partnerBean);
	
	@Delete("delete from partners_s where partners_code = #{partners_code}")
	void deletePartner(Partners_s partnerBean);
	
	@Update("update partners_s set partners_tel = #{partners_tel}, partners_mail = #{partners_mail}, partners_name = #{partners_name}, partners_brewery_name = #{partners_brewery_name} partners_brewery_post = #{partners_brewery_post}, partners_brewery_addr1 = #{partners_brewery_addr1}, partners_brewery_addr2 = #{partners_brewery_addr2} where partners_code = #{partners_code}")
	void updatePartner(Partners_s partnerBean);
	
	@Select("select count(*) from partners_s where partners_name like '%'||#{keyword, jdbcType=VARCHAR}||'%'")
	int partnerCount(BoardPage bp);
	
	@Select("select * from (select ROWNUM RN, A.* from (select * from partners_s where partners_brewery_name like '%'||#{keyword, jdbcType=VARCHAR}||'%' order by partners_code) A) where RN between #{start} and #{end}")
	List<Partners_s> allPartner(BoardPage bp);
	
	@Select("select * from partners_s where partners_code = #{partners_code}")
	Partners_s getPartner(String partners_code);
	
	@Update("update partners_s set partners_state = 1 where partners_code = #{partners_code}")
	void acceptPartner(Partners_s partnerBean);
	
	@Select("select partners_code from partners_s where partners_code = #{partners_code}")
	String getPcodeCheck(String partners_code);
	
	@Update("update member_s set mem_grade = 2 where mem_num = #{partners_mnum}")
	void partnersSetGrade(int partners_mnum);
	
	@Delete("delete from partners_s where partners_mnum = #{partners_mnum}")
	void deletePartnerMember(Partners_s partnerBean);
}
