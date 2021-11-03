package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.sp.mapper.ResMapper;

@Repository
public class ReservationDao {
	
	@Autowired
	private ResMapper resmapper;

}
