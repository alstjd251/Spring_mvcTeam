package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.BoardPage;
import co.sp.beans.Member_s;

public interface MemMapper {

	// 회원가입
	@Insert("insert into member_s values(mem_num_seq.NEXTVAL, #{mem_id}, #{mem_pw}, #{mem_name}, #{mem_joomin}, #{mem_gender}, #{mem_phone}, #{mem_mail}, sysdate, #{mem_post}, #{mem_addr1}, #{mem_addr2}, 1)")
	void addMember(Member_s memberBean); 
	
	// 로그인 확인
	@Select("select * from member_s where mem_id=#{mem_id} and mem_pw=#{mem_pw}")
	Member_s getLoginMemberInfo(Member_s tempLoginMemberBean);
	
	// 아이디 찾기
	@Select("select mem_id from MEMBER_S where mem_mail = #{mem_mail} and mem_name = #{mem_name}")
	String getFindId(Member_s memberBean);
	
	// 아이디 중복확인
	@Select("select mem_id from member_s where mem_id=#{mem_id}")
	String idCheck(String mem_id);
	
	// 비밀번호 찾기
	@Select("select mem_pw from member_s where mem_id = #{mem_id} and mem_name = #{mem_name} and mem_mail = #{mem_mail}")
	String getFindPw(Member_s memberBean);
	
	// 회원 정보 가져오기
	@Select("select * from member_s where mem_num = #{mem_num}")
	Member_s getMemberInfo(int mem_num);
	
	// 회원 정보 수정
	@Update("update member_s set mem_pw = #{mem_pw}, mem_mail = #{mem_mail}, mem_phone = #{mem_phone}, mem_post = #{mem_post}, mem_addr1 = #{mem_addr1}, mem_addr2 = #{mem_addr2} where mem_num = #{mem_num}")
	void memberUpdate(Member_s memberBean);
	
	// 회원 전체 리스트
	@Select("select * from (select ROWNUM RN, A.* from (select * from member_s where mem_name like '%'||#{keyword, jdbcType=VARCHAR}||'%' order by mem_num) A) where RN between #{start} and #{end}")
	List<Member_s> allMember(BoardPage bp);
	
	// 회원 전체 수
	@Select("select count(*) from member_s where mem_name like '%'||#{keyword, jdbcType=VARCHAR}||'%'")
	int memCount(BoardPage bp);
	
	// 비밀번호 변경
	@Update("update member_s set mem_pw = #{mem_pw} where mem_num = #{mem_num}")
	void memPwChange(Member_s memberBean);
}
