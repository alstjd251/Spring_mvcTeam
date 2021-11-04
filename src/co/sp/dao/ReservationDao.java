package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.beans.Reservation_s;
import co.sp.mapper.ResMapper;

@Repository
public class ReservationDao {
	
	@Autowired
	private ResMapper resmapper;

	
	public void addReservation(Reservation_s reservationBean) {
		resmapper.addReservation(reservationBean);
	}
	
	public String getRes_seqval() {
		String res_numval = resmapper.getRes_seqval();
		return res_numval;
	}

}
