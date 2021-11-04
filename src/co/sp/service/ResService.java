package co.sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.beans.Reservation_s;
import co.sp.dao.ReservationDao;

@Service
public class ResService {

	@Autowired
	private ReservationDao resdao;

	public void addReservation(Reservation_s reservationBean) {
		resdao.addReservation(reservationBean);
	}

	public String getRes_seqval() {
		String res_numval = resdao.getRes_seqval();
		return res_numval;
	}
}
