package kr.wdh.dao;

public class ReservationStayVO {
	private String reserv_id;
	private String stay_id;
	private String reserv_s_date;
	private String reserv_e_date;
	private String total_amount;
	private String pay_amount;
	private String pay_date;
	private String mem_id;
	/**
	 * @param reserv_id
	 * @param stay_id
	 * @param reserv_s_date
	 * @param reserv_e_date
	 * @param total_amount
	 * @param pay_amount
	 * @param pay_date
	 * @param mem_id
	 */
	public ReservationStayVO(String reserv_id, String stay_id, String reserv_s_date, String reserv_e_date,
			String total_amount, String pay_amount, String pay_date, String mem_id) {
		this.reserv_id = reserv_id;
		this.stay_id = stay_id;
		this.reserv_s_date = reserv_s_date;
		this.reserv_e_date = reserv_e_date;
		this.total_amount = total_amount;
		this.pay_amount = pay_amount;
		this.pay_date = pay_date;
		this.mem_id = mem_id;
	}
	public String getReserv_id() {
		return reserv_id;
	}
	public void setReserv_id(String reserv_id) {
		this.reserv_id = reserv_id;
	}
	public String getStay_id() {
		return stay_id;
	}
	public void setStay_id(String stay_id) {
		this.stay_id = stay_id;
	}
	public String getReserv_s_date() {
		return reserv_s_date;
	}
	public void setReserv_s_date(String reserv_s_date) {
		this.reserv_s_date = reserv_s_date;
	}
	public String getReserv_e_date() {
		return reserv_e_date;
	}
	public void setReserv_e_date(String reserv_e_date) {
		this.reserv_e_date = reserv_e_date;
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
		return "ReservationStay [reserv_id=" + reserv_id + ", stay_id=" + stay_id + ", reserv_s_date=" + reserv_s_date
				+ ", reserv_e_date=" + reserv_e_date + ", total_amount=" + total_amount + ", pay_amount=" + pay_amount
				+ ", pay_date=" + pay_date + ", mem_id=" + mem_id + "]";
	}

	
	
}
