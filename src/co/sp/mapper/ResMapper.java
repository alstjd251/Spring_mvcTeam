package co.sp.mapper;

import org.apache.ibatis.annotations.Insert;

import co.sp.beans.Reservation_s;

public interface ResMapper {

	@Insert("insert into reservation_s values(#{res_num}, sysdate, #{res_startdate}, #{res_personnel}, #{res_mnum}, #{res_coursenum})")
	void addReservation(Reservation_s reservationBean);
}
