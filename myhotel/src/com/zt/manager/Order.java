package com.zt.manager;

public class Order {
	private int or_id;
	private int cl_id;
	private int r_id;
	private String or_start_time;
	private String or_days;
	private String or_state;

	public int getOr_id() {
		return or_id;
	}

	public void setOr_id(int or_id) {
		this.or_id = or_id;
	}

	public int getCl_id() {
		return cl_id;
	}

	public void setCl_id(int cl_id) {
		this.cl_id = cl_id;
	}

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public String getOr_start_time() {
		return or_start_time;
	}

	public void setOr_start_time(String or_start_time) {
		this.or_start_time = or_start_time;
	}

	public String getOr_days() {
		return or_days;
	}

	public void setOr_days(String or_days) {
		this.or_days = or_days;
	}

	public String getOr_state() {
		return or_state;
	}

	public void setOr_state(String or_state) {
		this.or_state = or_state;
	}

}
