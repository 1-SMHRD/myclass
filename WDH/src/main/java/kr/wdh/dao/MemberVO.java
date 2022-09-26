package kr.wdh.dao;

public class MemberVO {
	private int mem_no;
	private String mem_id;
	private String mem_pw;
	private String mem_nick;
	private String mem_phone;
	private String mem_service;
	private String mem_pcy_agmt;
	private String mem_loc_base;
	private String mem_stay_pref_1;
	private String mem_stay_pref_2;
	private String mem_stay_pref_3;
	private String mem_place_pref_1;
	private String mem_place_pref_2;
	private String mem_joindate;
	
	@Override
	public String toString() {
		return "MemberVO [mem_no=" + mem_no + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_nick=" + mem_nick
				+ ", mem_phone=" + mem_phone + ", mem_service=" + mem_service + ", mem_pcy_agmt=" + mem_pcy_agmt
				+ ", mem_loc_base=" + mem_loc_base + ", mem_stay_pref_1=" + mem_stay_pref_1 + ", mem_stay_pref_2="
				+ mem_stay_pref_2 + ", mem_stay_pref_3=" + mem_stay_pref_3 + ", mem_place_pref_1=" + mem_place_pref_1
				+ ", mem_place_pref_2=" + mem_place_pref_2 + ", mem_joindate=" + mem_joindate + "]";
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
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

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_service() {
		return mem_service;
	}

	public void setMem_service(String mem_service) {
		this.mem_service = mem_service;
	}

	public String getMem_pcy_agmt() {
		return mem_pcy_agmt;
	}

	public void setMem_pcy_agmt(String mem_pcy_agmt) {
		this.mem_pcy_agmt = mem_pcy_agmt;
	}

	public String getMem_loc_base() {
		return mem_loc_base;
	}

	public void setMem_loc_base(String mem_loc_base) {
		this.mem_loc_base = mem_loc_base;
	}

	public String getMem_stay_pref_1() {
		return mem_stay_pref_1;
	}

	public void setMem_stay_pref_1(String mem_stay_pref_1) {
		this.mem_stay_pref_1 = mem_stay_pref_1;
	}

	public String getMem_stay_pref_2() {
		return mem_stay_pref_2;
	}

	public void setMem_stay_pref_2(String mem_stay_pref_2) {
		this.mem_stay_pref_2 = mem_stay_pref_2;
	}

	public String getMem_stay_pref_3() {
		return mem_stay_pref_3;
	}

	public void setMem_stay_pref_3(String mem_stay_pref_3) {
		this.mem_stay_pref_3 = mem_stay_pref_3;
	}

	public String getMem_place_pref_1() {
		return mem_place_pref_1;
	}

	public void setMem_place_pref_1(String mem_place_pref_1) {
		this.mem_place_pref_1 = mem_place_pref_1;
	}

	public String getMem_place_pref_2() {
		return mem_place_pref_2;
	}

	public void setMem_place_pref_2(String mem_place_pref_2) {
		this.mem_place_pref_2 = mem_place_pref_2;
	}

	public String getMem_joindate() {
		return mem_joindate;
	}

	public void setMem_joindate(String mem_joindate) {
		this.mem_joindate = mem_joindate;
	}

	
	public MemberVO(int mem_no, String mem_id, String mem_pw, String mem_nick, String mem_phone, String mem_service,
			String mem_pcy_agmt, String mem_loc_base, String mem_stay_pref_1, String mem_stay_pref_2,
			String mem_stay_pref_3, String mem_place_pref_1, String mem_place_pref_2, String mem_joindate) {
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_phone = mem_phone;
		this.mem_service = mem_service;
		this.mem_pcy_agmt = mem_pcy_agmt;
		this.mem_loc_base = mem_loc_base;
		this.mem_stay_pref_1 = mem_stay_pref_1;
		this.mem_stay_pref_2 = mem_stay_pref_2;
		this.mem_stay_pref_3 = mem_stay_pref_3;
		this.mem_place_pref_1 = mem_place_pref_1;
		this.mem_place_pref_2 = mem_place_pref_2;
		this.mem_joindate = mem_joindate;
	}
	
}
