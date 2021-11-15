package co.sp.beans;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Member_s {

//	mem_num number primary key,
//	mem_id varchar2(20),
//	mem_pw varchar2(20),
//	mem_name varchar2(30),
//	mem_joomin char(6),
//	mem_gender char(1),
//	mem_phone varchar2(11),
//	mem_mail varchar2(50),
//	mem_date date,
//	mem_post char(5),
//	mem_addr1 varchar2(50),
//	mem_addr2 varchar2(50),
//	mem_grade varchar2(20));
	
	private int mem_num;
	
	@Size(min = 5, max = 20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	@NotBlank
	private String mem_id;
	
	@Size(min = 8, max = 20)
	@Pattern(regexp = "[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]*")
	@NotBlank
	private String mem_pw;
	
	@Size(min = 2, max = 10)
	@Pattern(regexp = "[°¡-ÆR]*")
	@NotBlank
	private String mem_name;
	
	@Pattern(regexp = "[0-9]*")
	@NotBlank
	private String mem_joomin;
	
	@Pattern(regexp = "[0-9]*")
	@NotBlank
	private String mem_gender;
	
	@Pattern(regexp = "[0-9]*")
	@NotBlank
	private String mem_phone;
	
	@Email
	@NotBlank
	private String mem_mail;
	
	private String mem_date;
	
	@Pattern(regexp = "[0-9]*")
	@NotBlank
	private String mem_post;
	
	@NotBlank
	private String mem_addr1;
	
	@NotBlank
	private String mem_addr2;

	private String mem_grade;

	private boolean idExist = false;
	private boolean memLogin = false;

//	public Member_s() {
//		this.idExist = false;
//		this.memLogin = false;
//	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_joomin() {
		return mem_joomin;
	}

	public void setMem_joomin(String mem_joomin) {
		this.mem_joomin = mem_joomin;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getMem_date() {
		return mem_date;
	}

	public void setMem_date(String mem_date) {
		this.mem_date = mem_date;
	}

	public String getMem_post() {
		return mem_post;
	}

	public void setMem_post(String mem_post) {
		this.mem_post = mem_post;
	}

	public String getMem_addr1() {
		return mem_addr1;
	}

	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}

	public String getMem_addr2() {
		return mem_addr2;
	}

	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}

	public String getMem_grade() {
		return mem_grade;
	}

	public void setMem_grade(String mem_grade) {
		this.mem_grade = mem_grade;
	}

	public boolean isIdExist() {
		return idExist;
	}

	public void setIdExist(boolean idExist) {
		this.idExist = idExist;
	}

	public boolean isMemLogin() {
		return memLogin;
	}

	public void setMemLogin(boolean memLogin) {
		this.memLogin = memLogin;
	}

}
