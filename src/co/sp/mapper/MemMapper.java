package co.sp.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import co.sp.beans.Member_s;

public interface MemMapper {

	// 회원가입
	@Insert("insert into member_s values(mem_num_seq.NEXTVAL, #{mem_id}, #{mem_pw}, #{mem_name}, #{mem_joomin}, #{mem_gender}, #{mem_phone}, #{mem_mail}, sysdate, #{mem_post}, #{mem_addr1}, #{mem_addr2}, 1)")
	void addMember(Member_s memberBean); 
	
	// 로그인 확인
	@Select("select mem_num, mem_name from member_s where mem_id=#{mem_id} and mem_pw=#{mem_pw}")
	Member_s getLoginMemberInfo(Member_s tempLoginMemberBean);
	
	// 아이디 찾기
	@Select("select mem_id from MEMBER_S where mem_joomin = #{mem_joomin} and mem_name = #{mem_name}")
	Member_s getFindId(Member_s memberBean);
	
}
