package co.sp.beans;

public class Qna_s {
//	q_qnanum number
//	q_qnatitle varchar2(50)
//	q_qnacontent varchar2(4000)
//	q_qnadate date
//	q_qnacnt number
//	q_mnum number

	private int q_qnanum;
	private String q_qnatitle;
	private String q_qnacontent;
	private String q_qnadate;
	private int q_mnum;
	
	private String mem_name;
	private String mem_mail;
	
	private int RN;

	public int getQ_qnanum() {
		return q_qnanum;
	}

	public void setQ_qnanum(int q_qnanum) {
		this.q_qnanum = q_qnanum;
	}

	public String getQ_qnatitle() {
		return q_qnatitle;
	}

	public void setQ_qnatitle(String q_qnatitle) {
		this.q_qnatitle = q_qnatitle;
	}

	public String getQ_qnacontent() {
		return q_qnacontent;
	}

	public void setQ_qnacontent(String q_qnacontent) {
		this.q_qnacontent = q_qnacontent;
	}

	public String getQ_qnadate() {
		return q_qnadate;
	}

	public void setQ_qnadate(String q_qnadate) {
		this.q_qnadate = q_qnadate;
	}

	public int getQ_mnum() {
		return q_mnum;
	}

	public void setQ_mnum(int q_mnum) {
		this.q_mnum = q_mnum;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public int getRN() {
		return RN;
	}

	public void setRN(int rN) {
		RN = rN;
	}
}
