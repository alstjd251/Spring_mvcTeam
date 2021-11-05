package co.sp.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import co.sp.beans.Brewery_s;

public interface BreweryMapper {
	@Insert("insert into brewery_s values(#{brew_code}, #{brew_name}, #{brew_loc}, #{brew_tel}, #{brew_pcode})")
	void addBrewery(Brewery_s breweryBean);
	
	@Delete("delete from brewery_s where brew_code LIKE #{brew_code}")
	void deleteBrewery(Brewery_s breweryBean);
	
	@Select("select b.*, p.partners_name, p.partners_tel, p.partners_mail from brewery_s b, partners_s p where b.brew_pcode LIKE p.partners_code")
	void getBrewery(Brewery_s breweryBean);
	
	@Update("update brewery_s set brew_name = #{brew_name}, brew_loc = #{brew_loc}, brew_tel = #{brew_tel} where brew_code LIKE #{brew_code}")
	void updateBrewery(Brewery_s breweryBean);
}
