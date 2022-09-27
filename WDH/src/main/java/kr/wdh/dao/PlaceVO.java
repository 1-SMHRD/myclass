package kr.wdh.dao;

public class PlaceVO {

	private String place_no;
	private String place_name;
	private String place_type;
	private String place_theme_1;
	private String place_theme_2;
	private String place_theme_3;
	private String latitude;
	private String longitude;
	private String place_addr_1;
	private String place_addr_2;
	private String place_addr_3;
	private String place_img1;
	private String place_img2;
	private String place_img3;
	private String place_overview;
	private String otherinformation;
	private String place_rating_avg;
	private String place_date;

	public PlaceVO(String place_no, String place_name, String place_type, String place_theme_1, String place_theme_2,
			String place_theme_3, String latitude, String longitude, String place_addr_1, String place_addr_2,
			String place_addr_3, String place_img1, String place_img2, String place_img3, String place_overview,
			String otherinformation, String place_rating_avg, String place_date) {
		this.place_no = place_no;
		this.place_name = place_name;
		this.place_type = place_type;
		this.place_theme_1 = place_theme_1;
		this.place_theme_2 = place_theme_2;
		this.place_theme_3 = place_theme_3;
		this.latitude = latitude;
		this.longitude = longitude;
		this.place_addr_1 = place_addr_1;
		this.place_addr_2 = place_addr_2;
		this.place_addr_3 = place_addr_3;
		this.place_img1 = place_img1;
		this.place_img2 = place_img2;
		this.place_img3 = place_img3;
		this.place_overview = place_overview;
		this.otherinformation = otherinformation;
		this.place_rating_avg = place_rating_avg;
		this.place_date = place_date;
	}

	@Override
	public String toString() {
		return "PlaceVO [place_no=" + place_no + ", place_name=" + place_name + ", place_type=" + place_type
				+ ", place_theme_1=" + place_theme_1 + ", place_theme_2=" + place_theme_2 + ", place_theme_3="
				+ place_theme_3 + ", latitude=" + latitude + ", longitude=" + longitude + ", place_addr_1="
				+ place_addr_1 + ", place_addr_2=" + place_addr_2 + ", place_addr_3=" + place_addr_3 + ", place_img1="
				+ place_img1 + ", place_img2=" + place_img2 + ", place_img3=" + place_img3 + ", place_overview="
				+ place_overview + ", otherinformation=" + otherinformation + ", place_rating_avg=" + place_rating_avg
				+ ", place_date=" + place_date + "]";
	}

	public String getPlace_no() {
		return place_no;
	}

	public void setPlace_no(String place_no) {
		this.place_no = place_no;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_type() {
		return place_type;
	}

	public void setPlace_type(String place_type) {
		this.place_type = place_type;
	}

	public String getPlace_theme_1() {
		return place_theme_1;
	}

	public void setPlace_theme_1(String place_theme_1) {
		this.place_theme_1 = place_theme_1;
	}

	public String getPlace_theme_2() {
		return place_theme_2;
	}

	public void setPlace_theme_2(String place_theme_2) {
		this.place_theme_2 = place_theme_2;
	}

	public String getPlace_theme_3() {
		return place_theme_3;
	}

	public void setPlace_theme_3(String place_theme_3) {
		this.place_theme_3 = place_theme_3;
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

	public String getPlace_addr_1() {
		return place_addr_1;
	}

	public void setPlace_addr_1(String place_addr_1) {
		this.place_addr_1 = place_addr_1;
	}

	public String getPlace_addr_2() {
		return place_addr_2;
	}

	public void setPlace_addr_2(String place_addr_2) {
		this.place_addr_2 = place_addr_2;
	}

	public String getPlace_addr_3() {
		return place_addr_3;
	}

	public void setPlace_addr_3(String place_addr_3) {
		this.place_addr_3 = place_addr_3;
	}

	public String getPlace_img1() {
		return place_img1;
	}

	public void setPlace_img1(String place_img1) {
		this.place_img1 = place_img1;
	}

	public String getPlace_img2() {
		return place_img2;
	}

	public void setPlace_img2(String place_img2) {
		this.place_img2 = place_img2;
	}

	public String getPlace_img3() {
		return place_img3;
	}

	public void setPlace_img3(String place_img3) {
		this.place_img3 = place_img3;
	}

	public String getPlace_overview() {
		return place_overview;
	}

	public void setPlace_overview(String place_overview) {
		this.place_overview = place_overview;
	}

	public String getOtherinformation() {
		return otherinformation;
	}

	public void setOtherinformation(String otherinformation) {
		this.otherinformation = otherinformation;
	}

	public String getPlace_rating_avg() {
		return place_rating_avg;
	}

	public void setPlace_rating_avg(String place_rating_avg) {
		this.place_rating_avg = place_rating_avg;
	}

	public String getPlace_date() {
		return place_date;
	}

	public void setPlace_date(String place_date) {
		this.place_date = place_date;
	}

}