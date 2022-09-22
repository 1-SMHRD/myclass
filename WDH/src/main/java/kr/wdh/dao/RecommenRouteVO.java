package kr.wdh.dao;

public class RecommenRouteVO {
	private String route_id;
	private String route_name;
	private String route_desc;
	private String route_date;
	private String mem_id;
	
	
	
	
	
	/**
	 * @param route_id
	 * @param route_name
	 * @param route_desc
	 * @param route_date
	 * @param mem_id
	 */
	public RecommenRouteVO(String route_id, String route_name, String route_desc, String route_date, String mem_id) {
		this.route_id = route_id;
		this.route_name = route_name;
		this.route_desc = route_desc;
		this.route_date = route_date;
		this.mem_id = mem_id;
	}
	public String getRoute_id() {
		return route_id;
	}
	public void setRoute_id(String route_id) {
		this.route_id = route_id;
	}
	public String getRoute_name() {
		return route_name;
	}
	public void setRoute_name(String route_name) {
		this.route_name = route_name;
	}
	public String getRoute_desc() {
		return route_desc;
	}
	public void setRoute_desc(String route_desc) {
		this.route_desc = route_desc;
	}
	public String getRoute_date() {
		return route_date;
	}
	public void setRoute_date(String route_date) {
		this.route_date = route_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "RecommenRouteVO [route_id=" + route_id + ", route_name=" + route_name + ", route_desc=" + route_desc
				+ ", route_date=" + route_date + ", mem_id=" + mem_id + "]";
	}
	
}

