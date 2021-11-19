package co.sp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.Reservation_s;
import co.sp.mapper.ResMapper;

@Repository
public class ReservationDao {

	@Autowired
	private ResMapper resMapper;

	public void addReservation(Reservation_s reservationBean) {
		resMapper.addReservation(reservationBean);
	}

	public String getRes_seqval() {
		String res_numval = resMapper.getRes_seqval();
		return res_numval;
	}

	public List<Reservation_s> getCourseIdx() {
		return resMapper.getCourseIdx();
	}
	
	public List<Reservation_s> getMemReservation(int mem_num) {
		System.out.println(mem_num);
		return resMapper.getMemReservation(mem_num);
	}

}
