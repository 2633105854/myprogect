package com.lsq.mode;

import java.io.Serializable;

public class MyOrder implements Serializable{
	
	private int or_id;
	private int cl_id;
	private int r_id;
	private String start_time;
	private String days;
	private String state;
	
	
	
	
	
	public MyOrder(int or_id, int cl_id, int r_id, String start_time,
			String days, String state) {
		super();
		this.or_id = or_id;
		this.cl_id = cl_id;
		this.r_id = r_id;
		this.start_time = start_time;
		this.days = days;
		this.state = state;
	}
	public MyOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.getCl_id()+""+this.getOr_id()+this.getState();
	}
    
}
