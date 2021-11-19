package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import co.sp.beans.BoardPage;
import co.sp.beans.Reservation_s;

public interface ResMapper {

	// 예약 등록
	@SelectKey(statement = "select mem_num from member_s where mem_num = #{loginNum}", keyProperty = "res_mnum", resultType = Integer.class, before = true)
	@Insert("insert into reservation_s values(#{res_num}, sysdate, #{res_startdate}, #{res_personnel}, #{res_mnum}, #{res_coursenum})")
	void addReservation(Reservation_s reservationBean);
	
	// 시퀀스 작동 후 값 가져오기
	@Select("SELECT res_num_seq.NEXTVAL FROM DUAL")
	String getRes_seqval();
	
	// 코스 이름 추출
	@Select("select c_price as course_price, c_coursename as course_names, c_coursenum as course_num from course_s")
	List<Reservation_s> getCourseIdx();
	
	// 예약 리스트 확인
	@Select("select A.*,B.c_coursename as course_names, B.c_price as course_price, C.mem_name as loginName, C.mem_phone as loginPhone from reservation_s A, course_s B, member_s C where res_mnum = #{mem_num} and B.c_coursenum = A.res_coursenum and A.res_mnum = C.mem_num order by res_paydate")
	List<Reservation_s> getMemReservation(int mem_num);
	
	// 예약 확인
	@Select("select A.*,B.c_coursename, B.c_price, C.mem_name, C.mem_phone from reservation_s A, course_s B, member_s C where B.c_coursenum = A.res_coursenum and A.res_mnum = C.mem_num")
	List<Reservation_s> getallReservation();
	
	@Select("select * from (select ROWNUM RN, A.* from (select * from reservation_s where res_num like '%'||#{keyword, jdbcType=VARCHAR}||'%' order by res_num) A) where RN between #{start} and #{end}")
	List<Reservation_s> allReservation(BoardPage bp);
	
	@Select("select count(*) from reservation_s where res_num like '%'||#{keyword, jdbcType=VARCHAR}||'%'")
	int resCount(BoardPage bp);
}
