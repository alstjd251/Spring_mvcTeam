package co.sp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.BoardPage;
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
		return resMapper.getMemReservation(mem_num);
	}

	public List<Reservation_s> allReservation(BoardPage bp){
		return resMapper.allReservation(bp);
	}
	
	public int resCount(BoardPage bp) {
		return resMapper.resCount(bp);
	}
	
	public void deleteReservation(Reservation_s resBean) {
		resMapper.deleteReservation(resBean);
	}
	
	public Reservation_s getOneReservation(String res_num) {
		return resMapper.getOneReservation(res_num);
	}
	
	public void deleteMemberReservation(int res_mnum) {
		resMapper.deleteMemberReservation(res_mnum);
	}
}
