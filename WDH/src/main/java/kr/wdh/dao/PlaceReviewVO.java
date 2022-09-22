package kr.wdh.dao;

public class PlaceReviewVO {
	private String pv_id;
	private String place_id;
	private String pv_review;
	private String pv_rating;
	private String pv_date;
	private String mem_id;

	@Override
	public String toString() {
		return "PlaceReviewVO [pv_id=" + pv_id + ", place_id=" + place_id + ", pv_review=" + pv_review + ", pv_rating="
				+ pv_rating + ", pv_date=" + pv_date + ", mem_id=" + mem_id + "]";
	}

	public String getPv_id() {
		return pv_id;
	}

	public void setPv_id(String pv_id) {
		this.pv_id = pv_id;
	}

	public String getPlace_id() {
		return place_id;
	}

	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}

	public String getPv_review() {
		return pv_review;
	}

	public void setPv_review(String pv_review) {
		this.pv_review = pv_review;
	}

	public String getPv_rating() {
		return pv_rating;
	}

	public void setPv_rating(String pv_rating) {
		this.pv_rating = pv_rating;
	}

	public String getPv_date() {
		return pv_date;
	}

	public void setPv_date(String pv_date) {
		this.pv_date = pv_date;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public PlaceReviewVO(String pv_id, String place_id, String pv_review, String pv_rating, String pv_date,
			String mem_id) {
		this.pv_id = pv_id;
		this.place_id = place_id;
		this.pv_review = pv_review;
		this.pv_rating = pv_rating;
		this.pv_date = pv_date;
		this.mem_id = mem_id;

	}
}
