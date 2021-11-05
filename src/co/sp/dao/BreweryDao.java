package co.sp.dao;

import org.springframework.beans.factory.annotation.Autowired;

import co.sp.beans.Brewery_s;
import co.sp.mapper.BreweryMapper;

public class BreweryDao {
	@Autowired
	private BreweryMapper brewerymapper;
	
	public void addNotice(Brewery_s breweryBean) {
		brewerymapper.addBrewery(breweryBean);
	}
	
	public void deleteNotice(Brewery_s breweryBean) {
		brewerymapper.deleteBrewery(breweryBean);
	}
	
	public void getNotice(Brewery_s breweryBean) {
		brewerymapper.getBrewery(breweryBean);
	}
	
	public void updateNotice(Brewery_s breweryBean) {
		brewerymapper.updateBrewery(breweryBean);
	}
}
