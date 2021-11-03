package co.sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sp.dao.ReservationDao;

@Service
public class ResService {

	@Autowired
	private ReservationDao resdao;
}
