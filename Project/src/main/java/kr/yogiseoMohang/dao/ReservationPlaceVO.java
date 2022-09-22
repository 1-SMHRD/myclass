package kr.yogiseoMohang.dao;

public class ReservationPlaceVO {
	private String rp_id;
	private String place_id;
	private String adult_tickets;
	private String kid_tickets;
	private String total_amount;
	private String pay_amount;
	private String pay_date;
	private String mem_id;
	/**
	 * @param rp_id
	 * @param place_id
	 * @param adult_tickets
	 * @param kid_tickets
	 * @param total_amount
	 * @param pay_amount
	 * @param pay_date
	 * @param mem_id
	 */
	public ReservationPlaceVO(String rp_id, String place_id, String adult_tickets, String kid_tickets,
			String total_amount, String pay_amount, String pay_date, String mem_id) {
		this.rp_id = rp_id;
		this.place_id = place_id;
		this.adult_tickets = adult_tickets;
		this.kid_tickets = kid_tickets;
		this.total_amount = total_amount;
		this.pay_amount = pay_amount;
		this.pay_date = pay_date;
		this.mem_id = mem_id;
	}
	public String getRp_id() {
		return rp_id;
	}
	public void setRp_id(String rp_id) {
		this.rp_id = rp_id;
	}
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public String getAdult_tickets() {
		return adult_tickets;
	}
	public void setAdult_tickets(String adult_tickets) {
		this.adult_tickets = adult_tickets;
	}
	public String getKid_tickets() {
		return kid_tickets;
	}
	public void setKid_tickets(String kid_tickets) {
		this.kid_tickets = kid_tickets;
	}
	public String getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(String total_amount) {
		this.total_amount = total_amount;
	}
	public String getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(String pay_amount) {
		this.pay_amount = pay_amount;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "ReservationPlaceVO [rp_id=" + rp_id + ", place_id=" + place_id + ", adult_tickets=" + adult_tickets
				+ ", kid_tickets=" + kid_tickets + ", total_amount=" + total_amount + ", pay_amount=" + pay_amount
				+ ", pay_date=" + pay_date + ", mem_id=" + mem_id + "]";
	}

	
}
