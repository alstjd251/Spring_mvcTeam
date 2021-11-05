package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

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
	@Select("select c_coursename as course_names, c_coursenum as course_num from course_s")
	List<Reservation_s> getCourseIdx();
	
	// 예약 리스트 전체 확인
	@Select("select a.res_paydate, a.res_num, c.mem_name, a.res_startdate, a.res_personnel, b.c_coursename from reservation_s a, course_s b, member_s c where res_mnum = #{mem_num} and b.c_coursenum = a.res_coursenum and a.res_mnum = c.mem_num order by res_paydate desc")
	List<Reservation_s> getAllList(String mem_num);
	// 예약 확인
	@Select("select a.*, b.c_price as 인당가격, b.c_price * a.res_personnel as 총금액 from reservation_s a, course_s b where a.res_num = 00002021110429 and b.c_coursenum = a.res_coursenum")
	List<Reservation_s> getReservationInfo();
	
	

}
