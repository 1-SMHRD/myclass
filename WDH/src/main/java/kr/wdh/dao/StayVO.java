package kr.wdh.dao;

public class StayVO {
	private String stay_id;
	private String title;
	private String stay_addr1;
	private String latitude;
	private String longitude;
	private String stay_img;
	private String temp;
	private String areacode;
	private String cat1;
	private String cat2;
	private String cat3;
	private String checkintime;
	private String checkouttime;
	private String parkinglodging;
	private String roombasecount;
	private String roommaxcount;
	private String ROOMOFFSEASONMINFEE1;
	private String ROOMPEAKSEASONMINFEE1;
	public StayVO(String stay_id, String title, String stay_addr1, String latitude, String longitude, String stay_img,
			String temp, String areacode, String cat1, String cat2, String cat3, String checkintime,
			String checkouttime, String parkinglodging, String roombasecount, String roommaxcount,
			String rOOMOFFSEASONMINFEE1, String rOOMPEAKSEASONMINFEE1) {
		super();
		this.stay_id = stay_id;
		this.title = title;
		this.stay_addr1 = stay_addr1;
		this.latitude = latitude;
		this.longitude = longitude;
		this.stay_img = stay_img;
		this.temp = temp;
		this.areacode = areacode;
		this.cat1 = cat1;
		this.cat2 = cat2;
		this.cat3 = cat3;
		this.checkintime = checkintime;
		this.checkouttime = checkouttime;
		this.parkinglodging = parkinglodging;
		this.roombasecount = roombasecount;
		this.roommaxcount = roommaxcount;
		ROOMOFFSEASONMINFEE1 = rOOMOFFSEASONMINFEE1;
		ROOMPEAKSEASONMINFEE1 = rOOMPEAKSEASONMINFEE1;
	}
	public StayVO() {
		// TODO Auto-generated constructor stub
	}
	public String getStay_id() {
		return stay_id;
	}
	public void setStay_id(String stay_id) {
		this.stay_id = stay_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStay_addr1() {
		return stay_addr1;
	}
	public void setStay_addr1(String stay_addr1) {
		this.stay_addr1 = stay_addr1;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getStay_img() {
		return stay_img;
	}
	public void setStay_img(String stay_img) {
		this.stay_img = stay_img;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public String getCat1() {
		return cat1;
	}
	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}
	public String getCat2() {
		return cat2;
	}
	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}
	public String getCat3() {
		return cat3;
	}
	public void setCat3(String cat3) {
		this.cat3 = cat3;
	}
	public String getCheckintime() {
		return checkintime;
	}
	public void setCheckintime(String checkintime) {
		this.checkintime = checkintime;
	}
	public String getCheckouttime() {
		return checkouttime;
	}
	public void setCheckouttime(String checkouttime) {
		this.checkouttime = checkouttime;
	}
	public String getParkinglodging() {
		return parkinglodging;
	}
	public void setParkinglodging(String parkinglodging) {
		this.parkinglodging = parkinglodging;
	}
	public String getRoombasecount() {
		return roombasecount;
	}
	public void setRoombasecount(String roombasecount) {
		this.roombasecount = roombasecount;
	}
	public String getRoommaxcount() {
		return roommaxcount;
	}
	public void setRoommaxcount(String roommaxcount) {
		this.roommaxcount = roommaxcount;
	}
	public String getROOMOFFSEASONMINFEE1() {
		return ROOMOFFSEASONMINFEE1;
	}
	public void setROOMOFFSEASONMINFEE1(String rOOMOFFSEASONMINFEE1) {
		ROOMOFFSEASONMINFEE1 = rOOMOFFSEASONMINFEE1;
	}
	public String getROOMPEAKSEASONMINFEE1() {
		return ROOMPEAKSEASONMINFEE1;
	}
	public void setROOMPEAKSEASONMINFEE1(String rOOMPEAKSEASONMINFEE1) {
		ROOMPEAKSEASONMINFEE1 = rOOMPEAKSEASONMINFEE1;
	}
	@Override
	public String toString() {
		return "StayVO [stay_id=" + stay_id + ", title=" + title + ", stay_addr1=" + stay_addr1 + ", latitude="
				+ latitude + ", longitude=" + longitude + ", stay_img=" + stay_img + ", temp=" + temp + ", areacode="
				+ areacode + ", cat1=" + cat1 + ", cat2=" + cat2 + ", cat3=" + cat3 + ", checkintime=" + checkintime
				+ ", checkouttime=" + checkouttime + ", parkinglodging=" + parkinglodging + ", roombasecount="
				+ roombasecount + ", roommaxcount=" + roommaxcount + ", ROOMOFFSEASONMINFEE1=" + ROOMOFFSEASONMINFEE1
				+ ", ROOMPEAKSEASONMINFEE1=" + ROOMPEAKSEASONMINFEE1 + "]";
	}
	
	
	
	
	
	}
