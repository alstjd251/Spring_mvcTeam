package co.sp.beans;

public class Notice_s {

//	n_noticenum number primary key,
//	n_noticetitle varchar2(50),
//	n_noticecontent varchar2(4000),
//	n_noticedate date,
//	n_noticecnt number,
//	n_nnum number,
	
	private int n_noticenum;
	private String n_noticetitle;
	private String n_noticecontent;
	private String n_noticedate;
	private int n_noticecnt;
	private int n_mnum;
	
	private String mem_name;
	private String mem_grade;

	public int getN_noticenum() {
		return n_noticenum;
	}

	public void setN_noticenum(int n_noticenum) {
		this.n_noticenum = n_noticenum;
	}

	public String getN_noticetitle() {
		return n_noticetitle;
	}

	public void setN_noticetitle(String n_noticetitle) {
		this.n_noticetitle = n_noticetitle;
	}

	public String getN_noticecontent() {
		return n_noticecontent;
	}

	public void setN_noticecontent(String n_noticecontent) {
		this.n_noticecontent = n_noticecontent;
	}

	public String getN_noticedate() {
		return n_noticedate;
	}

	public void setN_noticedate(String n_noticedate) {
		this.n_noticedate = n_noticedate;
	}

	public int getN_noticecnt() {
		return n_noticecnt;
	}

	public void setN_noticecnt(int n_noticecnt) {
		this.n_noticecnt = n_noticecnt;
	}

	public int getN_mnum() {
		return n_mnum;
	}

	public void setN_mnum(int n_nnum) {
		this.n_mnum = n_nnum;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_grade() {
		return mem_grade;
	}

	public void setMem_grade(String mem_grade) {
		this.mem_grade = mem_grade;
	}
}
