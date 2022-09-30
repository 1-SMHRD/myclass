package kr.wdh.dao;

public class MemberVO {
	  private String mem_Id;
	  private String mem_no;
	  
	  private String mem_Pw;
	  private String mem_gender;
	  private String mem_nick;
	  private String mem_birthdate;
	  private String mem_phone;
	  private String mem_service;
	  private String mem_pcy_agmt_yn;
	  private String mem_loc_base_svc_agmt_yn;
	  private String mem_staty_pref_1;
	  private String mem_staty_pref_2;
	  private String mem_staty_pref_3;
	  private String mem_place_pref_1;
	  private String mem_place_pref_2;
	  private String mem_joindate;
	  private String mem_type;
	public String getMem_Id() {
		return mem_Id;
	}
	public void setMem_Id(String mem_Id) {
		this.mem_Id = mem_Id;
	}
	public String getMem_Pw() {
		return mem_Pw;
	}
	public void setMem_Pw(String mem_Pw) {
		this.mem_Pw = mem_Pw;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	public String getMem_birthdate() {
		return mem_birthdate;
	}
	public void setMem_birthdate(String mem_birthdate) {
		this.mem_birthdate = mem_birthdate;
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
	public String getMem_pcy_agmt_yn() {
		return mem_pcy_agmt_yn;
	}
	public void setMem_pcy_agmt_yn(String mem_pcy_agmt_yn) {
		this.mem_pcy_agmt_yn = mem_pcy_agmt_yn;
	}
	public String getMem_loc_base_svc_agmt_yn() {
		return mem_loc_base_svc_agmt_yn;
	}
	public void setMem_loc_base_svc_agmt_yn(String mem_loc_base_svc_agmt_yn) {
		this.mem_loc_base_svc_agmt_yn = mem_loc_base_svc_agmt_yn;
	}
	public String getMem_staty_pref_1() {
		return mem_staty_pref_1;
	}
	public void setMem_staty_pref_1(String mem_staty_pref_1) {
		this.mem_staty_pref_1 = mem_staty_pref_1;
	}
	public String getMem_staty_pref_2() {
		return mem_staty_pref_2;
	}
	public void setMem_staty_pref_2(String mem_staty_pref_2) {
		this.mem_staty_pref_2 = mem_staty_pref_2;
	}
	public String getMem_staty_pref_3() {
		return mem_staty_pref_3;
	}
	public void setMem_staty_pref_3(String mem_staty_pref_3) {
		this.mem_staty_pref_3 = mem_staty_pref_3;
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
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	@Override
	public String toString() {
		return "MemberVO [mem_Id=" + mem_Id + ", mem_Pw=" + mem_Pw + ", mem_gender=" + mem_gender + ", mem_nick="
				+ mem_nick + ", mem_birthdate=" + mem_birthdate + ", mem_phone=" + mem_phone + ", mem_service="
				+ mem_service + ", mem_pcy_agmt_yn=" + mem_pcy_agmt_yn + ", mem_loc_base_svc_agmt_yn="
				+ mem_loc_base_svc_agmt_yn + ", mem_staty_pref_1=" + mem_staty_pref_1 + ", mem_staty_pref_2="
				+ mem_staty_pref_2 + ", mem_staty_pref_3=" + mem_staty_pref_3 + ", mem_place_pref_1=" + mem_place_pref_1
				+ ", mem_place_pref_2=" + mem_place_pref_2 + ", mem_joindate=" + mem_joindate + ", mem_type=" + mem_type
				+ "]";
	}
	public MemberVO(String mem_Id, String mem_Pw, String mem_gender, String mem_nick, String mem_birthdate,
			String mem_phone, String mem_service, String mem_pcy_agmt_yn, String mem_loc_base_svc_agmt_yn,
			String mem_staty_pref_1, String mem_staty_pref_2, String mem_staty_pref_3, String mem_place_pref_1,
			String mem_place_pref_2, String mem_joindate, String mem_type) {
		super();
		this.mem_Id = mem_Id;
		this.mem_Pw = mem_Pw;
		this.mem_gender = mem_gender;
		this.mem_nick = mem_nick;
		this.mem_birthdate = mem_birthdate;
		this.mem_phone = mem_phone;
		this.mem_service = mem_service;
		this.mem_pcy_agmt_yn = mem_pcy_agmt_yn;
		this.mem_loc_base_svc_agmt_yn = mem_loc_base_svc_agmt_yn;
		this.mem_staty_pref_1 = mem_staty_pref_1;
		this.mem_staty_pref_2 = mem_staty_pref_2;
		this.mem_staty_pref_3 = mem_staty_pref_3;
		this.mem_place_pref_1 = mem_place_pref_1;
		this.mem_place_pref_2 = mem_place_pref_2;
		this.mem_joindate = mem_joindate;
		this.mem_type = mem_type;
	}
	  public MemberVO() {}
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
}