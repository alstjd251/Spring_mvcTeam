package co.sp.mapper;

import org.apache.ibatis.annotations.Insert;

import co.sp.beans.s_member;

public interface MapInter {

	@Insert("insert into s_member values(mem_num_seq.NEXTVAL, #{mem_id}, #{mem_pw}, #{mem_name}, #{mem_joomin}, #{mem_gender}, #{phone}, #{mem_mail}, sysdate, #{mem_post}, #{mem_addr1}, #{mem_addr2}, 1)")
	void addMember(s_member member); 
	
}
