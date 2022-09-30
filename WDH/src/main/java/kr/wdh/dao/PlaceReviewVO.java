package kr.wdh.dao;

public class PlaceReviewVO {
	public PlaceReviewVO(String place_review_no, String place_no, String mem_no, String mem_id,
			String place_review_title, String place_review_content, String place_rating, String place_review_date) {
		super();
		this.place_review_no = place_review_no;
		this.place_no = place_no;
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.place_review_title = place_review_title;
		this.place_review_content = place_review_content;
		this.place_rating = place_rating;
		this.place_review_date = place_review_date;
	}

	private String place_review_no;
	private String place_no;
	private String mem_no;
	private String mem_id;
	private String place_review_title;
	private String place_review_content;
	private String place_rating;
	private String place_review_date;

	public PlaceReviewVO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "PlaceReviewVO [place_review_no=" + place_review_no + ", place_no=" + place_no + ", mem_no=" + mem_no
				+ ", mem_id=" + mem_id + ", place_review_title=" + place_review_title + ", place_review_content="
				+ place_review_content + ", place_rating=" + place_rating + ", place_review_date=" + place_review_date
				+ "]";
	}

	public String getPlace_review_no() {
		return place_review_no;
	}

	public void setPlace_review_no(String place_review_no) {
		this.place_review_no = place_review_no;
	}

	public String getPlace_no() {
		return place_no;
	}

	public void setPlace_no(String place_no) {
		this.place_no = place_no;
	}

	public String getMem_no() {
		return mem_no;
	}

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getPlace_review_title() {
		return place_review_title;
	}

	public void setPlace_review_title(String place_review_title) {
		this.place_review_title = place_review_title;
	}

	public String getPlace_review_content() {
		return place_review_content;
	}

	public void setPlace_review_content(String place_review_content) {
		this.place_review_content = place_review_content;
	}

	public String getPlace_rating() {
		return place_rating;
	}

	public void setPlace_rating(String place_rating) {
		this.place_rating = place_rating;
	}

	public String getPlace_review_date() {
		return place_review_date;
	}

	public void setPlace_review_date(String place_review_date) {
		this.place_review_date = place_review_date;
	}
	
	
}