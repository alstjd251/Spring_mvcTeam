package co.sp.beans;

public class Location_s {
//	loc_code varchar2(10) primary key
//	loc_name varchar2(20)

	private String loc_code;
	private String loc_name;

	public String getLoc_code() {
		return loc_code;
	}

	public void setLoc_code(String loc_code) {
		this.loc_code = loc_code;
	}

	public String getLoc_name() {
		return loc_name;
	}

	public void setLoc_name(String loc_name) {
		this.loc_name = loc_name;
	}

}
