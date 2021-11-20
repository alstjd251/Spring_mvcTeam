package co.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.BoardPage;
import co.sp.beans.Reservation_s;
import co.sp.dao.ReservationDao;

@Service
public class ResService {

	@Autowired
	private ReservationDao resDao;

	public void addReservation(Reservation_s reservationBean) {
		resDao.addReservation(reservationBean);
	}

	public String getRes_seqval() {
		String res_numval = resDao.getRes_seqval();
		return res_numval;
	}

	public List<Reservation_s> getCourseIdx() {
		
		return resDao.getCourseIdx();
	}
	
	public List<Reservation_s> getMemReservation(int mem_num){

		return resDao.getMemReservation(mem_num);
	}

	public List<Reservation_s> allReservation(BoardPage bp){
		return resDao.allReservation(bp);
	}
	
	public int resCount(BoardPage bp) {
		return resDao.resCount(bp);
	}
}
