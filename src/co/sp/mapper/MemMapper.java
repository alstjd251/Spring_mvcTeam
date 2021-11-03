package co.sp.mapper;

import org.apache.ibatis.annotations.Insert;

import co.sp.beans.Member_s;

public interface MemMapper {

	@Insert("insert into s_member values(mem_num_seq.NEXTVAL, #{mem_id}, #{mem_pw}, #{mem_name}, #{mem_joomin}, #{mem_gender}, #{mem_phone}, #{mem_mail}, sysdate, #{mem_post}, #{mem_addr1}, #{mem_addr2}, 1)")
	void addMember(Member_s member); 
	
}
