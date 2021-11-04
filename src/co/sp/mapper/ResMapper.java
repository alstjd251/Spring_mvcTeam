package co.sp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import co.sp.beans.Reservation_s;

public interface ResMapper {

	@SelectKey(statement = "select mem_num from member_s where mem_num = #{loginNum}", keyProperty = "res_mnum", resultType = Integer.class, before = true)
	@Insert("insert into reservation_s values(#{res_num}, sysdate, #{res_startdate}, #{res_personnel}, #{res_mnum}, 1)")
	void addReservation(Reservation_s reservationBean);
	
	@Select("SELECT res_num_seq.NEXTVAL FROM DUAL")
	String getRes_seqval();
	
	@Select("select c_coursename as course_names, c_coursenum as course_num from course_s")
	List<Reservation_s> getCourseIdx();
	
}
