package co.sp.beans;

public class Partners_s {
//	partners_code varchar2(10) primary key,
//	partners_name varchar2(30),
//	partners_tel varchar2(11),
//	partners_mail varchar2(50),
//	partners_brewery_name varchar(30),
//	partners_brewery_post varchar(30),
//	partners_brewery_addr1 varchar(30),
//	partners_brewery_addr2 varchar(30));

	private String partners_code;
	private String partners_name;
	private String partners_tel;
	private String partners_mail;
	private String partners_brewery_name;
	private String partners_brewery_post;
	private String partners_brewery_addr1;
	private String partners_brewery_addr2;
	
	private int partners_mnum;
	private int partners_state;
	
	private int RN;

	public String getPartners_code() {
		return partners_code;
	}

	public void setPartners_code(String partners_code) {
		this.partners_code = partners_code;
	}

	public String getPartners_name() {
		return partners_name;
	}

	public void setPartners_name(String partners_name) {
		this.partners_name = partners_name;
	}

	public String getPartners_tel() {
		return partners_tel;
	}

	public void setPartners_tel(String partners_tel) {
		this.partners_tel = partners_tel;
	}

	public String getPartners_mail() {
		return partners_mail;
	}

	public void setPartners_mail(String partners_mail) {
		this.partners_mail = partners_mail;
	}

	public String getPartners_brewery_name() {
		return partners_brewery_name;
	}

	public void setPartners_brewery_name(String partners_brewery_name) {
		this.partners_brewery_name = partners_brewery_name;
	}

	public String getPartners_brewery_post() {
		return partners_brewery_post;
	}

	public void setPartners_brewery_post(String partners_brewery_post) {
		this.partners_brewery_post = partners_brewery_post;
	}

	public String getPartners_brewery_addr1() {
		return partners_brewery_addr1;
	}

	public void setPartners_brewery_addr1(String partners_brewery_addr1) {
		this.partners_brewery_addr1 = partners_brewery_addr1;
	}

	public String getPartners_brewery_addr2() {
		return partners_brewery_addr2;
	}

	public void setPartners_brewery_addr2(String partners_brewery_addr2) {
		this.partners_brewery_addr2 = partners_brewery_addr2;
	}

	public int getPartners_mnum() {
		return partners_mnum;
	}

	public void setPartners_mnum(int partners_mnum) {
		this.partners_mnum = partners_mnum;
	}

	public int getPartners_state() {
		return partners_state;
	}

	public void setPartners_state(int partners_state) {
		this.partners_state = partners_state;
	}

	public int getRN() {
		return RN;
	}

	public void setRN(int rN) {
		RN = rN;
	}
}
