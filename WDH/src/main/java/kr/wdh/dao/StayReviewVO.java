package kr.wdh.dao;

public class StayReviewVO {
	  private String sv_id;
	  private String stay_id;
	  private String sv_review;
	  private String sv_rating;
	  private String sv_date;
	  private String mem_id;
	/**
	 * @param sv_id
	 * @param stay_id
	 * @param sv_review
	 * @param sv_rating
	 * @param sv_date
	 * @param mem_id
	 */
	public StayReviewVO(String sv_id, String stay_id, String sv_review, String sv_rating, String sv_date,
			String mem_id) {
		this.sv_id = sv_id;
		this.stay_id = stay_id;
		this.sv_review = sv_review;
		this.sv_rating = sv_rating;
		this.sv_date = sv_date;
		this.mem_id = mem_id;
	}
	public String getSv_id() {
		return sv_id;
	}
	public void setSv_id(String sv_id) {
		this.sv_id = sv_id;
	}
	public String getStay_id() {
		return stay_id;
	}
	public void setStay_id(String stay_id) {
		this.stay_id = stay_id;
	}
	public String getSv_review() {
		return sv_review;
	}
	public void setSv_review(String sv_review) {
		this.sv_review = sv_review;
	}
	public String getSv_rating() {
		return sv_rating;
	}
	public void setSv_rating(String sv_rating) {
		this.sv_rating = sv_rating;
	}
	public String getSv_date() {
		return sv_date;
	}
	public void setSv_date(String sv_date) {
		this.sv_date = sv_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "StayReviewVO [sv_id=" + sv_id + ", stay_id=" + stay_id + ", sv_review=" + sv_review + ", sv_rating="
				+ sv_rating + ", sv_date=" + sv_date + ", mem_id=" + mem_id + "]";
	}

	
	  
}
